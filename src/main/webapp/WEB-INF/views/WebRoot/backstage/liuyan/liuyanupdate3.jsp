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
                        <form id="tab" method="post" action="${url }" onsubmit="return checkform()">
                            <label>留言标题</label>
                            <input type="text" name="gtitle" id="titleid" class="input-xlarge" value="${bean.ltitle }"
                                   readonly="readonly">
                            <label>留言内容</label>
                            <textarea rows="8" cols="60" name="gcontent"
                                      readonly="readonly">${bean.lcontent }</textarea>
                            <label>回复内容</label>
                            <textarea rows="8" cols="60" name="hcontent"
                                      readonly="readonly">${bean.hcontent }</textarea>
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
        return true;
    }
</script>


