package com.js.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.js.dao.CustomerCRUD;
import com.js.dto.User;

@WebServlet("/register")
public class InsertServlet extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		User c = new User();
		int id = Integer.parseInt(req.getParameter("id"));
		c.setId(id);
		c.setName(req.getParameter("name"));
		c.setEmail(req.getParameter("email"));
		int pwd =Integer.parseInt(req.getParameter("pwd"));
		c.setPassword(pwd);
		Long phone = Long.parseLong(req.getParameter("phone"));
		c.setPhone(phone);
		
		int res = CustomerCRUD.insertCustomer(c);
		RequestDispatcher rd = req.getRequestDispatcher("result.jsp");
		
		if (res > 0) {
			req.setAttribute("msg", "Inserted Successfully");
			rd.forward(req, resp);
		} else {
			req.setAttribute("msg", "Failed To Insert");
			rd.forward(req, resp);
		}
	}
}
