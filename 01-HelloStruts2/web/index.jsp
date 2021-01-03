<%--
  @author   Ikuta
  @time     2020-12-17 23:08
--%>
<%@page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
<head>
    <base href="<%=basePath%>"/>
</head>
<body>
<h2>HelloStruts2</h2>
</body>
<form action="login.action" method="post">
    姓名:<input type="text" name="name"/><br>
    年龄:<input type="text" name="age"/><br>
    <input type="submit" value="登录"/>
</form>
</html>
