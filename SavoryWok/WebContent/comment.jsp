<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>评论</title>
<meta name="keywords" content="">
<meta name="description" content="又来一波粗陶美具，口感不够，视觉来凑！祝大家和风四季，平安吉祥！">
<meta name="renderer" content="webkit">
<meta http-equiv="mobile-agent"
	content="format=xhtml; url=https://m.meishichina.com/pai/905517/">
<link rel="alternate" media="only screen and (max-width: 640px)"
	href="https://m.meishichina.com/pai/905517/">
<link rel="shortcut icon"
	href="https://static.meishichina.com/v6/img/lib/f.ico">
<link rel="apple-touch-icon"
	href="https://static.meishichina.com/v6/img/lib/wapico.png">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/all.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/pai2.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/comment.css">

<script src="${pageContext.request.contextPath}/js/push.js"></script>
<script src="${pageContext.request.contextPath}/js/hm.js"></script>
<script src="${pageContext.request.contextPath}/js/share.js"></script>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/share_style0_16.css">
	<style>
	.imgLoad1{
	  width:60px;
	  height:60px;
	
	}
	.wrap {
        margin-top: 60px !important;
    }
	.space_right{
	    margin-top: 30px !important;
	
	}
	</style>
</head>
<body>
	<!-- logo+nav -->


<%@ include file="menu3.jsp" %>


	<div class="wrap">
		<div class="w clear">
			<div class="space_left">

				<div class="ui_title">
					<div class="ui_title_wrap clear ">
						<h2 class="on">Moment Details</h2>
					</div>
				</div>

				<div class="pai_box">

					<a class="img" title="${t.uname }"
						href="${pageContext.request.contextPath}/center/get"
						target="_blank">
						
						<img
						src="${pageContext.request.contextPath}${t.uimg}"
						class="imgLoad1" style="display: block;" width="48" height="48"></a>

					<p class="u">
						<a target="_blank"
							href="" class="t">${t.uname }</a>
						${t.time }



					</p>
					<p class="c">
						<span class="subject">${t.tcontent }</span>
					</p>
					<div class="pic">
						<img src="${pageContext.request.contextPath}/images/${t.timg}"
							class="imgLoad" style="display: block;">
					</div>
				</div>


				<div id="comment">
					<div class="comment-wrap clear" data-dom="wrap">

						<div class="comment-list ">
							<div data-dom="list">
								<ul style="">

									<c:forEach items="${sessionScope.clist}" begin="0" var="ct">

										<li data-id="${ct.ctid }">
											<div class="pic">
												<a title="点击进入 zhangshouhua 的主页" target="_blank"
													href="https://home.meishichina.com/space-6213452.html"><img
													src="${pageContext.request.contextPath}${ct.uimg}"
													class="imgLoad" style="display: block;" width="48"
													height="48"></a>
											</div>
											<div class="detail">
												<div class="tools">
													<div class="left">
														<a target="_blank"
															href="${pageContext.request.contextPath}/center/get"
															title="点击进入 zhangshouhua 的主页">${ct.uname }</a><span
															data-time="1433395511" class="subtime">${ct.ctime }</span>
													</div>
													<div class="right">
														<a class="reply" href="javascript:void(0);">回复</a>
													</div>
												</div>
												<div class="content">${ct.cdes }</div>
											</div>

										</li>
									</c:forEach>
								</ul>
							</div>
						</div>


						<form
							action="${pageContext.request.contextPath}/commentadd?uid=${user.uid}&tid=${t.tid}"
							method="post">
							<div class="comment-pai">
								<a target="_blank" href="${pageContext.request.contextPath}/center/get" class="t"><img
									src="${pageContext.request.contextPath}${ user.uimage}"
									data-src="${pageContext.request.contextPath}${ user.uimage}"
									class="imgLoad1 comment-pai-img" width="48" height="48"></a>
								
								<div data-dom="add" class="comment-post comment-add">
									
									<div class="comment-post-text">
										<div class="comment-post-text-inner">
											<input type="textarea" title="Share your awesome comment!"
												class="text ui-webkit-scrollbar" id="cdes" name="cdes">

										</div>
									</div>
									<div class="comment-post-tools clear">
										<div class="left">
											<a title="插入表情" data-type="smilies"
												class="J_event comment-smilies-a" href="javascript:void(0);"></a><span
												class="tips">Share your awesome comment!</span>
										</div>
										<div class="right">
											<input class="comment-btn add_submit" value="发布话题"
												type="submit">
										</div>
									</div>
								</div>

							</div>
						</form>

					</div>

				</div>


			</div>


			<div class="space_right">
				<a class="r_pai-add" target="_blank"
					href="pinglun1.jsp?uid=${user.uid}"
					title="发布话题">发布话题</a>
				<div class="mt20">
					<a title="美食天下客户端" href="https://www.meishichina.com/Mobile/"
						target="_blank"> <script>
							
						</script><img src="${pageContext.request.contextPath}/images/20180621092708.jpg"
						class="imgLoad" style="display: block;" width="300" height="600">
					</a>
				</div>

							<div class="mt20" id="smnbk"></div>
		


			</div>


		</div>
	</div>
	<style type="text/css">
