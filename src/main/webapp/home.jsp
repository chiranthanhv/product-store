<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>HOME</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f1f1f1;
        margin: 20px;
        text-align: center;
    }

    h1 {
        color: #333;
        background-color: #f9f9f9;
        padding: 10px;
        border-radius: 5px;
        box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
    }

    h1 a {
        text-decoration: none;
        color: #fff;
        background-color: #4CAF50;
        padding: 8px 20px;
        border-radius: 5px;
        display: inline-block;
        margin-top: 20px;
        transition: background-color 0.3s ease;
    }

    h1 a:hover {
        background-color: #45a049;
    }
</style>
</head>
<body>
    <h1>WELCOME TO PRODUCT STORE</h1>
    <h1><a href="product.jsp">ADD PRODUCT</a></h1>
    <h1><a href="view">VIEW ALL PRODUCT</a></h1>
    <h1><a href="delete_brand">DELETE BY BRAND</a></h1>
</body>
</html>
