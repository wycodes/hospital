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
                            <select name="keshiid">
                                <c:forEach items="${keshilist}" var="keshi">
                                    <option value="${keshi.id }"
                                            <c:if test="${bean.keshi.id==keshi.id }">selected</c:if> >${keshi.ktitle }</option>
                                </c:forEach>
                            </select>
                            <label>医生姓名</label>
                            <input type="text" name="name" id="nameid" class="input-xlarge" value="${bean.name }">
                            <label>职务</label>
                            <input type="text" name="zhiwu" id="zhiwuid" class="input-xlarge" value="${bean.zhiwu }">
                            <label>照片</label>
                            <img src="<%=basePath %>uploadfile/${bean.photo }" width="100" height="100"/>
                            <label>重新上传照片</label>
                            <input type="file" name="uploadfile" id="uploadfileid"/>
                            <label>每天最多预约人数</label>
                            <input type="text" name="renshu" id="renshuid" class="input-xlarge" value="${bean.renshu }">
                            <label>门诊时间</label>
                            星期一：<input type="checkbox" name="week" value="星期一"
                                       <c:if test="${week1!=null }">checked</c:if> />
                            星期二：<input type="checkbox" name="week" value="星期二"
                                       <c:if test="${week2!=null }">checked</c:if>/>
                            星期三：<input type="checkbox" name="week" value="星期三"
                                       <c:if test="${week3!=null }">checked</c:if>/>
                            星期四：<input type="checkbox" name="week" value="星期四"
                                       <c:if test="${week4!=null }">checked</c:if>/>
                            星期五：<input type="checkbox" name="week" value="星期五"
                                       <c:if test="${week5!=null }">checked</c:if>/>
                            星期六：<input type="checkbox" name="week" value="星期六"
                                       <c:if test="${week6!=null }">checked</c:if>/>
                            星期日：<input type="checkbox" name="week" value="星期日"
                                       <c:if test="${week7!=null }">checked</c:if>/>
                            <label>学术擅长</label>
                            <textarea rows="8" cols="60" name="shanchang">${bean.shanchang }</textarea>
                            <label>医生简介</label>
                            <textarea rows="8" cols="60" name="jianjie">${bean.jianjie }</textarea>
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
        if (document.getElementById('nameid').value == "") {
            alert("姓名不能为空");
            return false;
        }
        if (document.getElementById('zhiwuid').value == "") {
            alert("职务不能为空");
            return false;
        }
        if (document.getElementById('renshuid').value == "") {
            alert("每天最多预约人数不能为空");
            return false;
        }
        //验证正整数
        var reg1 = /^\d+$/;
        if (document.getElementById('renshuid').value.match(reg1) == null) {
            alert("每天最多预约人数必须为正整数");
            return false;
        }
        return true;
    }
</script>




