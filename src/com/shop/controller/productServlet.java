package com.shop.controller;

import java.io.IOException;
import java.sql.Date;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shop.pojo.Product;
import com.shop.pojo.User;
import com.shop.service.ProductService;


/**
 * Servlet implementation class addproduct
 */
@WebServlet("/product")
public class productServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public productServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ProductService service = new ProductService();
		request.setCharacterEncoding("utf-8");
//			
//		String pname = request.getParameter(pname);
//		String market_price = request.getParameter(market_price);
//		String shop_price = request.getParameter(shop_price);
//		String is_hot = request.getParameter(is_hot);
//		String pdesc = request.getParameter(pdesc);
////		
//		Product pro = new Product();
//		double a = Double.parseDouble(market_price);
//		double b = Double.parseDouble(shop_price);
//		int c = Integer.parseInt(is_hot);
//		Date date = new Date(System.currentTimeMillis());
//		
//		User user = new User();//封装user对象
//		pro.setPid("51");
//		pro.setMarket_price(a);
//		pro.setShop_price(b);
//		pro.setIs_hot(c);
//		pro.setPdate(date);
//		pro.setPimage("product/c_0001.jpg");
//		pro.setPdesc(pdesc);
//		pro.setPflag(0);
//		
//		boolean success = service.add(pro,request);
//		if(success){
//			response.setContentType("text/html;charset=utf-8"); 
//			request.getSession().setAttribute("registerMessage", "注册成功!");//注册成功信息，回显邮箱，通知用户去邮箱激活
//			response.sendRedirect("login.jsp"); 
//		}else{
//			response.getWriter().println("<script>alert('w');window.location.href='login.jsp'</script>");
//		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
