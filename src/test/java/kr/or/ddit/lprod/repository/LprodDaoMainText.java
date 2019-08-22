package kr.or.ddit.lprod.repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import kr.or.ddit.lprod.model.LprodVO;
import kr.or.ddit.util.MybatisUtil;

public class LprodDaoMainText {

	public static void main(String[] args) {
		ILprodDao lprodDao = new LprodDao();
		
		SqlSession sqlSession = MybatisUtil.getSession();
		
		List<LprodVO> lprodList = lprodDao.getLprodList(sqlSession);
		
		sqlSession.close();
		
		if(lprodList.size() == 10) {
			System.out.println("db 조회 성공");
		}else {
			System.out.println("db 조회 실패");
		}
	}

}
