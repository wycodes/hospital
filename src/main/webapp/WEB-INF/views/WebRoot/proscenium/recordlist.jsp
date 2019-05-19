<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<html>
<head>
<title>网上门诊预约挂号系统</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312"><LINK href="../../../../../resources/static/qtimages/style.css" type=text/css rel=stylesheet>
<style type="text/css">
<!--
.STYLE2 {	color: #0066CC;
	font-weight: bold;
}
-->
</style>
<style type="text/css">
<!--
.STYLE1 {color: #FFFFFF}
.STYLE5 {color: #CCFFCC;
	font-size: 26pt;
}
.STYLE6 {color: #288848}
-->
</style>
</head>

<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">

<%@ include file="qttop.jsp"%>


<TABLE height=8 cellSpacing=0 cellPadding=0 width=1002 align=center 
bgColor=#ffffff border=0>
  <TBODY>
  <TR>
    <TD></TD></TR></TBODY></TABLE>
<TABLE cellSpacing=0 cellPadding=0 width=1002 align=center bgColor=#ffffff 
border=0>
  <TBODY>
  <TR>
    <TD vAlign=top>
      <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
        <TBODY>
        <TR>
          <TD width=8></TD>
          <TD vAlign=top>
            <TABLE height=27 cellSpacing=0 cellPadding=0 width="100%"
                   background=../../../../../resources/static/qtimages/zjgdj_79.gif border=0>
              <TBODY>
              <TR>
                <TD 
                style="BACKGROUND-POSITION: left 50%; PADDING-LEFT: 12px; FONT-WEIGHT: bold; FONT-SIZE: 10.5pt; COLOR: #3d3d3d; BACKGROUND-REPEAT: no-repeat" 
                width=118 background=../../../../../resources/static/qtimages/zjgdj_77.gif><IMG
                  src="../../../../../resources/static/qtimages/zjgdj_sy_26.gif"
                align=absMiddle>&nbsp;${title }</TD>
                <TD style="PADDING-RIGHT: 1px" align=right 
                background=../../../../../resources/static/qtimages/zjgdj_79.gif></TD>
                <TD width=7></TD></TR></TBODY></TABLE>
                
                <form  action="${url }" method="post" >
               科室名称:<input name="ktitle"  type="text" value="${ktitle }"/> 
               医生姓名:<input name="name"  type="text" value="${name }"/> 
               <input value="搜索" type="submit"/>
                
                </form>
                
            <TABLE
                    style="BACKGROUND-POSITION: 50% top; BACKGROUND-REPEAT: repeat-x"
                    cellSpacing=0 cellPadding=8 width="100%"
                    background=../../../../../resources/static/qtimages/zjgdj_82.gif border=0>
              <TBODY>
              <TR>
                <TD style="PADDING-TOP: 8px" vAlign=top height=185><TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
                    <TBODY>
                    <TR>
                      <TD style="PADDING-TOP: 8px" align=middle class=newsline><table width="98%" border="0" align="center" cellpadding="3" cellspacing="1" bordercolor="#FA9090" style="border-collapse:collapse">
           
           				<tr>
                         
                          <td >科室</td>
                          <td >医生</td>
                          <td >挂号时间</td>
                          <td >预约时间</td>
                          <td >预约状态</td>
                          <td >预计看诊时间</td>
                          
                          <td width="10%" align="center">
                          操作
                          </td>
                          
                         
                          
                        </tr>
           
                        <c:forEach items="${recordlist}" var="bean">
                        
                        <tr>
                         
                          <td >${bean.yuyue.doctor.keshi.ktitle }</td>
                          <td >${bean.yuyue.doctor.name }</td>
                          <td >${bean.yuyue.riqi }--${bean.yuyue.week }</td>
                          <td >${bean.ytime }</td>
                          <td >${bean.status }</td>
                          <td >
                          ${bean.sj }
                          </td>
                        
                          <td width="15%" align="center">
                          
                          <c:if test="${riqi<bean.riqi}">
                           <c:if test="${bean.status=='预约成功'}">
                          <a href="indexmethod!recorddelete?id=${bean.id }" onclick="{if(confirm('确认取消?')){return true;}return false;}">取消预定</a>
                          </c:if></c:if>
                          </td>
                          
                        </tr>
                        
                        </c:forEach>
                       
                      </table>
                        <br>
<p align="center">&nbsp;${pagerinfo }</p></TD>
                    </TR>
                    
                    
                    </TBODY></TABLE></TD></TR></TBODY></TABLE>
            </TD></TR></TBODY></TABLE>
      <TABLE height=8 cellSpacing=0 cellPadding=0 width="100%" align=center 
      border=0>
        <TBODY>
        <TR>
          <TD></TD></TR></TBODY></TABLE>
      </TD>
    <TD width=8></TD>
    <TD vAlign=top width=220><%@ include file="qtleft.jsp"%></TD></TR></TBODY></TABLE>
<TABLE height=8 cellSpacing=0 cellPadding=0 width=1002 align=center 
bgColor=#ffffff border=0>
  <TBODY>
  <TR>
    <TD></TD></TR></TBODY></TABLE>
<TABLE height=8 cellSpacing=0 cellPadding=0 width=1002 align=center 
bgColor=#ffffff border=0>
  <TBODY>
  <TR>
    <TD></TD></TR></TBODY></TABLE>
<TABLE style="BORDER-RIGHT: #cccccc 1px solid; BORDER-LEFT: #cccccc 1px solid" 
cellSpacing=0 cellPadding=0 width=1002 align=center bgColor=#ffffff border=0>
  <TBODY>
  <TR>
    <TD 
    style="PADDING-RIGHT: 8px; PADDING-LEFT: 20px; PADDING-BOTTOM: 8px; PADDING-TOP: 8px" 
    vAlign=top>
      
      </TD></TR></TBODY></TABLE>
<TABLE height=4 cellSpacing=0 cellPadding=0 width=1002 align=center 
bgColor=#ffffff border=0>
  <TBODY>
  <TR>
    <TD width=5><IMG height=3 src="../../../../../resources/static/qtimages/zjgdj_64.gif" width=5></TD>
    <TD background=../../../../../resources/static/qtimages/zjgdj_65.gif><IMG height=3
                                                                              src="../../../../../resources/static/qtimages/zjgdj_65.gif" width=1></TD>
    <TD width=4><IMG height=3 src="../../../../../resources/static/qtimages/zjgdj_67.gif"
  width=4></TD></TR></TBODY></TABLE>
<TABLE height=8 cellSpacing=0 cellPadding=0 width=1002 align=center 
bgColor=#ffffff border=0>
  <TBODY>
  <TR>
    <TD></TD></TR></TBODY></TABLE>
<%@ include file="qtdown.jsp"%>
</body>
</html>