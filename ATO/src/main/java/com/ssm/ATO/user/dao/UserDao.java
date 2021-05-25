package com.ssm.ATO.user.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.ssm.ATO.user.model.User;

@Repository
public class UserDao {
	private JdbcTemplate jdbcTemplate;
	
	@Autowired
	public UserDao(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}
	
	public int add(User user) {
		return jdbcTemplate.update(
				"INSERT INTO user (id, password, name, birth, email, phone) VALUE (?, ?, ?, ?, ?, ?)"
				, user.getId(), user.getPassword()
				, user.getName(), user.getBirth()
				, user.getEmail(), user.getPhone());
	}
	
	private class UserMapper implements RowMapper<User> {
		@Override
		public User mapRow(ResultSet rs, int rowNum) throws SQLException {
			String id = rs.getString("id");
			String password = rs.getString("password");
			String name = rs.getString("name");
			String birth = rs.getString("birth");
			String email = rs.getString("email");
			String phone = rs.getString("phone");
			return new User(id, password, name, birth, email, phone);
		}
	}
	
	public List<User> getAll() {
		return jdbcTemplate.query("SELECT * FROM user;", new UserMapper());
	}
	
	public User getById(String id) {
		return jdbcTemplate.queryForObject(
				"SELECT * FROM user WHERE id = ?;"
				, new Object[] {id}
				, new UserMapper());
	}
	
	public int existById(String id) {
		return jdbcTemplate.queryForObject("SELECT count(*) FROM user WHERE id = ?;"
				, new Object[] {id}
				, Integer.class);
	}
	
	public int existUser(String id, String password) {
		return jdbcTemplate.queryForObject("SELECT count(*) FROM user WHERE id = ? AND password = ?;"
				, new Object[] {id, password}
				, Integer.class);
	}
	
	public User login(String id, String password) {
		return jdbcTemplate.queryForObject("SELECT * FROM user WHERE id = ? AND password = ?;"
				, new Object[] {id, password}
				, new UserMapper());
	}
	
	public int update(User user) {
		return jdbcTemplate.update("UPDATE user SET name = ?, birth = ?, email = ?, phone = ? WHERE id = ?;"
				, user.getName()
				, user.getBirth()
				, user.getEmail()
				, user.getPhone()
				, user.getId());
	}
}
