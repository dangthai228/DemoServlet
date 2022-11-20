package com.thaind.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.thaind.dao.LichthiDAO;
import com.thaind.model.Bantochuc;
import com.thaind.model.Lichthi;
@WebServlet("/admin/LuuServlet")
public class LuuServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			HttpSession session = request.getSession(true);
			int kq;
			int idcd= (int)session.getAttribute("idcd");
			int iddd= (int)session.getAttribute("iddd");
			int idtd1= Integer.parseInt(request.getParameter("idtd1"));
			int idtd2= Integer.parseInt(request.getParameter("idtd2"));
			Bantochuc btc= (Bantochuc)session.getAttribute("bantochuc");
			int idbtc= btc.getTvid();
			LichthiDAO dao = new LichthiDAO();
			Lichthi lt= new Lichthi();
			lt.setCdid(idcd);
			lt.setBtcid(idbtc);
			boolean result1= dao.Luudangki(lt,iddd,idtd1);
			boolean result2 =true;
			if(idtd2!=0)
			{
				 result2= dao.Luudangki(lt,iddd,idtd2);
			}
			if(result1==true && result2==true)
			{
				 kq=1;
			}
			else
			{
				kq=-1;
			}
			session.setAttribute("kq", kq);
			response.sendRedirect("Taydua.jsp");
		} catch (Exception e) {
			// TODO: handle exception
			throw new ServletException("luu tay dua failed", e);
		}
	}

}
