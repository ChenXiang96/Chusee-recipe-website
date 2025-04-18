﻿<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<html>
<head>
 	<!-- 包含公共的JSP代码片段 -->
	
<title>厨色</title>



<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="text/javascript" src="style/js/jquery.js"></script>
<script type="text/javascript" src="style/js/page_common.js"></script>
<link href="style/css/common_style_blue.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="style/css/index_1.css" />
</head>
<body>
<!-- 页面标题 -->
<div id="TitleArea">
	<div id="TitleArea_Head"></div>
	<div id="TitleArea_Title">
		<div id="TitleArea_Title_Content">
			<img border="0" width="13" height="13" src="style/images/title_arrow.gif"/> 食材列表
		</div>
    </div>
	<div id="TitleArea_End"></div>
</div>


<!-- 过滤条件 -->
<div id="QueryArea">
	<form action="/wirelessplatform/board.jsp" method="get">
		<input type="hidden" name="method" value="search">
		<input type="text" name="keyword" title="请输入餐桌名称">
		<input type="submit" value="搜索">
	</form>
</div>


<!-- 主内容区域（数据列表或表单显示） -->
<div id="MainArea">
    <table class="MainArea_Content" cellspacing="0" cellpadding="0">
        <!-- 表头-->
        <thead>
            <tr align="center" valign="middle" id="TableTitle">
				<td>编号</td>
				<td>食材名称</td>
				<td>食材描述</td>
				<td>操作</td>
			</tr>
		</thead>	
		<!--显示数据列表 -->
        <tbody id="TableData">
		
			<tr class="TableDetail1">
				<td align="center">1&nbsp;</td>
				<td align="center"> 食材1&nbsp;</td>
				<td align="center">描述1</td>
				<td>
					<a href="updateBoard.jsp" class="FunctionButton">更改</a>				
					<a href="/wirelessplatform/board.jsp?method=delete&id=1" onClick="return delConfirm();"class="FunctionButton">删除</a>				
				</td>
			</tr>
        
			<tr class="TableDetail1">
				<td align="center">2&nbsp;</td>
				<td align="center"> 食材2&nbsp;</td>
				<td align="center">描述2</td>
				<td>
					<a href="updateBoard.jsp" class="FunctionButton">更改</a>				
					<a href="/wirelessplatform/board.jsp?method=delete&id=2" onClick="return delConfirm();"class="FunctionButton">删除</a>				
				</td>
			</tr>
        
			<tr class="TableDetail1">
				<td align="center">3&nbsp;</td>
				<td align="center">食材3&nbsp;</td>
				<td align="center">描述3</td>
				<td>
					<a href="updateBoard.jsp" class="FunctionButton">更改</a>				
					<a href="/wirelessplatform/board.jsp?method=delete&id=3" onClick="return delConfirm();"class="FunctionButton">删除</a>				
				</td>
			</tr>
        
			<tr class="TableDetail1">
				<td align="center">5&nbsp;</td>
				<td align="center"> 食材4&nbsp;</td>
				<td align="center">描述4</td>
				<td>
					<a href="updateBoard.jsp" class="FunctionButton">更改</a>				
					<a href="/wirelessplatform/board.jsp?method=delete&id=5" onClick="return delConfirm();"class="FunctionButton">删除</a>				
				</td>
			</tr>
        
        </tbody>
    </table>
	
   <!-- 其他功能超链接 -->
	<div id="TableTail" align="center">
		<div class="FunctionButton"><a href="saveBoard.jsp">添加</a></div>
    </div> 
</div>
</body>
</html>
