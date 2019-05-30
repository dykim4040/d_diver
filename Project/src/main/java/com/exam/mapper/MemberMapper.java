package com.exam.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.exam.domain.MemberVO;

public interface MemberMapper {
	public int insert(MemberVO member);

	public MemberVO getMemberById(String id);

	public int countById(String id);

	public List<MemberVO> getList();

	public String checkPw(String id);

	public void deleteMember(String id);

	public String getCurrPackageById(String id);
	
	public int updateCash(@Param("cash") int cash, @Param("id") String id);
	
}
