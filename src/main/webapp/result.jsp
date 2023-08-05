<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>RESULT</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f1f1f1;
        margin: 20px;
    }

    h1 {
        text-align: center;
        color: #333;
        background-color: #f9f9f9;
        padding: 10px;
        border-radius: 5px;
        box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
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
    <% String msg = (String) request.getAttribute("msg"); %>
    <% String msg2 = (String) request.getAttribute("msg2"); %>
    <% String msg3 = (String) request.getAttribute("msg3"); %>
    <h1><%= msg %></h1>
    <div class="center">
    <a class="anchor-button" href="<%= msg2 %>"><%= msg3 %></a>
    <a class="anchor-button" href="home.jsp">HOME</a>
    </div>
    
</body>
</html>
