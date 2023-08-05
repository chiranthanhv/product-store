package com.js.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.js.dao.ProductCRUD;

@WebServlet("/DeleteBrandServlet")
public class DeleteBrandServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String brand = req.getParameter("brand"); 

        ProductCRUD pc = new ProductCRUD();
        int rowsAffected = pc.deleteProductByBrand(brand);

        if (rowsAffected > 0) {
            RequestDispatcher rd = req.getRequestDispatcher("view");
            rd.forward(req, resp);
        } else {
            RequestDispatcher rd = req.getRequestDispatcher("result.jsp");
            req.setAttribute("msg", "Failed to Delete the product");
            req.setAttribute("msg2","view.jsp");
			req.setAttribute("msg3","Try with Another");
            rd.forward(req, resp);
        }
    }
}

