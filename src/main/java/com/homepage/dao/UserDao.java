package com.homepage.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.homepage.vo.UserVO;

public class UserDao {
	
	//jspuser 테이블 데이터 전체 조회 쿼리 
	//select query id : selectUserAll
	
	
	public List<UserVO> selectUserAll(){
		
		SqlSessionFactory factory = SQLFactoryBuilder.getSqlSessionFactory();
		
		SqlSession session = factory.openSession();
		
		
		//selectOne: 데이터가 한건일때
		//selectList: 여러건의 데이터를 조회 
		//메서드 인자: 문자열 = 네임스페이스(모듈명).쿼리아이디
		return session.selectList("userSQL.selectUserAll");
	}
	
	public UserVO selectUser(String userId){
		
		SqlSessionFactory factory = SQLFactoryBuilder.getSqlSessionFactory();
		
		SqlSession session = factory.openSession();
		
		//selectOne: 데이터가 한건일때
		//selectList: 여러건의 데이터를 조회 
		//메서드 인자: 문자열 = 네임스페이스(모듈명).쿼리아이디
		
		return session.selectOne("userSQL.selectUser", userId);
	}
	
	public UserVO selectUserByUserVO(UserVO user){
		
		SqlSessionFactory factory = SQLFactoryBuilder.getSqlSessionFactory();
		
		SqlSession session = factory.openSession();
		
		//selectOne: 데이터가 한건일때
		//selectList: 여러건의 데이터를 조회 
		//메서드 인자: 문자열 = 네임스페이스(모듈명).쿼리아이디
		
		return session.selectOne("userSQL.selectUserByUserVO", user);
	}
}
