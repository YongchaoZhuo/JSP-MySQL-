package com.shop.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shop.service.UserService;

public class ActiveServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		UserService service = new UserService();
		request.getSession().removeAttribute("error");//鍒犻櫎session锛岀敤鎴峰湪鏈縺娲荤櫥褰曟椂鐣欎笅鐨剆ession
		String code = request.getParameter("code");//鑾峰彇婵�娲荤爜
		
		
		response.setContentType("text/html;charset=utf-8"); 
		request.getSession().setAttribute("activeMessage", "ok");
		response.sendRedirect("login.jsp"); 
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
