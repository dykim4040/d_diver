package com.exam.service;

import com.exam.domain.MemberVO;

public interface MemberService {
	
	public int join(MemberVO memberVO);

	public int loginCheck(String id, String password);
	
	public boolean isIdDupChecked(String id);
	
	public MemberVO getMember(String id);

	public boolean checkPw(String id, String password);
	
	public void deleteMember(String id);
	

}
