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
<!--<![endif]-->
<%@ include file="top.jsp" %>
<%@ include file="left.jsp" %>
<div class="content">
    <div class="header">
        <h1 class="page-title">修改密码</h1>
    </div>
    <div class="container-fluid">
        <div class="row-fluid">
            <div class="well">
                <div id="myTabContent" class="tab-content">
                    <div class="tab-pane active in" id="home">
                        <form id="tab" method="post" action="/backstage/changepassword" onsubmit="return checkform()">
                            <label>原密码:</label>
                            <input type="password" name="password1" id="password1id" class="input-xlarge">
                            <label>新密码:</label>
                            <input type="password" name="password2" id="password2id" class="input-xlarge">
                            <label>确认新密码:</label>
                            <input type="password" name="password3" id="password3id" class="input-xlarge">
                            <label>操作</label>
                            <input type="submit" value="提交"/>
                            <input type="button" value="返回" onclick="javascript:history.go(-1);"/>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
<script language="javascript" type="text/javascript">
    function checkform() {
        if (document.getElementById('password1id').value == "") {
            alert("原密码不能为空");
            return false;
        }
        if (document.getElementById('password2id').value == "") {
            alert("新密码不能为空");
            return false;
        }
        if (document.getElementById('password2id').value.length < 6) {
            alert("新密码长度必须大于6位");
            return false;
        }
        if (document.getElementById('password2id').value != document.getElementById('password3id').value) {
            alert("新密码与新密码确认不一致");
            return false;
        }
        return true;
    }
</script>



