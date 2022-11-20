package com.thaind.servlet;

import java.io.IOException;
import java.util.ArrayList;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.thaind.dao.MuagiaiDAO;
import com.thaind.model.Muagiai;

@WebServlet(name="getmuagiai", urlPatterns = {"/admin/MuagiaiServlet"})
public class MuagiaiServlet extends HttpServlet {

	private static final long serialVersionUID = 6252222508875407300L;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			HttpSession session = request.getSession(true);
			MuagiaiDAO dao = new MuagiaiDAO();
			ArrayList<Muagiai> list= dao.getMuagiai();
			session.setAttribute("listMG", list);
			response.sendRedirect("Muagiai.jsp");
		} catch (Exception e) {
			// TODO: handle exception
			throw new ServletException("get mua giai failed", e);
		}
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	
}
