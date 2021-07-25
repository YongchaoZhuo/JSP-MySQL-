package com.shop.controller;

import java.io.IOException;
import java.util.Date;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shop.pojo.User;
import com.shop.service.UserService;
import com.shop.utils.DateStrUtils;

public class RegisterServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		UserService service = new UserService();
		request.setCharacterEncoding("utf-8");
			

		
		String username = request.getParameter("username");
		String name = request.getParameter("name");
		String password = request.getParameter("password");
		
		String sex = request.getParameter("sex");
		String telephone = request.getParameter("telephone");
		String email = request.getParameter("email");
		int manage = 0;
		
		User user = new User();//封装user对象
		user.setUsername(username);
		user.setName(name); 
		user.setPassword(password);
		user.setSex(sex);
		user.setTelephone(telephone);
		user.setEmail(email);
		user.setManage(manage);
		user.setUid(UUID.randomUUID().toString());
		user.setManage(manage);
		boolean success = service.register(user,request);
		if(success){
			response.setContentType("text/html;charset=utf-8"); 
			request.getSession().setAttribute("registerMessage", "注册成功!");//注册成功信息，回显邮箱，通知用户去邮箱激活
			response.sendRedirect("login.jsp"); 
		}else{
			response.getWriter().println("<script>alert('w');window.location.href='login.jsp'</script>");
		}
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
