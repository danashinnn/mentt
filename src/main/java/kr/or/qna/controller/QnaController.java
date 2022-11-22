package kr.or.qna.controller;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.multipart.MultipartFile;

import kr.or.common.FileVO;
import kr.or.member.model.vo.Member;
import kr.or.qna.model.service.QnaService;
import kr.or.qna.model.vo.Qna;

@Controller
public class QnaController {

	@Autowired
	private QnaService service;
	
	@RequestMapping(value="/faqList.do")
	public String faqList() {
		return "faq/faqList";
	}
	
	@RequestMapping(value="/qnaList.do")
	public String selectQnaList(int reqPage, Model model) {
		HashMap<String, Object> map = service.selectQnaList(reqPage);
		model.addAttribute("reqPage", reqPage);
		model.addAttribute("list", map.get("list"));
		model.addAttribute("pageNavi", map.get("pageNavi"));
		return "qna/qnaList";
	}
	
	@RequestMapping(value="/qnaView.do") 
	public String selectQnaView(int reqPage, int qnaNo, Model model){
		Qna q = service.selectQnaView(qnaNo);
		model.addAttribute("reqPage", reqPage);
		model.addAttribute("q", q);
		return "qna/qnaView";
	}
	
	@RequestMapping(value="/qnaWriteFrm.do")
	public String qnaWriteFrm() {
		return "qna/qnaWriteFrm";
	}
	
	@RequestMapping(value="/writeQna.do")
	public String insertQna(Qna q, MultipartFile[] qnaFile, @SessionAttribute Member m, HttpServletRequest request) {
		// 파일 목록을 저장할 리스트 생성
		ArrayList<FileVO> fileList = new ArrayList<FileVO>();
		
		// MultipartFile[]은 첨부한 파일 개수만큼 길이가 생성됨
		// 그러나 파일을 1개도 첨부하지 않아도 배열 길이가 1임
		// 첨부파일이 없는 경우 길이는 1이지만 배열 첫번째 인덱스의 value가 비어있음
		if(qnaFile[0].isEmpty()) {
			// 첨부파일이 없는 경우 수행할 로직 없음
		} else {
			// 첨부파일이 있는 경우 파일 업로드 수행
			// 1. 파일 업로드 경로 설정 (getRealPath()까지가 webapp폴더)
			String savePath = request.getSession().getServletContext().getRealPath("/resources/upload/qna/");
			// 2. 반복문을 이용한 파일 업로드
			for(MultipartFile file : qnaFile) {
				// 파일명이 기존 업로드한 파일명과 중복되는 경우 덮어쓰기 되어버기 때문에 파일명 중복 처리 필요
				// 사용자가 업로드한 파일 이름 추출
				// filename = test.txt 라는 값을 추출
				String filename = file.getOriginalFilename();
				// onlyFilename = test 라는 값을 추출
				String onlyFilename = filename.substring(0, filename.lastIndexOf("."));
				// extension = .txt 라는 값을 추출
				String extension = filename.substring(filename.lastIndexOf("."));
				
				// 실제 서버에 업로드할 파일명
				String filepath = null;
				// 파일명이 중복될 경우 붙일 숫자
				int count = 0;
				
				while(true) {
					if(count == 0) {
						filepath = onlyFilename;
					} else {
						filepath = onlyFilename + "_" + count;
					}
					File checkFile = new File(savePath + filepath + extension);
					if(!checkFile.exists()) { // 파일이 존재하지 않는 경우 (=파일명이 중복되지 않는 경우)
						break; // 무한반복문 나감
					}
					count++;
				} // 파일명 중복체크하는 무한반복문 끝
				
				// 중복 처리가 끝난 파일명으로 파일 업로드 진행
				try {
					FileOutputStream fos = new FileOutputStream(new File(savePath + filepath + extension));
					// 속도 개선을 위해 보조스트림 사용
					BufferedOutputStream bos = new BufferedOutputStream(fos);
					byte[] bytes = file.getBytes();
					bos.write(bytes);
					bos.close();
				} catch (FileNotFoundException e) {
					e.printStackTrace();
				} catch (IOException e) {
					e.printStackTrace();
				}
				// 파일 1개 업로드 끝
				FileVO fileVO = new FileVO();
				fileVO.setFilename(filename);
				fileVO.setFilepath(filepath);
				fileVO.setFileExt(extension);
				fileList.add(fileVO);
			} // 파일 업로드 반복문 끝
		} // else 영역 끝
		q.setQnaWriter(m.getMId());
		System.out.println(q);
		// DB에 insert
		int result = service.insertQna(q, fileList);
		return "redirect:/qnaList.do?reqPage=1";
	}
	
	@RequestMapping(value="/fileDown.do")
	public void fileDown(int fileNo, HttpServletRequest request, HttpServletResponse response) {
		FileVO file = service.selectOneFile(fileNo);
		String path = request.getSession().getServletContext().getRealPath("/resources/upload/qna/") + file.getFilepath() + file.getFileExt();
		
		try {
			// 파일을 읽어오기 위한 스트림 생성
			FileInputStream fis = new FileInputStream(path);
			BufferedInputStream bis = new BufferedInputStream(fis);
			// 읽어온 파일을 사용자에게 내보내기 위한 스트림 생성
			ServletOutputStream sos = response.getOutputStream();
			BufferedOutputStream bos = new BufferedOutputStream(sos);
			// 파일명 처리 (다운로드 할 때는 유저가 올린 파일명 그대로 받을 수 있게)
			String downFileName = new String((file.getFilename()+file.getFileExt()).getBytes("utf-8"),"ISO-8859-1");
			// 파일 다운로드를 위한 http 헤더 설정
			response.setContentType("application/octet-stream");
			response.setHeader("Content-Disposition", "attachment;filename="+downFileName);
			// 파일 전송
			while(true) {
				int read = bis.read(); // 읽어오기
				if(read != -1) { // 데이터가 없으면(읽어올 게 없으면) -1 리턴
					bos.write(read); // 내보내기
				} else {
					break;
				}
			}
			// 자원 반환
			bis.close();
			bos.close();
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}
