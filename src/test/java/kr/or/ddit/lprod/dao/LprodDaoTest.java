package kr.or.ddit.lprod.dao;

import static org.junit.Assert.*;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.junit.Before;
import org.junit.Test;

import kr.or.ddit.common.model.Page;
import kr.or.ddit.lprod.model.Lprod;
import kr.or.ddit.util.MybatisUtil;

public class LprodDaoTest {

	private ILprodDao lprodDao;
	private SqlSession sqlSession;
	
	@Before
	public void setup() {
		lprodDao = new LprodDao();	
		sqlSession = MybatisUtil.getSession();
	}
	
	/**
	* Method : getLpordListTest
	* 작성자 : SEM-PC
	* 변경이력 :
	* Method 설명 : 제품 그룹 리스트 조회 테스트
	*/
	@Test
	public void getLpordListTest() {
		/***Given***/
	
		/***When***/
		List<Lprod> lprodList = lprodDao.getLprodList(sqlSession);

		/***Then***/
		assertEquals(10, lprodList.size());
	}
	
	/**
	* Method : getLprodPagingListTest
	* 작성자 : SEM-PC
	* 변경이력 :
	* Method 설명 : 제품 그룹 페이징 리스트 조회 테스트
	*/
	@Test
	public void getLprodPagingListTest() {
		/***Given***/
		Page page = new Page(1, 5);

		/***When***/
		List<Lprod> lprodList = lprodDao.getLprodPagingList(sqlSession, page);

		/***Then***/
		assertEquals(5, lprodList.size());
	}
	
	/**
	* Method : getLprodTotalCnt
	* 작성자 : SEM-PC
	* 변경이력 :
	* Method 설명 : 제품그룹 리스트 전체 건수 조회
	*/
	@Test
	public void getLprodTotalCnt() {
		/***Given***/
		
		/***When***/
		int totalCnt = lprodDao.getLprodTotalCnt(sqlSession);

		/***Then***/
		assertEquals(10, totalCnt);
	}

}
