<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List" %>
<%@page import="java.util.Set" %>
<%@page import="java.util.HashSet" %>
<%@page import="com.js.controller.GetBrandServlet" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>DELETE BRAND</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f1f1f1;
        margin: 20px;
        /*text-align: center;*/
    }

    form {
        max-width: 400px;
        margin: 0 auto;
        padding: 20px;
        background-color: #fff;
        border-radius: 5px;
        box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
    }

    select {
        width: 100%;
        padding: 10px;
        margin-bottom: 15px;
        border: 1px solid #ccc;
        border-radius: 4px;
    }

    select option {
        padding: 5px;
    }

    input[type="submit"] {
        background-color: #4CAF50;
        color: #fff;
        border: none;
        padding: 12px 20px;
        border-radius: 4px;
        cursor: pointer;
        width: 100%;
        transition: background-color 0.3s ease;
    }

    input[type="submit"]:hover {
        background-color: #45a049;
    }
    
    .center {
        text-align: center;
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
</head>
<body>
 <% ArrayList<String> al = (ArrayList<String>) request.getAttribute("data"); 
 
	//Create a Set to store unique brands
 	Set<String> uniqueBrands = new HashSet<>();
 	uniqueBrands.addAll(al);

 	// Convert the Set back to a List to maintain the order
	 List<String> uniqueBrandList = new ArrayList<>(uniqueBrands);
 %>
    <form action="DeleteBrandServlet" method="get">
        Brand:
        <select id="brand" name="brand">
            <% for (String brand : uniqueBrandList) { %>
            <option value="<%= brand %>"><%= brand %></option>
            <% } %>
        </select>
        <input type="submit" value="Delete Selected Brand">
    </form>
    <div class="center"><a class="anchor-button" href="home.jsp">Go to Home Page</a></div>
</body>
</html>
