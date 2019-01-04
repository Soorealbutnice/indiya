package com.indiya.musician.service;

import java.util.List;

import com.indiya.musician.model.JamApplyDto;
import com.indiya.musician.model.JamDto;

public interface JamService {
	int jamRegister(JamDto jam);
	List<JamDto> selectAllJam();
	List<JamDto> selectAllJamById(String jamId);
	JamDto selectByNo(int no);
	int jamApplyRegister(JamApplyDto jamApply);
	int jamUpdateByStatus(int no);
}
