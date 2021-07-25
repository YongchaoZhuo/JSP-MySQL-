package com.shop.service;

import java.sql.SQLException;

import javax.mail.MessagingException;
import javax.mail.internet.AddressException;
import javax.servlet.http.HttpServletRequest;

import com.shop.dao.UserDao;
import com.shop.pojo.User;

public class UserService {
	UserDao userDao = new UserDao();

	public User login(String username, String password) {
		try {
			return userDao.login(username, password);
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
	}

	/**
	 * @param user
	 * @return
	 * @throws SQLException 
	 */
	public boolean register(User user,HttpServletRequest request){
		boolean success = false;
		try {
			success = userDao.register(user);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
			return success;
	}
	
	/**
	 * 激活用户
	 * @param code
	 */
	
}
