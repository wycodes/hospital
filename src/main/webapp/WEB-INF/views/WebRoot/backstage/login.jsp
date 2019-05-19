<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
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
<div class="navbar">
    <div class="navbar-inner">
        <ul class="nav pull-right">
        </ul>
        <a class="brand" href="/backstage/loginUI"><span class="second">网上门诊预约挂号系统管理后台</span></a>
    </div>
</div>
<div class="row-fluid">
    <div class="dialog">
        <div class="block">
            <p class="block-heading">网上门诊预约挂号系统管理后台登录界面</p>
            <div class="block-body">
                <form name="form1" method="post" action="/backstage/login">
                    <label>用户名</label>
                    <input type="text" class="span12" name="username">
                    <label>密码</label>
                    <input type="password" class="span12" name="password">
                    <label>用户角色</label>
                    <select name="role">
                        <option value="2">医生</option>
                        <option value="0">系统管理员</option>
                    </select>
                    <a href="javascript:void(0)" onclick="javascript:form1.submit();"
                       class="btn btn-primary pull-right">登录</a>
                    <a href=".">返回首页</a>
                    <div class="clearfix"></div>
                </form>
            </div>
        </div>
    </div>
</div>
</body>
</html>



