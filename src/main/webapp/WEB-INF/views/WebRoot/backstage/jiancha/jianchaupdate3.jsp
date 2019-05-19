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
                            <label>检查名称</label>
                            <input type="text" name="jname" id="jnameid" class="input-xlarge" value="${bean.jname }"
                                   readonly="readonly">
                            <label>检查费用</label>
                            <input type="text" name="money" id="moneyid" class="input-xlarge" value="${bean.money }"
                                   readonly="readonly">
                            <label>每天最多检查人数</label>
                            <input type="text" name="renshu" id="renshuid" class="input-xlarge" value="${bean.renshu }"
                                   readonly="readonly">
                            <label>注意事项</label>
                            <textarea rows="8" cols="60" name="zhuyi" readonly="readonly">${bean.zhuyi }</textarea>
                            <label>检查说明</label>
                            <textarea rows="8" cols="60" name="shuoming"
                                      readonly="readonly">${bean.shuoming }</textarea>
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
