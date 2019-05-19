<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <base href="<%=basePath%>">
    <title>网上门诊预约挂号系统管理后台</title>
    <%@include file="../baseResource.jsp" %>
</head>
<body class="">
<%@ include file="../top.jsp" %>
<%@ include file="../left.jsp" %>
<div class="content">
    <div class="header">
        <h1 class="page-title">${title }</h1>
    </div>
    <div class="container-fluid">
        <div class="row-fluid">
            <form action="${url }" method="post">
                <br/>
                &nbsp;&nbsp;&nbsp;用户名：
                <input name="username" type="text" class="input-xlarge" value="${username }">
                <input type="submit" class="button button-small border-green" value="查询"/>
            </form>
            <div class="well">
                <table class="table">
                    <thead>
                    <tr>
                        <th>用户名</th>
                        <th>密码</th>
                        <th>姓名</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${list}" var="bean">
                        <tr>
                            <td>${bean.username }</td>
                            <td>${bean.password }</td>
                            <td>${bean.xingming }</td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
            <div class="pagination">
                ${pagerinfo }
            </div>
        </div>
    </div>
</div>
</body>
</html>
