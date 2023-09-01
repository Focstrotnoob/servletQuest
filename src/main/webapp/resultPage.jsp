<%@ page import="java.io.FileInputStream" %>
<%@ page import="java.util.Properties" %>
<%@ page import="java.io.IOException" %>

<%FileInputStream fis;
  Properties property = new Properties();
  try {

    fis = new FileInputStream("P:\\ProjUltimateIDEA\\Quest\\ServletQuest\\src\\main\\resources\\config.properties");
    property.load(fis);
  } catch (IOException e) {
    System.err.println("ОШИБКА: Файл свойств отсуствует!");
  }%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <link rel="stylesheet" href="static/main.css" type="text/css">
  <title>Result</title>
</head>
<body>
<p>
  <%=property.getProperty((String) session.getAttribute("resultText"))%>
</p>
<p>
<form action="/restart">
  <button class= "button" type="submit">Restart Game</button>
</form>
</p>
</body>
</html>
