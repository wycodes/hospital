<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@ page contentType="text/html; UTF-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <base href="<%=basePath%>">
    <title>网上门诊预约挂号系统管理后台</title>
    <%@include file="baseResource.jsp" %>
</head>
<body class="">
<div class="content">
    <br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
    <div align="center" style="font-weight: bold;font-size: 40px;">
        您好,${user.username },欢迎使用本系统
    </div>
</div>
</body>
</html>
