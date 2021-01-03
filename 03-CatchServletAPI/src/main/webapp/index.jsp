<%@page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <base href="<%=basePath%>"/>
</head>
<body>
<h2>在Action中获取Servlet API</h2>
</body>
<form action="some.action" method="post">
    <input type="submit" value="测试"/>
</form>
</html>

