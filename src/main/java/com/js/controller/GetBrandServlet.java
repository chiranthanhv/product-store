package com.js.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.js.dao.ProductCRUD;

@WebServlet("/delete_brand")
public class GetBrandServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		ProductCRUD pc = new ProductCRUD();
		ArrayList<String> al = pc.getBrand();
		if (al.size()>0) {
			RequestDispatcher rd= req.getRequestDispatcher("delete_brand.jsp");
			req.setAttribute("data", al);
			rd.forward(req, resp);
		} else {
			RequestDispatcher rd = req.getRequestDispatcher("result.jsp");
			req.setAttribute("msg", "NO BRAND AVAILABLE");
			rd.forward(req, resp);
		}
	}
}
