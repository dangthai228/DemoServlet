package com.thaind.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.thaind.dao.ThanhvienDAO;
import com.thaind.model.Bantochuc;
import com.thaind.model.Thanhvien;

@WebServlet(name = "login",urlPatterns = {"/LoginServlet"})
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			String taikhoan = request.getParameter("username");
	        String matkhau = request.getParameter("password");
	        Thanhvien tv= new Thanhvien();
	    	tv.setTaikhoan(taikhoan);
	    	tv.setMatkhau(matkhau);
	    	
	    	ThanhvienDAO dao= new ThanhvienDAO();
	    	boolean kq= dao.kiemtraDangnhap(tv);
	    	HttpSession session = request.getSession(true);
	    	if(kq&& tv.getVaitro().equalsIgnoreCase("host"))
	    	{
	    		Bantochuc btc= new Bantochuc();
	    		btc.setTvid(tv.getId());
	    		btc.setTen(tv.getTen());
	    		btc.setVitri("Ban to chuc");
	    		session.setAttribute("bantochuc", btc);
	    		response.sendRedirect("admin/Homepage.jsp");
	    	}
	    	else
	    	{
	    		response.sendRedirect("LoginForm.jsp?err=fail");
	    	}
		} catch (Exception e) {
			// TODO: handle exception
			throw new ServletException("Login failed", e);
		}
		
	}

	
	
}
