package com.thaind.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.thaind.dao.ChangduaDAO;
import com.thaind.model.Changdua;
@WebServlet(urlPatterns = {"/admin/ChangduaServlet"})
public class ChangduaServlet extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 7424675073536078392L;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			HttpSession session = request.getSession(true);
			ChangduaDAO dao = new ChangduaDAO();
			int idmg= Integer.parseInt(request.getParameter("idmg"));
			session.setAttribute("idmg", idmg);
			ArrayList<Changdua> list= dao.getChangdua(idmg);
			session.setAttribute("listcd", list);
			response.sendRedirect("Changdua.jsp");
			
		} catch (Exception e) {
			// TODO: handle exception
			throw new ServletException("get chang dua failed", e);
		}
	}
	
}
