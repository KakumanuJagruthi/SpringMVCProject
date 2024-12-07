<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employee Form</title>
</head>
<body>
    <form action="/SpringMVC/showInfo" method="get">
        <label>ID:</label><input type="text" name="id"><br>
        <label>Name:</label><input type="text" name="name"><br>
        <label>Gender:</label><input type="text" name="gender"><br>
        <label>Salary:</label><input type="text" name="salary"><br>
        <button type="submit">Submit</button>
    </form>
</body>
</html>