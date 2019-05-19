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
                <div id="myTabContent" class="tab-content">
                    <div class="tab-pane active in" id="home">
                        <form id="tab" method="post" action="${url }" onsubmit="return checkform()"
                              enctype="multipart/form-data">
                            <label>原图片:</label>
                            <img src="<%=basePath %>upload/${bean.path }" width="600" height="150"/>
                            <label>上传新图片:</label>
                            <input name="uploadfile" type="file" class="input-xlarge">
                            <label>链接地址:</label>
                            <textarea rows="7" cols="50" name="href">${bean.href }</textarea>
                            <label> 图片说明:</label>
                            <textarea rows="7" cols="50" name="info">${bean.info }</textarea>
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
        return true;
    }
</script>


