package com.indiya.musician.service;

import java.util.List;

import com.indiya.musician.dao.JamDaoImpl;
import com.indiya.musician.model.JamApplyDto;
import com.indiya.musician.model.JamDto;

public class JamServiceImpl implements JamService {
	private static JamService jamService;

	static {
		jamService = new JamServiceImpl();
	}

	private JamServiceImpl() {}
	
	
	public static JamService getJamService() {
		return jamService;
	}


	@Override
	public int jamRegister(JamDto jam) {

		return JamDaoImpl.getJamDao().jamRegister(jam);
	}

	@Override
	public List<JamDto> selectAllJam() {
		return JamDaoImpl.getJamDao().selectAllJam();
	}

	@Override
	public List<JamDto> selectAllJamById(String jamId) {
		List<JamDto> jamList = JamDaoImpl.getJamDao().selectAllJamById(jamId);
		for (JamDto jam : jamList) {
			if(jam.getSubject().length() > 20)
				jam.setSubject(jam.getSubject().substring(1, 20) + " ...");
			else
				jam.setSubject(jam.getSubject());
			
			jam.setWrite_date(jam.getWrite_date().substring(0, 10));
		}
		return jamList;
	}

	@Override
	public JamDto selectByNo(int no) {
		JamDto jam = JamDaoImpl.getJamDao().selectByNo(no);
		jam.setContents(jam.getContents().replaceAll("\n", "<br/>"));
		return jam;
	}

	@Override
	public int jamApplyRegister(JamApplyDto jamApply) {
		return JamDaoImpl.getJamDao().jamApplyRegister(jamApply);
	}

	@Override
	public int jamUpdateByStatus(int no) {
		return JamDaoImpl.getJamDao().jamUpdateByStatus(no);
	}

}
