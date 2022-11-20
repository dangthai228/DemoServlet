package com.thaind.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.thaind.dao.DoiduaDAO;
import com.thaind.model.Doidua;
@WebServlet(urlPatterns = {"/admin/DoiduaServlet"})
public class DoiduaServlet extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = -6417999174932349717L;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			HttpSession session = request.getSession(true);
			DoiduaDAO dao = new DoiduaDAO();
			int idcd= Integer.parseInt(request.getParameter("idcd"));
			session.setAttribute("idcd", idcd);
			ArrayList<Doidua> list= dao.getDoidua(idcd);
			session.setAttribute("listdd", list);
			response.sendRedirect("Doidua.jsp");
			
		} catch (Exception e) {
			// TODO: handle exception
			throw new ServletException("get doi dua failed", e);
		}
	}

}
