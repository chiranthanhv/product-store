<%@page import="com.js.dto.Product"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Product</title>

<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f1f1f1;
        margin: 20px;
        
    }

    h1 {
        color: #333; 
        margin-bottom: 30px; 
        text-align: center; 
    }

    form {
        max-width: 400px;
        margin: 0 auto;
        padding: 20px;
        background-color: #fff;
        border-radius: 5px;
        box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
    }

    input[type="text"] {
        width: 100%;
        padding: 10px;
        margin-bottom: 15px;
        border: 1px solid #ccc;
        border-radius: 4px;
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
	<% Product p = (Product) request.getAttribute("pro"); %>
	<h1>UPDATE YOUR DATA</h1>
    <form action="update" method="get">
        Id: <input type="text" name="id" value="<%= p.getId()%>" readonly="readonly"><br><br>
        Name: <input type="text" name="name" value="<%= p.getName()%>"><br><br>
        Brand: <input type="text" name="brand" value="<%= p.getBrand()%>"><br><br>
        Price: <input type="text" name="price" value="<%= p.getPrice()%>"><br><br>
        Quantity: <input type="text" name="quantity" value="<%= p.getQuantity()%>"><br><br>
        <input type="submit" value="Save">
    </form>
    <div class="center">
    <a class="anchor-button" href="view">BACK</a>
    <a class="anchor-button" href="home.jsp">HOME</a>
    </div>
</body>
</html>