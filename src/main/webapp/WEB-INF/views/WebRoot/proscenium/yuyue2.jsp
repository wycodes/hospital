<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<html>
<head>
<title>挂号预约网站</title>
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
.STYLE7 {	color: #185838;
	font-weight: bold;
}
-->
</style>
</head>
  <%
  String id=request.getParameter("id");
   %>
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
            <TABLE
                    style="BACKGROUND-POSITION: 50% top; BACKGROUND-REPEAT: repeat-x"
                    cellSpacing=0 cellPadding=8 width="100%"
                    background=../../../../../resources/static/qtimages/zjgdj_82.gif border=0>
              <TBODY>
              <TR>
                <TD style="PADDING-TOP: 8px" vAlign=top height=185><TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
                    <TBODY>
                    <TR>
                      <TD style="PADDING-TOP: 8px" align=middle class=newsline><p align="center">
					  
   <form name="form1" method="post" action="${url }" >
                     
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
   	 <tr>
     <td width='18%'>检查名称：</td>
     <td width='32%'>${bean.jname }</td>
     <td width='18%'>检查费用：</td>
     <td width='32%'>${bean.money }</td>
     </tr>
    
     
     <tr>
     <td width='18%'>每天最多检查人数：</td><td width='39%'>${bean.renshu }</td>
     <td width='18%'>检查开放时间：</td><td width='39%'>${bean.week }</td>
     </tr>
     
     <tr>
     <td width='18%' height="137">注意事项：</td><td colspan="3">${bean.zhuyi }</td>
     
     </tr>
     <tr>
     <td width='18%' height="137">检查说明：</td><td colspan="3">${bean.shuoming }</td>
     
     </tr>
     
     <tr>
     <td width='11%' height="137">预约规则：</td><td colspan="3">只能预约最近一周的检查</td>
     
     </tr>
     
     <c:forEach items="${list}" var="yuyue">
     
     <tr>
     <td width='20%'>日期：${yuyue.riqi }</td>
     <td width='20%'>${yuyue.week }</td>
     <td width='20%'>已预约人数：${yuyue.shiji }</td>
     <td width='20%'>剩余预约人数：${yuyue.jiancha.renshu-yuyue.shiji }</td>
     <td width='20%'>
     <input type="radio" name="yuyue2id" value="${yuyue.id }"  />
      </td>
     </tr>
     </c:forEach>
     
     <tr>
     <td colspan=4 align=center>
     <input type=button name=Submit5 value=返回 onClick="javascript:history.back()" />
     <input type="submit" name=Submit52 value=我要预约  />
         
         </td>
         </tr>
  </table>
</form>		
					  </p>
                        </TD>
                    </TR></TBODY></TABLE></TD></TR></TBODY></TABLE>
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
