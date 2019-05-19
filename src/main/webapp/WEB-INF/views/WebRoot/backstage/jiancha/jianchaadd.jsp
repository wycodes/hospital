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
                            <input type="text" name="jname" id="jnameid" class="input-xlarge">
                            <label>检查费用</label>
                            <input type="text" name="money" id="moneyid" class="input-xlarge">
                            <label>每天最多检查人数</label>
                            <input type="text" name="renshu" id="renshuid" class="input-xlarge">
                            <label>检查开放时间</label>
                            星期一：<input type="checkbox" name="week" value="星期一"/>
                            星期二：<input type="checkbox" name="week" value="星期二"/>
                            星期三：<input type="checkbox" name="week" value="星期三"/>
                            星期四：<input type="checkbox" name="week" value="星期四"/>
                            星期五：<input type="checkbox" name="week" value="星期五"/>
                            星期六：<input type="checkbox" name="week" value="星期六"/>
                            星期日：<input type="checkbox" name="week" value="星期日"/>
                            <label>注意事项</label>
                            <textarea rows="8" cols="60" name="zhuyi"></textarea>
                            <label>检查说明</label>
                            <textarea rows="8" cols="60" name="shuoming"></textarea>
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
        if (document.getElementById('jnameid').value == "") {
            alert("检查名称不能为空");
            return false;
        }
        if (document.getElementById('moneyid').value == "") {
            alert("检查费用不能为空");
            return false;
        }
        if (document.getElementById('renshuid').value == "") {
            alert("每天最多检查人数不能为空");
            return false;
        }
        //验证正整数
        var reg1 = /^\d+$/;

        if (document.getElementById('renshuid').value.match(reg1) == null) {
            alert("每天最多检查人数必须为正整数");
            return false;
        }
        return true;
    }
</script>