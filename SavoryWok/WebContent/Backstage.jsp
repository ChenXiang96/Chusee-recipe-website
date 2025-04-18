<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<title>Backend - Content management system login Page</title>
<meta name="keywords" content="后台登陆页面模板,后台登录界面html,后台登录模板,后台登录页面html,后台管理系统后台登录模板">
<meta name="description" content="cssmoban提供后台管理系统登录界面html模板学习和下载">
<meta name="viewport" content="width=device-width">
<link href="${ctx }/public/css/base.css" rel="stylesheet" type="text/css">
<link href="${ctx }/public/css/login.css" rel="stylesheet" type="text/css">
<style>
   .logo1 {
    width: 600px;
    margin-left: 170px;
    margin-top: 60px;
}

</style>
<body>

<div class="login">
<form action="${ctx }/adm/login" method="post" id="form">
	<div class="logo1">
	   <img class="imgl" src="${pageContext.request.contextPath}/images/lo.png" alt="logo"/>
	
	</div>
    <div class="login_form">
    	<div class="user">
        	<input class="text_value" value="" name="username" type="text" id="username">
            <input class="text_value" value="" name="password" type="password" id="password">
        </div>
        <button class="button" id="submit" type="submit">Login</button>
    </div>
    <div align="center"><font color="white">${errorinfo}</font></div>
    
    <div id="tip"></div>
    <div class="foot"> <a href="${pageContext.request.contextPath }/index" target="_blank" title="Backend-login Page"></a>
    </div>
    </form>
</div>
<script>var basedir='public/ui/';</script>
<script src="${ctx }/public/ui/do.js"></script>
<script src="${ctx }/public/ui/config.js"></script>
<script>
Do.ready('form', function() {
	$("#form").Validform({
			ajaxPost:true,
			postonce:true,
			tiptype:function(msg,o,cssctl){
				if(!o.obj.is("form")){
					var objtip=o.obj.siblings(".Validform_checktip");
					cssctl(objtip,o.type);
					objtip.text(msg);
				}else{
					var objtip=o.obj.find("#tip");
					cssctl(objtip,o.type);
					if(o.type==2){
						window.location.href='index.php?r=admin/index/index';
					}else{
						objtip.text(msg);
					}
				}
			}
	});
});

</script>
</body>
</html>
