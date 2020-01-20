package com.dota.model;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

@Component
public class JDBCUserDAO implements UserDAO {

	private JdbcTemplate jdbcTemplate;
	
	@Autowired
	public JDBCUserDAO(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}
	
	@Override
	public User getName() {
		String sql = "SELECT * FROM app_user";
		
		SqlRowSet results = jdbcTemplate.queryForRowSet(sql);
		User user = new User();
		user.setFirstName(results.getString(0));
		user.setLastName(results.getString(1));
		
		return user;
	}
	
}
