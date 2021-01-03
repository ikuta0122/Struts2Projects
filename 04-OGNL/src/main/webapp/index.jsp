<%@page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@taglib uri="/struts-tags" prefix="s" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
<head>
    <base href="<%=basePath%>"/>
    <title>OGNL</title>
</head>
<body>
PI = <s:property value="@java.lang.Math@PI"/><br/>
random = <s:property value="@java.lang.Math@random() * 100"/><br/>
</body>
</html>

