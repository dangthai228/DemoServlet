package com.thaind.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.thaind.dao.LichthiDAO;
import com.thaind.dao.TayduaDAO;
import com.thaind.model.Bantochuc;
import com.thaind.model.Lichthi;
import com.thaind.model.Taydua;
@WebServlet(urlPatterns = {"/admin/TayduaServlet"})
public class TayduaServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 6094861058012837911L;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			HttpSession session = request.getSession(true);
			TayduaDAO dao = new TayduaDAO();
			int iddd= Integer.parseInt(request.getParameter("iddd"));
			int idcd= Integer.parseInt(session.getAttribute("idcd").toString());
			int kq=0;
			session.setAttribute("kq", kq);
			session.setAttribute("iddd", iddd);
			ArrayList<Taydua> list= dao.getTaydua(idcd);
			session.setAttribute("listtd", list);
			int sodk= dao.getsoluong(idcd, iddd);
			session.setAttribute("sodk", sodk);
			response.sendRedirect("Taydua.jsp");
			
		} catch (Exception e) {
			// TODO: handle exception
			throw new ServletException("get tay dua failed", e);
		}
	}
}
