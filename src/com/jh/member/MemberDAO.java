package com.jh.member;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class MemberDAO {
	
	public int memberJoin(Connection con, MemberDTO memberDTO) throws Exception{
		int result = 0;
		
		String sql = "insert into member values(?,?,?,?,?,1)";
		PreparedStatement st = con.prepareStatement(sql);
		st.setString(1, memberDTO.getId());
		st.setString(2, memberDTO.getPw());
		st.setString(3, memberDTO.getName());
		st.setString(4, memberDTO.getEmail());
		st.setString(5, memberDTO.getPhone());
	
		result = st.executeUpdate();
		
		st.close();
		
		return result;
		
		
	}

}
