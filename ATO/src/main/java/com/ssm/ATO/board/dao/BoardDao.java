package com.ssm.ATO.board.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.ssm.ATO.board.model.Board;

@Repository
public class BoardDao {
	private JdbcTemplate jdbcTemplate;
	
	@Autowired
	public BoardDao(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}
	
	public int add(Board board) {
		return jdbcTemplate.update(
				"INSERT INTO board (title, content, writer) VALUE (?, ?, ?);"
				, board.getTitle(), board.getContent(), board.getWriter());
	}
	
	private class BoardMapper implements RowMapper<Board> {
		@Override
		public Board mapRow(ResultSet rs, int rowNum) throws SQLException {
			int id = rs.getInt("id");
			String title = rs.getString("title");
			String content = rs.getString("content");
			String writer = rs.getString("writer");
			Date regDate = rs.getDate("regDate");
			int viewCnt = rs.getInt("viewCnt");
			return new Board(id, title, content, writer, regDate, viewCnt);
		}
	}
	
	public List<Board> getList() {
		return jdbcTemplate.query("SELECT * FROM board;", new BoardMapper());
	}
	
	public Board getById(int id) {
		return jdbcTemplate.queryForObject("SELECT * FROM board WHERE id = ?;"
				, new Object[] {id}
				, new BoardMapper());
	}
	
	public int update(Board board) {
		return jdbcTemplate.update("UPDATE board SET title = ?, writer = ?, content = ? WHERE id = ?;"
				, board.getTitle()
				, board.getWriter()
				, board.getContent()
				, board.getId());
	}
	
	public int delete(int id) {
		return jdbcTemplate.update("DELETE FROM board WHERE id = ?;"
				, id);
	}
	
	public int totalCnt() {
		return jdbcTemplate.queryForObject("SELECT count(*) FROM board;", Integer.class);
	}
	
	public List<Board> getListPage(int displayPost, int postNum) {
		return jdbcTemplate.query("SELECT * FROM board ORDER BY id DESC LIMIT ?, ?"
				, new Object[] { displayPost, postNum }
				, new BoardMapper());
	}
	
	public int updateCnt(int id) {
		return jdbcTemplate.update("UPDATE board SET viewCnt = viewCnt + 1 WHERE id = ?;"
				, id);
	}
}
