<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="sidebar-nav">
    <a href="#accounts-menu1" class="nav-header" data-toggle="collapse">
        <i class="icon-dashboard"></i>管理菜单</a>
    <c:if test="${user.role==0}">
        <a href="#accounts-menu5" class="nav-header" data-toggle="collapse">
            <i class="icon-briefcase"></i>系统公告</a>
        <ul id="accounts-menu5" class="nav nav-list collapse <c:if test="${menu==5}">in</c:if>">
            <li><a href="/backstage/gonggao/gonggaolistUI?menu=5">系统公告管理</a></li>
            <li><a href="/backstage/gonggao/gonggaoaddUI?menu=5">添加系统公告</a></li>
        </ul>
        <a href="#accounts-menu2" class="nav-header" data-toggle="collapse">
            <i class="icon-briefcase"></i>医院新闻</a>
        <ul id="accounts-menu2" class="nav nav-list collapse <c:if test="${menu==2}">in</c:if>">
            <li><a href="/backstage/xinwen/xinwenlistUI?menu=2">医院新闻管理</a></li>
            <li><a href="/backstage/xinwen/xinwenaddUI?menu=2">添加医院新闻</a></li>
        </ul>
        <a href="#accounts-menu3" class="nav-header" data-toggle="collapse">
            <i class="icon-briefcase"></i>科室</a>
        <ul id="accounts-menu3" class="nav nav-list collapse <c:if test="${menu==3}">in</c:if>">
            <li><a href="/backstage/keshi/keshilistUI?menu=3">科室管理</a></li>
            <li><a href="/backstage/keshi/keshiaddUI?menu=3">添加科室</a></li>
        </ul>
        <a href="#accounts-menu4" class="nav-header" data-toggle="collapse">
            <i class="icon-briefcase"></i>医生</a>
        <ul id="accounts-menu4" class="nav nav-list collapse <c:if test="${menu==4}">in</c:if>">
            <li><a href="/backstage/doctor/doctorlistUI?menu=4">医生管理</a></li>
            <li><a href="/backstage/doctor/doctoraddUI?menu=4">添加医生</a></li>
            <li><a href="/backstage/user/userlistUI?menu=4">医生账户查询</a></li>
        </ul>
        <a href="#accounts-menu9" class="nav-header" data-toggle="collapse">
            <i class="icon-briefcase"></i>检查项目</a>
        <ul id="accounts-menu9" class="nav nav-list collapse <c:if test="${menu==9}">in</c:if>">
            <li><a href="/backstage/jiancha/jianchalistUI?menu=9">检查项目管理</a></li>
            <li><a href="/backstage/jiancha/jianchaaddUI?menu=9">添加检查项目</a></li>
        </ul>
        <a href="#accounts-menu6" class="nav-header" data-toggle="collapse">
            <i class="icon-briefcase"></i>预约记录</a>
        <ul id="accounts-menu6" class="nav nav-list collapse <c:if test="${menu==6}">in</c:if>">
            <li><a href="/backstage/record/recordlistUI?menu=6">挂号预约记录</a></li>
            <li><a href="/backstage/record2/record2listUI?menu=6">检查预约记录</a></li>
        </ul>
        <a href="#accounts-menu8" class="nav-header" data-toggle="collapse">
            <i class="icon-briefcase"></i>网站动态图片</a>
        <ul id="accounts-menu8" class="nav nav-list collapse <c:if test="${menu==8}">in</c:if>">
            <li><a href="/backstage/pic/piclistUI?menu=8">网站动态图片管理</a></li>
        </ul>
    </c:if>
    <c:if test="${user.role==2}">
        <a href="#accounts-menu1" class="nav-header" data-toggle="collapse">
            <i class="icon-briefcase"></i>在线留言</a>
        <ul id="accounts-menu1" class="nav nav-list collapse <c:if test="${menu==1}">in</c:if>">
            <li><a href="/backstage/liuyan/liuyanlistUI?menu=1">在线留言管理</a></li>
        </ul>
        <a href="#accounts-menu2" class="nav-header" data-toggle="collapse">
            <i class="icon-briefcase"></i>预约记录</a>
        <ul id="accounts-menu2" class="nav nav-list collapse <c:if test="${menu==2}">in</c:if>">
            <li><a href="/backstage/record/recordlist2UI?menu=2">当天预约</a></li>
            <li><a href="/backstage/record/recordlist3UI?menu=2">所有预约</a></li>
        </ul>
        <a href="#accounts-menu3" class="nav-header" data-toggle="collapse">
            <i class="icon-briefcase"></i>个人信息</a>
        <ul id="accounts-menu3" class="nav nav-list collapse <c:if test="${menu==3}">in</c:if>">
            <li><a href="/backstage/doctor/doctorlist2UI?menu=3">个人信息查询</a></li>
        </ul>
    </c:if>
    <a href="/backstage/passwordUI" class="nav-header"><i class="icon-briefcase"></i>修改密码</a>
    <a href="/backstage/loginout" class="nav-header"><i class="icon-briefcase"></i>退出系统</a>
</div>
