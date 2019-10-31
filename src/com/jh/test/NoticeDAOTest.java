package com.jh.test;

import static org.junit.Assert.*;

import java.sql.Connection;

import org.junit.Test;

import com.jh.notice.NoticeDAO;
import com.jh.notice.NoticeDTO;
import com.jh.util.DBConnector;

public class NoticeDAOTest {

	@Test
	public void test() throws Exception{
		NoticeDAO noticeDAO = new NoticeDAO();
		Connection con = DBConnector.getConnection();
		NoticeDTO noticeDTO = new NoticeDTO();
		noticeDTO.setWriter("writer");
		noticeDTO.setTitle("title");
		noticeDTO.setContents("contents");
		int result = noticeDAO.noticeWrite(con, noticeDTO);
		assertEquals(1, result);
		
		/* spl 에러 test */
		/* junit */
	}

}
