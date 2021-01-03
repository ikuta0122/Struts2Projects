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
<br/>------------->创建List对象<-------------<br>
<%--set标签定义的对象均存放于context中--%>
<s:set name="myList" value="{'zs','ls','ww'}"/>
<%--iterator标签默认将当前的迭代对象放入值栈栈顶--%>
<s:iterator value="#myList">
    <%--property标签默认输出值栈栈顶元素--%>
    <s:property/><br>
</s:iterator>

<br/>------------->创建Map对象<-------------<br>
<s:set name="myMap" value="#@java.util.LinkedHashMap@{'mobile':'123456','QQ':'654321'}"/>
<s:iterator value="#myMap">
    <s:property/><br>
</s:iterator>

<br/>------------->集合元素的判断<-------------<br>
<s:property value="'zs' in #myList"/><br>

<br/>------------->创建Bean<-------------<br>
<s:bean name="com.ikuta.bean.Student" id="student">
    <s:param name="name" value="'张三'"/>
    <s:param name="age" value="23"/>
</s:bean>
<s:property value="#student.name"/><br>
<s:property value="#student.age"/><br>

<br/>------------->集合创建:将以下三个Student对象存储于List中<-------------<br>
<s:bean name="com.ikuta.bean.Student" id="student1">
    <s:param name="name" value="'张三'"/>
    <s:param name="age" value="23"/>
</s:bean>
<s:bean name="com.ikuta.bean.Student" id="student2">
    <s:param name="name" value="'李四'"/>
    <s:param name="age" value="24"/>
</s:bean>
<s:bean name="com.ikuta.bean.Student" id="student3">
    <s:param name="name" value="'王五'"/>
    <s:param name="age" value="25"/>
</s:bean>
<s:set name="students" value="{#student1,#student2,#student3}"/>
<s:iterator value="#students">
    <s:property/><br>
</s:iterator>

<br/>------------->集合投影:将前面的三个Student对象的name属性值再组成一个list<-------------<br>
<s:set name="studentsNames" value="#students.{name}"/>
<s:iterator value="#studentsNames">
    <s:property/><br>
</s:iterator>

<br/>------------->集合查询:查询前面的三个Student对象中年龄大于23岁的所有人<-------------<br>
<s:iterator value="#students.{?#this.age > 23}">
    <s:property/><br>
</s:iterator>
<br/>------------->集合查询:查询前面的三个Student对象中年龄大于23岁的第一个人<-------------<br>
<s:iterator value="#students.{^#this.age > 23}">
    <s:property/><br>
</s:iterator>
<br/>------------->集合查询:查询前面的三个Student对象中年龄大于23岁的最后一个人<-------------<br>
<s:iterator value="#students.{$#this.age > 23}">
    <s:property/><br>
</s:iterator>
</body>
</html>

