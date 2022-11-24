package kr.or.mento.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.mento.model.dao.MentoDao;
import kr.or.mento.model.vo.Mento;
import kr.or.mento.model.vo.MentoLiseceFile;

@Service
public class MentoService {
	@Autowired
	private MentoDao dao;

	public int insertMento(Mento mento) {
		int result = dao.insertmento(mento);
		
		if(result > 0) {
			int selectNo = dao.selectMentoNo();
			for(MentoLiseceFile files : mento.getMentoList()) {
				files.setReqNo(selectNo);
				result += dao.insertMentoLicense(files);
			}
		}
		
		return result;
	}
}
