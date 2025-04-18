<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 41 Transitional//EN">
<html>
<head>
	<!-- 包含公共的JSP代码片段 -->
	
<title>厨色</title>



<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="text/javascript" src="${ctx }/adm/detail/style/js/jquery.js"></script>
<script type="text/javascript" src="${ctx }/adm/detail/style/js/page_common.js"></script>
<link href="${ctx }/adm/detail/style/css/common_style_blue.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="${ctx }/adm/detail/style/css/index_1.css" />
</head>
<body>
<!-- 页面标题 -->
<div id="TitleArea">
	<div id="TitleArea_Head"></div>
	<div id="TitleArea_Title">
		<div id="TitleArea_Title_Content">
			<img border="0" width="13" height="13" src="style/images/title_arrow.gif"/> 用户列表
		</div>
    </div>
	<div id="TitleArea_End"></div>
</div>


	<!-- 过滤条件 -->
	<div id="QueryArea">
		<form action="/wirelessplatform/food.jsp" method="get">
			<input type="hidden" name="method" value="search">
			<input type="text" name="keyword" title="请输入用户id">
			<input type="submit" value="搜索">
		</form>
	</div>
<!-- 主内容区域（数据列表或表单显示） -->
<div id="MainArea">
    <table class="MainArea_Content" align="center" cellspacing="0" cellpadding="0">
        <!-- 表头-->
        <thead>
            <tr align="center" valign="middle" id="TableTitle">
				<td>用户编号</td>
				<td>用户名</td>
				<td>用户等级</td>
				<td>用户身份</td>
				<td>用户密码</td>
				<td>用户头像</td>
				<td>创建时间</td>
				<td>操作</td>
			</tr>
		</thead>	
		<!--显示数据列表 -->
        <tbody id="TableData">
			<c:forEach items="${ list}" var="p">
			<tr class="TableDetail1">
				<td>${p.uid }&nbsp;</td>
				<td>${p.username }&nbsp;</td>
				<td>1&nbsp;</td>
				<td>管理员</td>
				<td>${p.password }</td>
				<td>111</td>
				<td>2018/5/16</td>
                
				<td>
					<!-- a href="pdateUser.jsp"  class="FunctionButton">更新</a-->				
					<a href="${ctx }/userback/delete?uid=${p.uid}" onClick="return delConfirm();"class="FunctionButton">删除</a>				
				</td>
			</tr>
        	</c:forEach>
		 <!--  tr id="TableTail" width="50" height="50"><td colspan="8" align="center">共有${page.totalCount}条数据，一共${page.totalPageNum }页，
      <a href="?pageNum=1">首页</a>，<a href="?pageNum=${page.prePageNum }">上一页</a>，<a href="?pageNum=${page.nextPageNum }">下一页</a>，<a href="?pageNum=${page.totalPageNum }">末页</a></td></tr-->
                
        </tbody>
    </table>
	
   <!-- 其他功能超链接 -->
	<div >
	 	<p colspan="8" align="center">共有${page.totalCount}条数据，一共${page.totalPageNum }页，
      <a href="?pageNum=1">首页</a>，<a href="?pageNum=${page.prePageNum }">上一页</a>，<a href="?pageNum=${page.nextPageNum }">下一页</a>，<a href="?pageNum=${page.totalPageNum }">末页</a></p>
    </div> 
</div>
</body>
</html>