.footer-area {
	padding: 10px 0
}

.footer-area .w {
	padding-top: 10px;
	border-top: 1px solid #e8e8e8
}

.footer-area a {
	color: #666
}

.footer-area a:hover {
	color: #ff6767
}

.ft1 {
	clear: none;
	float: left;
	font-size: 11px;
	color: #666;
	width: 680px;
	padding-top: 10px
}

.ft1 .c3b {
	color: #c90;
	font-size: 14px;
	font-weight: 700;
	margin-bottom: 6px
}

.ft1 .c3b a {
	color: #f50
}

.ft1 .c3c {
	color: #aaa;
	font-size: 12px;
	margin-bottom: 6px
}

.ft2, .ft3, .ft4 {
	clear: none;
	float: right;
	text-align: center
}

.ft3 {
	margin: 0 25px
}
</style>
<%@include file="footer3.jsp" %>
	<!-- 引用全站js -->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/js/all.js"></script>
	<script type="text/javascript">
		msc.goTop.init();
		msc.user.init();
		$("img.imgLoad").imgLoad();
		$("#search")
				.click(
						function() {
							var q = $("#q").val().replace(/\s+/g, "").replace(
									"　", "");
							window.location.href = 'https://home.meishichina.com/search/'
									+ (q == "" ? '' : q + '/')
						});
		$("#q").keydown(function(e) {
			if (e.keyCode == 13)
				$("#search").click()
		});
	</script>
	<div class="fixed-footer"
		style="left: 1179.5px; right: auto; bottom: 142.383px;">
		<a href="javascript:;" title="点击返回页面顶部"
			onclick="window.scrollTo(0,0);" class="fixed-footer-go"
			style="display: inline;"></a>
		<div class="fixed-footer-weixin">
			<div class="fixed-footer-weixin-inner">
				<span>美食天下手机客户端</span>
			</div>
		</div>
	</div>


	<script type="text/javascript"
		src="${pageContext.request.contextPath}/js/msc-ui-smilies.js"></script>
	<script type="text/javascript" id="bdshare_js"
		data="type=tools&amp;uid=11097"></script>
	<script type="text/javascript" id="bdshell_js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/js/pai.js"></script>


	<script>
		$("li.top_bar_more").hoverDelay(function() {
			$("li.top_bar_more div").show()
		}, function() {
			$("li.top_bar_more div").hide()
		}, 200, 200);
		var _hmt = _hmt || [];
		(function() {
			var hm = document.createElement("script");
			hm.src = "//hm.baidu.com/hm.js?fb9cd9dcdda23cee0c7357db9be24acb";
			var s = document.getElementsByTagName("script")[0];
			s.parentNode.insertBefore(hm, s)
		})();
		(function() {
			var bp = document.createElement("script");
			var curProtocol = window.location.protocol.split(":")[0];
			if (curProtocol === "https") {
				bp.src = "https://zz.bdstatic.com/linksubmit/push.js"
			} else {
				bp.src = "http://push.zhanzhang.baidu.com/push.js"
			}
			var s = document.getElementsByTagName("script")[0];
			s.parentNode.insertBefore(bp, s)
		})();
	</script>


	<span
		style="position: fixed; bottom: 0px; left: 0px; background-color: rgba(219, 219, 182, 0.5); color: black;"
		id="statusbar"></span>
	<div id="SL_balloon_obj" alt="0" style="display: block;">
		<div id="SL_button" class="SL_ImTranslatorLogo"
			style="background: rgba(0, 0, 0, 0) url(&quot;moz-extension://d849e60a-97da-499c-b29d-89f6d220ce39/content/img/util/imtranslator-s.png&quot;) repeat scroll 0% 0%; display: none; opacity: 1;"></div>
		<div id="SL_shadow_translation_result2" style="display: none;"></div>
		<div id="SL_shadow_translator" style="display: none;">
			<div id="SL_planshet">
				<div id="SL_arrow_up"
					style="background: rgba(0, 0, 0, 0) url(&quot;moz-extension://d849e60a-97da-499c-b29d-89f6d220ce39/content/img/util/up.png&quot;) repeat scroll 0% 0%;"></div>
				<div id="SL_Bproviders">
					<div class="SL_BL_LABLE_ON" title="Google" id="SL_P0">G</div>
					<div class="SL_BL_LABLE_ON" title="Microsoft" id="SL_P1">M</div>
					<div class="SL_BL_LABLE_ON" title="Translator" id="SL_P2">T</div>
				</div>
				<div id="SL_alert_bbl" style="display: none;">
					<div id="SLHKclose"
						style="background: rgba(0, 0, 0, 0) url(&quot;moz-extension://d849e60a-97da-499c-b29d-89f6d220ce39/content/img/util/delete.png&quot;) repeat scroll 0% 0%;"></div>
					<div id="SL_alert_cont"></div>
				</div>
				<div id="SL_TB">
					<table id="SL_tables" cellspacing="1">
						<tr>
							<td class="SL_td" width="10%" align="right"><input
								id="SL_locer" title="锁定语言" type="checkbox"></td>
							<td class="SL_td" width="20%" align="left"><select
								id="SL_lng_from"
								style="background: rgb(255, 255, 255) url(&quot;moz-extension://d849e60a-97da-499c-b29d-89f6d220ce39/content/img/util/select.png&quot;) no-repeat scroll 100% 0px;"><option
										value="auto" selected="selected">检测语言</option>
									<option value="eo">世界语</option>
									<option value="zh-CN">中文简体</option>
									<option value="zh-TW">中文繁体</option>
									<option value="da">丹麦语</option>
									<option value="uk">乌克兰语</option>
									<option value="uz">乌兹别克语</option>
									<option value="ur">乌尔都语</option>
									<option value="hy">亚美尼亚语</option>
									<option value="ig">伊博语</option>
									<option value="ru">俄语</option>
									<option value="bg">保加利亚语</option>
									<option value="si">僧伽罗语</option>
									<option value="hr">克罗地亚语</option>
									<option value="is">冰岛语</option>
									<option value="gl">加利西亚语</option>
									<option value="ca">加泰罗尼亚语</option>
									<option value="hu">匈牙利语</option>
									<option value="zu">南非祖鲁语</option>
									<option value="kn">卡纳达语</option>
									<option value="hi">印地语</option>
									<option value="su">印尼巽他语</option>
									<option value="jw">印尼爪哇语</option>
									<option value="id">印尼语</option>
									<option value="gu">古吉拉特语</option>
									<option value="kk">哈萨克语</option>
									<option value="tr">土耳其语</option>
									<option value="tg">塔吉克语</option>
									<option value="sr">塞尔维亚语</option>
									<option value="st">塞索托语</option>
									<option value="cy">威尔士语</option>
									<option value="bn">孟加拉语</option>
									<option value="ceb">宿务语</option>
									<option value="ne">尼泊尔语</option>
									<option value="eu">巴斯克语</option>
									<option value="af">布尔语(南非荷兰语)</option>
									<option value="iw">希伯来语</option>
									<option value="el">希腊语</option>
									<option value="de">德语</option>
									<option value="it">意大利语</option>
									<option value="yi">意第绪语</option>
									<option value="la">拉丁语</option>
									<option value="lv">拉脱维亚语</option>
									<option value="no">挪威语</option>
									<option value="cs">捷克语</option>
									<option value="sk">斯洛伐克语</option>
									<option value="sl">斯洛文尼亚语</option>
									<option value="sw">斯瓦希里语</option>
									<option value="pa">旁遮普语</option>
									<option value="ja">日语</option>
									<option value="ka">格鲁吉亚语</option>
									<option value="mi">毛利语</option>
									<option value="fr">法语</option>
									<option value="pl">波兰语</option>
									<option value="bs">波斯尼亚语</option>
									<option value="fa">波斯语</option>
									<option value="te">泰卢固语</option>
									<option value="ta">泰米尔语</option>
									<option value="th">泰语</option>
									<option value="ht">海地克里奥尔语</option>
									<option value="ga">爱尔兰语</option>
									<option value="et">爱沙尼亚语</option>
									<option value="sv">瑞典语</option>
									<option value="be">白俄罗斯语</option>
									<option value="lt">立陶宛语</option>
									<option value="so">索马里语</option>
									<option value="yo">约鲁巴语</option>
									<option value="my">缅甸语</option>
									<option value="ro">罗马尼亚语</option>
									<option value="lo">老挝语</option>
									<option value="fi">芬兰语</option>
									<option value="hmn">苗语</option>
									<option value="en">英语</option>
									<option value="nl">荷兰语</option>
									<option value="tl">菲律宾语</option>
									<option value="pt">葡萄牙语</option>
									<option value="mn">蒙古语</option>
									<option value="es">西班牙语</option>
									<option value="ha">豪萨语</option>
									<option value="vi">越南语</option>
									<option value="az">阿塞拜疆语</option>
									<option value="sq">阿尔巴尼亚语</option>
									<option value="ar">阿拉伯语</option>
									<option value="ko">韩语</option>
									<option value="mk">马其顿语</option>
									<option value="mg">马尔加什语</option>
									<option value="mr">马拉地语</option>
									<option value="ml">马拉雅拉姆语</option>
									<option value="ms">马来语</option>
									<option value="mt">马耳他语</option>
									<option value="km">高棉语</option>
									<option value="ny">齐切瓦语</option></select></td>
							<td class="SL_td" width="3" align="center"><div
									id="SL_switch_b" title="切换语言"
									style="background: rgba(0, 0, 0, 0) url(&quot;moz-extension://d849e60a-97da-499c-b29d-89f6d220ce39/content/img/util/switchb.png&quot;) repeat scroll 0% 0%;"></div></td>
							<td class="SL_td" width="20%" align="left"><select
								id="SL_lng_to"
								style="background: rgb(255, 255, 255) url(&quot;moz-extension://d849e60a-97da-499c-b29d-89f6d220ce39/content/img/util/select.png&quot;) no-repeat scroll 100% 0px;"><option
										value="eo">世界语</option>
									<option value="zh-CN">中文简体</option>
									<option value="zh-TW">中文繁体</option>
									<option value="da">丹麦语</option>
									<option value="uk">乌克兰语</option>
									<option value="uz">乌兹别克语</option>
									<option value="ur">乌尔都语</option>
									<option value="hy">亚美尼亚语</option>
									<option value="ig">伊博语</option>
									<option value="ru">俄语</option>
									<option value="bg">保加利亚语</option>
									<option value="si">僧伽罗语</option>
									<option value="hr">克罗地亚语</option>
									<option value="is">冰岛语</option>
									<option value="gl">加利西亚语</option>
									<option value="ca">加泰罗尼亚语</option>
									<option value="hu">匈牙利语</option>
									<option value="zu">南非祖鲁语</option>
									<option value="kn">卡纳达语</option>
									<option value="hi">印地语</option>
									<option value="su">印尼巽他语</option>
									<option value="jw">印尼爪哇语</option>
									<option value="id">印尼语</option>
									<option value="gu">古吉拉特语</option>
									<option value="kk">哈萨克语</option>
									<option value="tr">土耳其语</option>
									<option value="tg">塔吉克语</option>
									<option value="sr">塞尔维亚语</option>
									<option value="st">塞索托语</option>
									<option value="cy">威尔士语</option>
									<option value="bn">孟加拉语</option>
									<option value="ceb">宿务语</option>
									<option value="ne">尼泊尔语</option>
									<option value="eu">巴斯克语</option>
									<option value="af">布尔语(南非荷兰语)</option>
									<option value="iw">希伯来语</option>
									<option value="el">希腊语</option>
									<option value="de">德语</option>
									<option value="it">意大利语</option>
									<option value="yi">意第绪语</option>
									<option value="la">拉丁语</option>
									<option value="lv">拉脱维亚语</option>
									<option value="no">挪威语</option>
									<option value="cs">捷克语</option>
									<option value="sk">斯洛伐克语</option>
									<option value="sl">斯洛文尼亚语</option>
									<option value="sw">斯瓦希里语</option>
									<option value="pa">旁遮普语</option>
									<option value="ja">日语</option>
									<option value="ka">格鲁吉亚语</option>
									<option value="mi">毛利语</option>
									<option value="fr">法语</option>
									<option value="pl">波兰语</option>
									<option value="bs">波斯尼亚语</option>
									<option value="fa">波斯语</option>
									<option value="te">泰卢固语</option>
									<option value="ta">泰米尔语</option>
									<option value="th">泰语</option>
									<option value="ht">海地克里奥尔语</option>
									<option value="ga">爱尔兰语</option>
									<option value="et">爱沙尼亚语</option>
									<option value="sv">瑞典语</option>
									<option value="be">白俄罗斯语</option>
									<option value="lt">立陶宛语</option>
									<option value="so">索马里语</option>
									<option value="yo">约鲁巴语</option>
									<option value="my">缅甸语</option>
									<option value="ro">罗马尼亚语</option>
									<option value="lo">老挝语</option>
									<option value="fi">芬兰语</option>
									<option value="hmn">苗语</option>
									<option selected="selected" value="en">英语</option>
									<option value="nl">荷兰语</option>
									<option value="tl">菲律宾语</option>
									<option value="pt">葡萄牙语</option>
									<option value="mn">蒙古语</option>
									<option value="es">西班牙语</option>
									<option value="ha">豪萨语</option>
									<option value="vi">越南语</option>
									<option value="az">阿塞拜疆语</option>
									<option value="sq">阿尔巴尼亚语</option>
									<option value="ar">阿拉伯语</option>
									<option value="ko">韩语</option>
									<option value="mk">马其顿语</option>
									<option value="mg">马尔加什语</option>
									<option value="mr">马拉地语</option>
									<option value="ml">马拉雅拉姆语</option>
									<option value="ms">马来语</option>
									<option value="mt">马耳他语</option>
									<option value="km">高棉语</option>
									<option value="ny">齐切瓦语</option></select></td>
							<td class="SL_td" width="8%" align="center"><div
									id="SL_TTS_voice" title="undefined"
									style="background: rgba(0, 0, 0, 0) url(&quot;moz-extension://d849e60a-97da-499c-b29d-89f6d220ce39/content/img/util/ttsvoice.png&quot;) repeat scroll 0% 0%;"></div></td>
							<td class="SL_td" width="8%" align="center"><div
									id="SL_copy" title="复制译文" class="SL_copy"
									style="background: rgba(0, 0, 0, 0) url(&quot;moz-extension://d849e60a-97da-499c-b29d-89f6d220ce39/content/img/util/copy.png&quot;) repeat scroll 0% 0%;"></div></td>
							<td class="SL_td" width="8%" align="center"><div
									id="SL_bbl_font_patch"></div>
								<div id="SL_bbl_font" title="字体大小" class="SL_bbl_font"
									style="background: rgba(0, 0, 0, 0) url(&quot;moz-extension://d849e60a-97da-499c-b29d-89f6d220ce39/content/img/util/font.png&quot;) repeat scroll 0% 0%;"></div></td>
							<td class="SL_td" width="8%" align="center"><div
									id="SL_bbl_help" title="帮助"
									style="background: rgba(0, 0, 0, 0) url(&quot;moz-extension://d849e60a-97da-499c-b29d-89f6d220ce39/content/img/util/bhelp.png&quot;) repeat scroll 0% 0%;"></div></td>
							<td class="SL_td" width="15%" align="right"><div id="SL_pin"
									class="SL_pin_off" title="固定弹出窗口"
									style="background: rgba(0, 0, 0, 0) url(&quot;moz-extension://d849e60a-97da-499c-b29d-89f6d220ce39/content/img/util/pin-on.png&quot;) repeat scroll 0% 0%;"></div></td>
						</tr>
					</table>
				</div>
			</div>
			<div id="SL_shadow_translation_result" style="visibility: visible;"></div>
			<div id="SL_loading" class="SL_loading"
				style="background: rgba(0, 0, 0, 0) url(&quot;moz-extension://d849e60a-97da-499c-b29d-89f6d220ce39/content/img/util/loading.gif&quot;) repeat scroll 0% 0%;"></div>
			<div id="SL_player2"></div>
			<div id="SL_alert100">文本转语音功能仅限200个字符</div>
			<div id="SL_Balloon_options"
				style="background: rgb(255, 255, 255) url(&quot;moz-extension://d849e60a-97da-499c-b29d-89f6d220ce39/content/img/util/bg3.png&quot;) repeat scroll 0% 0%;">
				<div id="SL_arrow_down"
					style="background: rgba(0, 0, 0, 0) url(&quot;moz-extension://d849e60a-97da-499c-b29d-89f6d220ce39/content/img/util/down.png&quot;) repeat scroll 0% 0%;"></div>
				<table id="SL_tbl_opt" width="100%">
					<tr>
						<td width="5%" align="center"><input id="SL_BBL_locer"
							checked="checked" title="显示翻译器的按钮 3 秒" type="checkbox"></td>
						<td width="5%" align="left"><div id="SL_BBL_IMG"
								title="显示翻译器的按钮 3 秒"
								style="background: rgba(0, 0, 0, 0) url(&quot;moz-extension://d849e60a-97da-499c-b29d-89f6d220ce39/content/img/util/bbl-logo.png&quot;) repeat scroll 0% 0%;"></div></td>
						<td width="70%" align="center"><a
							href="moz-extension://d849e60a-97da-499c-b29d-89f6d220ce39/content/html/options/options.html?bbl"
							target="_blank" class="SL_options" title="显示选项">选项</a> : <a
							href="moz-extension://d849e60a-97da-499c-b29d-89f6d220ce39/content/html/options/options.html?hist"
							target="_blank" class="SL_options" title="翻译历史记录">历史</a> : <a
							href="moz-extension://d849e60a-97da-499c-b29d-89f6d220ce39/content/html/options/options.html?feed"
							target="_blank" class="SL_options" title="反馈">反馈</a> : <a
							href="https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&amp;hosted_button_id=GD9D8CPW8HFA2"
							target="_blank" class="SL_options" title="作出一点点贡献">Donate</a></td>
						<td width="15%" align="right"><span id="SL_Balloon_Close"
							title="关闭">关闭</span></td>
					</tr>
				</table>
			</div>
		</div>
	</div>
</body>
</html>