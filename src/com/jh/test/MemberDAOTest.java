package com.jh.test;

import static org.junit.Assert.*;

import java.sql.Connection;

import org.junit.Test;

import com.jh.member.MemberDAO;
import com.jh.member.MemberDTO;
import com.jh.util.DBConnector;

public class MemberDAOTest {
	
	
	@Test
	public void updateTest()throws Exception{
		MemberDAO memberDAO = new MemberDAO();
		MemberDTO memberDTO = new MemberDTO();
		memberDTO.setId("ee");
		memberDTO.setPw("eee");
		memberDTO.setName("cca");
		memberDTO.setEmail("asd@alsdkfc.com");
		memberDTO.setPhone("01011111");
		Connection con = DBConnector.getConnection();
		int result = memberDAO.memberUpdate(con, memberDTO);
		con.clearWarnings();
		assertEquals(1, result);
	}
	
	
	//@Test
	public void test1() throws Exception{
		MemberDAO memberDAO = new MemberDAO();
		Connection con = DBConnector.getConnection();
		MemberDTO memberDTO = new MemberDTO();
		memberDTO.setId("aa");
		memberDTO.setPw("aa"); /* 경우의 수 다 넣어보기 */
		
		memberDTO = memberDAO.memberLogin(con, memberDTO);
		
		assertNotNull(memberDTO);
	}
	
	

	//@Test
	public void test() throws Exception{
		MemberDAO memberDAO = new MemberDAO();
		Connection con = DBConnector.getConnection();
		MemberDTO memberDTO = new MemberDTO();
		memberDTO.setId("id");
		memberDTO.setPw("pw");
		memberDTO.setName("name");
		memberDTO.setEmail("email");
		memberDTO.setPhone("phone");
		int result = memberDAO.memberJoin(con, memberDTO);
		assertEquals(1, result);
	}

}
