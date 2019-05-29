package com.exam.mapper;

import java.util.List;

import com.exam.domain.MemberVO;

public interface MemberMapper {
	public int insert(MemberVO member);
	
	public MemberVO getMemberById(String id);
	
	public int countById(String id);
	
	public List<MemberVO> getList();
	
	
}
