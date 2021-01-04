package kr.co.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.vo.MemberVO;

@Repository
public class MemberDAOImpl implements MemberDAO{

	@Inject
	private SqlSession sqlSession;
	
	@Override
	public List<MemberVO> list() throws Exception{
		return sqlSession.selectList("memberMapper.list");
	}

	@Override
	public void insertMember(MemberVO memberVO) throws Exception{
		sqlSession.insert("memberMapper.insert", memberVO);
		
	}

	@Override
	public void updateMember(MemberVO memberVO) throws Exception{
		sqlSession.update("memberMapper.update", memberVO);
	}

}
