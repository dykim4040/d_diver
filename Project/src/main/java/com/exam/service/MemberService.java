package com.exam.service;

import com.exam.domain.MemberVO;

public interface MemberService {
	
	public int join(MemberVO memberVO);

	public int loginCheck(String id, String password);
	
	public boolean isIdDupChecked(String id);
	
	public MemberVO getMember(String id);

	public void upDateMember(MemberVO member);
	
	public boolean checkPw(String id, String password);
	
	public void deleteMember(String id);
	
	public void hintID(String id);
	
	public int countById(String id);
	
	
	
	
	
	/* 구매 관련 */
	
	public String getCurrPackage(String id);
	
	public int updateCash(int cash, String id);
	
	public int buyPackageUseCash(int price, String id);
}
