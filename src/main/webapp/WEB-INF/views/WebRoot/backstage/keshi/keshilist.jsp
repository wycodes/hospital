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
                <a href="${url2 }add?menu=${menu }"><img src="images/add.jpg" border="0"></img></a>
                &nbsp;&nbsp;&nbsp;科室名称：
                <input name="ktitle" type="text" class="input-xlarge" value="${ktitle }">
                <input type="submit" class="button button-small border-green" value="查询"/>
            </form>
            <div class="well">
                <table class="table">
                    <thead>
                    <tr>
                        <th>科室名称</th>
                        <th>添加日期</th>
                        <th>操作</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${list}" var="bean">
                        <tr>
                            <td>${bean.ktitle }</td>
                            <td>${bean.ctime }</td>
                            <td>
                                <a href="${url2 }update3?id=${bean.id }&menu=${menu }">查看</a>
                                <a href="${url2 }delete?id=${bean.id }&menu=${menu }"
                                   onclick="{if(confirm('确认删除?')){return true;}return false;}">删除</a>
                                <a href="${url2 }update?id=${bean.id }&menu=${menu }">编辑</a>
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
