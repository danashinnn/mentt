package kr.or.mento.controller;

import java.io.BufferedOutputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import common.FileRename;
import kr.or.mento.model.service.MentoService;
import kr.or.mento.model.vo.Mento;
import kr.or.mento.model.vo.MentoLiseceFile;

@Controller
public class MentoController {
	@Autowired
	private MentoService service;
	
	@Autowired
	private FileRename fileRename;
	
	@RequestMapping(value="/insertMentoFrm.do")
	public String insertMentoFrm() {
		return "mento/mentoRegisterFrm";
	}
	
	@ResponseBody
	@RequestMapping(value="/insertMento.do", produces = "application/json;charset=utf-8")
	public String insertMento(Mento mento, MultipartFile[] exFile, HttpServletRequest request) {
		ArrayList<MentoLiseceFile> list = new ArrayList<MentoLiseceFile>();
		
		if(!exFile[0].isEmpty()) {
			String savePath = request.getSession().getServletContext().getRealPath("/resources/upload/mento/");
			
			for(MultipartFile files : exFile) {
				String filename = files.getOriginalFilename();
				String filepath = fileRename.fileRename(savePath, filename);
				String extention = filename.substring(filename.lastIndexOf("."));// .txt
				
				try {
					FileOutputStream fos = new FileOutputStream(savePath + filepath);
					BufferedOutputStream bos = new BufferedOutputStream(fos);
					byte[] bytes = files.getBytes();
					
					bos.write(bytes);
					bos.close();
					
					MentoLiseceFile mlf = new MentoLiseceFile();
					mlf.setFilename(filename);
					mlf.setFilepath(filepath);
					mlf.setFileExt(extention);
					list.add(mlf);
					
				} catch (FileNotFoundException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
		
		mento.setMentoList(list);
		int result = service.insertMento(mento);
		
		if(result > 0) {
			return "1";
		}else {
			return "0";
		}
	}
}





















