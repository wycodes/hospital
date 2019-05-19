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
            <div class="well">
                <table class="table">
                    <thead>
                    <tr>
                        <th>图片</th>
                        <th>链接地址</th>
                        <th>说明</th>
                        <th>操作</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${list}" var="bean">
                        <tr>
                            <td><img src="<%=basePath %>upload/${bean.path }" width="300" height="50"/></td>
                            <td>${bean.href }</td>
                            <td> ${bean.info }</td>
                            <td>
                                <a href="method!picupdate.action?id=${bean.id }&menu=${menu }">修改</a> &nbsp; &nbsp;
                                &nbsp;
                            </td>
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
