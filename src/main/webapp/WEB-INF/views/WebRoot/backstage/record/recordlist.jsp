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
                科室:<input name="ktitle" type="text" class="input-xlarge" value="${ktitle }">
                医生:<input name="name" type="text" class="input-xlarge" value="${name }">
                挂号用户:<input name="username" type="text" class="input-xlarge" value="${username }"><br/>
                姓名:<input name="xingming" type="text" class="input-xlarge" value="${xingming }">
                身份证:<input name="sfz" type="text" class="input-xlarge" value="${sfz }">
                <input type="submit" class="button button-small border-green" value="查询"/>
            </form>
            <div class="well">
                <table class="table">
                    <thead>
                    <tr>
                        <th>科室</th>
                        <th>医生</th>
                        <th>挂号用户</th>
                        <th>姓名</th>
                        <th>身份证</th>
                        <th>联系方式</th>
                        <th>挂号日期</th>
                        <th>预约日期</th>
                        <th>预约状态</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${list}" var="bean">
                        <tr>
                            <td>${bean.yuyue.doctor.keshi.ktitle }</td>
                            <td>${bean.yuyue.doctor.name }</td>
                            <td>${bean.user.username }</td>
                            <td>${bean.user.xingming }</td>
                            <td>${bean.user.sfz }</td>
                            <td>${bean.user.dianhua }</td>
                            <td>${bean.yuyue.riqi }--${bean.yuyue.week }</td>
                            <td>${bean.ytime }</td>
                            <td>${bean.status }</td>
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
