package kr.co.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.dao.MemberDAO;
import kr.co.vo.MemberVO;

@Service
public class MemberServiceImpl implements MemberService{

	@Inject
	private MemberDAO dao;
	
	@Override
	public List<MemberVO> memberList() throws Exception {
		return dao.memberList();
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
