<%@page import="com.js.dto.Product"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.js.controller.GetALLServlet" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Product View</title>
</head>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f7f7f7;
        margin: 20px;
    }
    h1 {
        color: #333333;
        text-align: center;
        margin-bottom: 30px;
    }
    table {
        border-collapse: collapse;
        width: 100%;
    }
    th, td {
        border: 2px solid #cccccc;
        padding: 8px;
        text-align: center;
    }
    th {
        background-color: #4CAF50;
        color: white;
    }
    tr:nth-child(even) {
        background-color: #f2f2f2;
    }
   
    td a {
        display: inline-block;
        padding: 8px 12px;
        border-radius: 4px;
        text-decoration: none;
        font-weight: bold;
        transition: background-color 0.3s ease;
    }
    
    .delete-btn {
        background-color: #f44336;
        color: white;
    }
    
    .update-btn {
        background-color: #2196F3;
        color: white;
    }
    
    td a:hover {
        background-color: #555;
    }
    
    .center {
        text-align: center;
    }
    
    .top-right {
        position: absolute;
        top: 10px;
        right: 50px;
    }

    .anchor-button {
        display: inline-block;
        background-color: #008CBA;
        color: white;
        padding: 14px 20px;
        margin-top: 20px;
        border: none;
        border-radius: 4px;
        cursor: pointer;
        text-decoration: none;
    }

    .anchor-button:hover {
        background-color: #005A70;
    }
</style>
<body>
	<% String s =(String) session.getAttribute("abcc");
		if(s!=null){%>
	<div class="top-right">
        <a class="anchor-button" href="logout" style="background-color: red;">Log Out</a>
    </div>
    <h1>PRODUCT TABLE</h1>
    
    <table>
        <tr>
            <th>ID</th>
            <th>NAME</th>
            <th>BRAND</th>
            <th>PRICE</th>
            <th>QUANTITY</th>
            <th>DELETE</th>
            <th>UPDATE</th>
        </tr>
        <% ArrayList<Product> al = (ArrayList<Product>) request.getAttribute("data"); %>
        <% for (Product p : al) { %>
            <tr>
                <td><%= p.getId() %></td>
                <td><%= p.getName() %></td>
                <td><%= p.getBrand() %></td>
                <td><%= p.getPrice() %></td>
                <td><%= p.getQuantity() %></td>
                <td><a href="delete?id=<%=p.getId() %>" class="delete-btn">Delete</a></td>
                <td><a href="edit?id=<%=p.getId() %>" class="update-btn">Edit</a></td>
            </tr>
        <% } %>
    </table>
    <div class="center"><a class="anchor-button" href="home.jsp">Go to Home Page</a>
    </div>
    <%
    	}else{
    		response.sendRedirect("login");
    		}%>
</body>
</html>
