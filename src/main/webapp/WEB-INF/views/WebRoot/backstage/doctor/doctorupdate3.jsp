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
                            <label>所属科室</label>
                            <input type="text" name="name" id="nameid" class="input-xlarge"
                                   value="${bean.keshi.ktitle }" readonly="readonly">
                            <label>医生姓名</label>
                            <input type="text" name="name" id="nameid" class="input-xlarge" value="${bean.name }"
                                   readonly="readonly">
                            <label>职务</label>
                            <input type="text" name="zhiwu" id="zhiwuid" class="input-xlarge" value="${bean.zhiwu }"
                                   readonly="readonly">
                            <label>照片</label>
                            <img src="<%=basePath %>uploadfile/${bean.photo }" width="100" height="100"/>
                            <label>学术擅长</label>
                            <textarea rows="8" cols="60" name="shanchang"
                                      readonly="readonly">${bean.shanchang }</textarea>
                            <label>医生简介</label>
                            <textarea rows="8" cols="60" name="jianjie" readonly="readonly">${bean.jianjie }</textarea>
                            <label>操作</label>
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
        if (document.getElementById('nameid').value == "") {
            alert("姓名不能为空");
            return false;
        }
        if (document.getElementById('zhiwuid').value == "") {
            alert("职务不能为空");
            return false;
        }
        return true;
    }
</script>


