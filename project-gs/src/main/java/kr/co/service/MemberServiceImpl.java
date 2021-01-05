package kr.co.service;

import java.util.List;

import javax.inject.Inject;

import kr.co.dao.MemberDAO;
import kr.co.vo.MemberVO;

public class MemberServiceImpl implements MemberService{

	@Inject
	private MemberDAO dao;
	
	@Override
	public List<MemberVO> list() throws Exception {
		return dao.list();
	}

	@Override
	public void insertMember(MemberVO memberVO) throws Exception {
		dao.insertMember(memberVO);
		
	}

	@Override
	public void updateMember(MemberVO memberVO) throws Exception {
		dao.updateMember(memberVO);
	}

}
