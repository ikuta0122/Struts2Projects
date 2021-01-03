<%@page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@taglib uri="/struts-tags" prefix="s" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
<head>
    <base href="<%=basePath%>"/>
    <title>值栈的操作</title>
</head>
<body>
<form action="some.action" method="post">
    姓名<input type="text" name="name"/><br/>
    年龄<input type="text" name="age"/><br/>
    <input type="submit" value="测试"/>
</form>
</body>
</html>

