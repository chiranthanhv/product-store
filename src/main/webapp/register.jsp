<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Form</title>
<style>
   body {
      font-family: Arial, sans-serif;
      background-color: #f1f1f1;
      margin: 20px;
   }

   h1 {
      text-align: center;
      color: #333;
   }

   form {
      max-width: 400px;
      margin: 0 auto;
      padding: 35px;
      background-color: #fff;
      border-radius: 5px;
      box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
   }

   input[type="password"],
   input[type="text"],
   input[type="email"],
   input[type="number"] {
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
   }

   input[type="submit"]:hover {
      background-color: #45a049;
   }

</style>
</head>
<body>
   <h1>ENTER YOUR DETAILS</h1>
   <form action="register" method="post">
      ID:       <input type="number" name="id"><br><br>
      NAME:     <input type="text" name="name"><br><br>
      Email:    <input type="email" name="email"><br><br>
      Password: <input type="password" name="pwd"><br><br>
      Phone:    <input type="number" name="phone"><br><br>
                <input type="submit" value="Save">
   </form>
</body>
</html>
