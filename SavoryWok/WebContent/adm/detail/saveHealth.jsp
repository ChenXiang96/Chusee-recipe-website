<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
   <!-- 包含公共的JSP代码片段 -->
	
<title>无线点餐平台</title>



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
			
				
				
					<img border="0" width="13" height="13" src="style/images/title_arrow.gif"/> 添加新菜品
				
			
		</div>
    </div>
	<div id="TitleArea_End"></div>
</div>

<!-- 主内容区域（数据列表或表单显示） -->
<div id="MainArea">
	<!-- 表单内容 -->
	<form action="${ctx }/health/add" method="post" enctype="multipart/form-data">
		<!-- 本段标题（分段标题） -->
		<div class="ItemBlock_Title">
        	<img width="4" height="7" border="0" src="style/images/item_point.gif"> 菜品信息&nbsp;
        </div>
		<!-- 本段表单字段 -->
        <div class="ItemBlockBorder">
            <div class="ItemBlock">
				<div class="ItemBlock2">
					<table cellpadding="0" cellspacing="0" class="mainForm">
                    <tr>
							<td width="80px">菜系</td>
							<td>
                            <select name="cid" style="width:80px">
	                            
			   						<option value="1" 
			   							
			   						>粤菜</option>
			   						
			   					
			   						<option value="2" 
			   							
			   						>川菜</option>
			   						
			   					
			   						<option value="3" 
			   							
			   						>湘菜</option>
			   						
			   					
			   						<option value="4" 
			   							
			   						>东北菜</option>
			   						
			   					
                            </select>
                             *<input type="hidden" name="id" value="" /></td>
						</tr>
						<tr>
							<td width="80px">菜名</td>
							<td><input type="text" name="pname" class="InputStyle" value=""/> *</td>
						</tr>
						
                        <tr>
							<td>上传时间</td>
							<td><input type="text" name="mprice" class="InputStyle" value=""/> *</td>
						</tr>
						
						<tr>
							<td>描述</td>
							<td><textarea name="pdesc" class="TextareaStyle"></textarea></td>
						</tr>
						<tr>
							<td width="80px">菜品图片</td>
							<td>
								
								<input type="file" name="imageUrl"/> *
							</td>
						</tr>
					</table>
				</div>
            </div>
        </div>
		
		
		<!-- 表单操作 -->
		<div id="InputDetailBar">
            
				
				
					 <input type="submit" value="添加" class="FunctionButtonInput">
				
			
            
            <a href="javascript:history.go(-1);" class="FunctionButton">返回</a>
        </div>
	</form>
</div>
</body>
</html>
