<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link href="${pageContext.request.contextPath}/css/bootstrap.min.css"
	rel="stylesheet" />

<link href="${pageContext.request.contextPath}/css/flexslider1.css"
	rel="stylesheet" />

<link href="${pageContext.request.contextPath}/css/style2.css"
	rel="stylesheet" />
	
<link href="https://fonts.googleapis.com/css2?family=Lobster&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Quicksand&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Playfair+Display&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Amatic+SC&display=swap" rel="stylesheet">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Gupter:wght@400;500;700&family=Protest+Riot&family=Special+Gothic+Expanded+One&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Gupter:wght@400;500;700&family=Italianno&family=Protest+Riot&family=Special+Gothic+Expanded+One&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Gupter:wght@400;500;700&family=Italianno&family=Oleo+Script:wght@400;700&family=Protest+Riot&family=Special+Gothic+Expanded+One&display=swap" rel="stylesheet">

<style>


.navbar .nav>li>a {
	color: #5A5A5A;
	text-shadow: none;
	border: 1px solid rgba(255, 255, 255, 0) !important;
	font-size: 18px;
}

.navbar-nav>.active>a {
	font-weight: bold !important;
	color: #654e2d !important;
	border-bottom: 2px solid #654e2d !important;
}

a {
	color: #654e2d;
}

.navbar-default .navbar-brand {
	top: -38px;
	width: 184px;
}

.scrollup {
	position: fixed;
	width: 82px;
	height: 82px;
	bottom: 0px;
	right: 20px;
	z-index: 102410;
	/* background: #CF6A14; */
	background: url(//static.meishichina.com/v6/img/wap_a/gotop.png)
		no-repeat scroll center center/58px 58px;
}

.site-logo {
	display: block;
	max-width: 280px;
	height: auto;
	width: 100%;
	margin-left: 90px !important;
	transform: none !important;
}

.flex-caption h3{
  font-family: "Oleo Script", system-ui;
  font-weight: 200;
}

.flex-caption p {
  font-family: "Italianno", cursive;
  font-weight: 400;
  font-style: normal;
  font-size: 38px; /* 新增字体大小 */
}

.navbar-header {
	display: flex !important;
	align-items: center !important;
	justify-content: flex-start !important; /* 左对齐 */
	width: auto !important;
}

#main-slider{
    padding-top:30px;

}

#main-slider .slides li {
    position: relative;
    height: 600px; /* 控制轮播容器高度 */
    overflow: hidden; /* 裁剪超出部分 */
}

#main-slider img {
    width: 100%;
    height: 100%;
    object-fit: cover; /* 关键属性：保持比例填充容器 */
    object-position: 60%;
    transform: scale(1);
}

@media ( max-width : 768px) {
	.site-logo {
		max-width: 150px; /* 小屏幕缩小尺寸 */
	}
}
@media (max-width: 768px) {
    #main-slider .slides li {
        height: 400px; /* 移动端高度调整 */
    }
}

.flex-control-nav {
    position: absolute !important;
    bottom: 10px !important;  /* 调整到合适高度 */
    left: 50% !important;
    transform: translateX(-50%);
    z-index: 100;
    display: flex !important;
    gap: 12px;
    justify-content: center;
    padding: 0 !important;
    margin: 0 !important;
    width: 100% !important;  /* 关键修复 */
}

.flex-control-paging li {
    margin: 0 !important; /* 移除默认间距 */
}

.flex-control-paging li a {
    width: 40px !important;   /* 横线长度 */
    height: 3px !important;   /* 横线粗细 */
    background: rgba(255,255,255,0.5) !important;
    border-radius: 0 !important; /* 直角 */
    text-indent: -9999px; /* 隐藏原有点数字 */
    transition: all 0.3s;
    box-shadow: none !important;
    border: none !important;
}

.flex-control-paging li a.flex-active {
    background: rgba(255,255,255,1) !important;
    height: 4px !important; /* 激活状态加粗 */
}


/* 移动端适配 */
@media (max-width: 768px) {
    .flex-control-nav {
        left: 50% !important; /* 保持居中 */
        transform: translateX(-50%);
        bottom: 10px !important;
    }
}
</style>

<script src="${pageContext.request.contextPath}/js/jquery1.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap1.min.js"></script>
<script
	src="${pageContext.request.contextPath}/js/jquery1.fancybox.pack.js"></script>
<script
	src="${pageContext.request.contextPath}/js/jquery1.fancybox-media.js"></script>
<script
	src="${pageContext.request.contextPath}/js/portfolio1/jquery.quicksand.js"></script>
<script
	src="${pageContext.request.contextPath}/js/portfolio1/setting.js"></script>
<script
	src="${pageContext.request.contextPath}/js/jquery1.flexslider.js"></script>
<script src="${pageContext.request.contextPath}/js/animate1.js"></script>
<script src="${pageContext.request.contextPath}/js/custom1.js"></script>
<script
	src="${pageContext.request.contextPath}/js/owl-carousel/owl.carousel.js"></script>

<script>
$('#main-slider').flexslider({
    animation: "slide",
    controlNav: true,    // 保留控制点
    directionNav: false, // 关闭方向导航
    prevText: "",  
    nextText: ""
    // 删除start回调函数
});
</script>

