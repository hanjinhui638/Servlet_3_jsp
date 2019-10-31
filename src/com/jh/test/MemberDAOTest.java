package com.jh.test;

import static org.junit.Assert.*;

import java.sql.Connection;

import org.junit.Test;

import com.jh.member.MemberDAO;
import com.jh.member.MemberDTO;
import com.jh.util.DBConnector;

public class MemberDAOTest {

	@Test
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
