package com.js.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.js.dao.CustomerCRUD;
@WebServlet("/login")
public class LoginServlet extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String email=req.getParameter("email");
		int password=Integer.parseInt(req.getParameter("pwd"));
		
		boolean res=CustomerCRUD.validate_customer(email, password);
		
		
		
		if(res) {
			
//			this below thing for cookies and session
			
//			Cookie c = new Cookie("abc", "xyz");
//			resp.addCookie(c);
			HttpSession hs = req.getSession();
			hs.setAttribute("abcc", "xyz");
			
			/* ------------------------- */
			
			
			
			RequestDispatcher rd=req.getRequestDispatcher("home.jsp");
			rd.forward(req, resp);
		}
		else
		{
			
			PrintWriter pw=resp.getWriter();
			pw.write("<html>\r\n" + 
					"<body>\r\n" + 
					"	<h4 style=\"color: red; text-align: center;\">Email or password wrong</h4>\r\n" + 
					"</body>\r\n" + 
					"</html>");
			
			RequestDispatcher rd=req.getRequestDispatcher("login.jsp");
			rd.include(req, resp);
			
		}
		
		
	}

}
