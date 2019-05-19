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
                        <th>所属科室</th>
                        <th>医生编号(用户名)</th>
                        <th>医生姓名</th>
                        <th>职务</th>
                        <th>每天最大预约人数</th>
                        <th>门诊时间</th>
                        <th>操作</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${list}" var="bean">
                        <tr>
                            <td>${bean.keshi.ktitle }</td>
                            <td>${bean.bianhao }</td>
                            <td>${bean.name }</td>
                            <td>${bean.zhiwu }</td>
                            <td>${bean.renshu }</td>
                            <td>${bean.week }</td>
                            <td>
                                <a href="${url2 }update3?id=${bean.id }&menu=${menu }">查看</a>
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
            <div class="pagination">
            </div>
        </div>
    </div>
</div>
</body>
</html>
