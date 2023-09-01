<%@ page import="java.io.FileInputStream" %>
<%@ page import="java.util.Properties" %>
<%@ page import="java.io.IOException" %>
<%@ page import="java.net.InetAddress" %>
<%@ page import="java.io.File" %>

<%
    FileInputStream fis;
    Properties property = new Properties();
    File propFile = new File("P:\\IDEA\\Projects\\servletQuest\\src\\main\\resources\\config.properties");
    try {
        fis = new FileInputStream(propFile);
        property.load(fis);
    } catch (IOException e) {
        System.err.println("ОШИБКА: Файл свойств отсутствует!");
    }
%>


<%@ page contentType="text/html;charset=UTF-8"%>
<html lang="ru" xml:lang="ru">
<head>
    <link rel="stylesheet" href="static/main.css" type="text/css">
    <title>Quest</title>
</head>
<body>
<p><%=property.getProperty("q." + session.getAttribute("step"))%></p>

<form action="/read" method="post">
    <p>Make your choice:</p>
    <label><input type="radio" name= "choice" value="1" checked="checked"> <%= property.getProperty("a." + session.getAttribute("step") + ".1")%> </label>
    <label><input type="radio" name= "choice" value="2"> <%= property.getProperty("a." + session.getAttribute("step") + ".2")%> </label> <br>
    <button class= "button" type="submit">Confirm</button>

</form>

<div class="footer">
    <%= "Statistics:"%> <br>
    <%= "Your name: " + session.getAttribute("user") %><br>
    <%= "Your IP: " + InetAddress.getLocalHost().getHostAddress() %><br>
    <%= "Number of games played: " + session.getAttribute("gameCount")%>
</div>
</body>
</html>
