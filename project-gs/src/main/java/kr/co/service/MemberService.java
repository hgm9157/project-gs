package kr.co.service;

import java.util.List;

import kr.co.vo.MemberVO;

public interface MemberService {

	//회원조회
	public List<MemberVO> list() throws Exception;
	
	//회원 저장
	public void insertMember(MemberVO memberVO) throws Exception;
	
	//회원 수정
	public void updateMember(MemberVO memberVO) throws Exception;
	
}
                                               