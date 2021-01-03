<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="/struts-tags" prefix="s" %>
<html>
<head>
    <title>结果界面</title>
</head>
<body>
<s:debug/>
<%--
#request.name的底层执行的是request.getAttribute("name")
#request.name被Struts2包装后的查找顺序是
    1)request域空间
    2)root属性
    3)context属性
--%>
#request.name = <s:property value="#request.name"/><br/>
#request.age = <s:property value="#request.age"/><br/>
<%--#parameters.name的底层执行的是request.getParameter("name")--%>
#parameters.name = <s:property value="#parameters.name"/><br/>
#parameters.age = <s:property value="#parameters.age"/><br/>
#action.name = <s:property value="#action.name"/><br/>
#action.age = <s:property value="#action.age"/><br/>
</body>
</html>