<div class="wrap-body">

	<div id="wrapper" class="home-page">
		<!-- start header -->
		<header>
			<div class="navbar navbar-default navbar-static-top">
				<div class="container">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse"
							data-Bistro=".navbar-collapse">
							<span class="icon-bar"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span>
						</button>
						<a class="" href="${ pageContext.request.contextPath}/index"><img
							class="site-logo"
							src="${pageContext.request.contextPath}/images/logo.png"
							alt="logo image" /></a>
					</div>
					<div class="navbar-collapse collapse ">
						<%-- 获取当前请求路径 --%>
						<c:set var="currentPath"
							value="${requestScope['javax.servlet.forward.request_uri']}" />
						<ul class="nav navbar-nav">
							<%-- 首页菜单项 --%>
							<li class="${sessionScope.activeMenu eq 'home' ? 'active' : ''}"><a
								href="${ pageContext.request.contextPath}/index">Home</a></li>
							<li
								class="${sessionScope.activeMenu eq 'recipe' ? 'active' : ''}"><a
								href="${ pageContext.request.contextPath}/health/list">Recipes</a></li>
							<li
								class="${sessionScope.activeMenu eq 'Themes' ? 'active' : ''}"><a
								href="${ pageContext.request.contextPath}/specialshow">Themes</a></li>
							<li
								class="${sessionScope.activeMenu eq 'health' ? 'active' : ''}"><a
								href="${ pageContext.request.contextPath}/myHealth">Healthy</a></li>
							<li
								class="${sessionScope.activeMenu eq 'Moments' ? 'active' : ''}"><a
								href="${ pageContext.request.contextPath}/topicshow">Moments</a></li>
							<li
								class="${sessionScope.activeMenu eq 'Explore' ? 'active' : ''}"><a
								href="${ pageContext.request.contextPath}/location.jsp">Explore</a></li>

							<c:if test="${sessionScope.user == null}">
								<li class="nav navbar-nav"><a
									href="${ pageContext.request.contextPath }/userLogin">Sign
										in</a></li>
								
							</c:if>


							<c:if test="${sessionScope.user != null}">
								<li class="nav navbar-nav"><a
									href="${ pageContext.request.contextPath }/center/get"><c:out
											value="${user.username }" /></a></li>
								<li class="nav navbar-nav"><a>|</a></li>
								<li class="nav navbar-nav"><a
									href="${ pageContext.request.contextPath }/quit">退出</a></li>
							</c:if>



						</ul>
					</div>
				</div>
			</div>
		</header>
		<!-- end header -->
		<section id="banner">

			<!-- Slider -->
			<div id="main-slider" class="flexslider">
				<ul class="slides">
					<li><img
						src="${pageContext.request.contextPath}/Banner-images/Index-banner-1.jpg" alt="" />
						<div class="flex-caption container">
							<h3>Cook with Passion</h3>
							<p>Savor the joy of every bite</p>
						</div></li>

					<li><img
						src="${pageContext.request.contextPath}/Banner-images/Index-banner-2.jpg" alt="" />
						<div class="flex-caption container">
							<h3>Cook with Passion</h3>
							<p>Savor the joy of every bite</p>
						</div></li>

					<li><img
						src="${pageContext.request.contextPath}/Banner-images/Index-banner-3.jpg" alt="" />
						<div class="flex-caption container">
							<h3>Cook with Passion</h3>
							<p>Savor the joy of every bite</p>
						</div></li>

					<li><img
						src="${pageContext.request.contextPath}/Banner-images/Index-banner-4.jpg" alt="" />
						<div class="flex-caption container">
							<h3>Cook with Passion</h3>
							<p>Savor the joy of every bite</p>
						</div></li>

					<li><img
						src="${pageContext.request.contextPath}/Banner-images/Index-banner-5.jpg" alt="" />
						<div class="flex-caption container">
							<h3>Cook with Passion</h3>
							<p>Savor the joy of every bite</p>
						</div></li>
					<li><img
						src="${pageContext.request.contextPath}/Banner-images/Index-banner-6.jpg" alt="" />
						<div class="flex-caption container">
							<h3>Cook with Passion</h3>
							<p>Savor the joy of every bite</p>
						</div></li>
					<li><img
						src="${pageContext.request.contextPath}/Banner-images/Index-banner-7.jpg" alt="" />
						<div class="flex-caption container">
							<h3>Cook with Passion</h3>
							<p>Savor the joy of every bite</p>
						</div></li>
					<li><img
						src="${pageContext.request.contextPath}/Banner-images/Index-banner-8.jpg" alt="" />
						<div class="flex-caption container">
							<h3>Cook with Passion</h3>
							<p>Savor the joy of every bite</p>
						</div></li>

					<li><img
						src="${pageContext.request.contextPath}/Banner-images/Index-banner-9.jpg" alt="" />
						<div class="flex-caption container">
							<h3>Cook with Passion</h3>
							<p>Savor the joy of every bite</p>
						</div></li>

				</ul>
			</div>
			<!-- end slider -->

		</section>



	</div>
</div>
