<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" /> 
<!doctype html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Recipe-Detail</title>    

<meta name="renderer" content="webkit">
<meta http-equiv="mobile-agent" content="format=xhtml; url=https://m.meishichina.com/recipe/402563/">
<link rel="alternate" media="only screen and (max-width: 640px)"  href="https://m.meishichina.com/recipe/402563/">
<link rel="shortcut icon" href="https://static.meishichina.com/v6/img/lib/f.ico"/>
<link rel="apple-touch-icon" href="https://static.meishichina.com/v6/img/lib/wapico.png" />
<link rel="stylesheet" type="text/css" href="https://static.meishichina.com/v6/css/lib/all3.css?v1=2017-10-24">
<link rel="stylesheet" type="text/css" href="https://static.meishichina.com/v6/css/app/newrecipe/recipe_one.css?v1=2018-06-10">
<link rel="stylesheet" type="text/css" href="https://static.meishichina.com/v6/css/lib/comment.css?v1=2015-07-16">
<script type="text/javascript" src="//static.meishichina.com/v6/js/lib/dfp-content-5.js"></script>
<style>
/* 添加在页面<style>中 */
.recipeCategory_sub_R li {
    vertical-align: top;  /* 顶部对齐 */
    padding: 5px 10px;    /* 内间距 */
}

</style>

</head>
<body>

  <%@ include file="menu3.jsp" %>

	<div class="wrap">

		<div class="w clear">
			<div class="space_left">

<div class="userTop clear">
<h1 class="recipe_De_title">
<a href="https://home.meishichina.com/recipe-402563.html" id="recipe_title" title="recipe_title">
<c:out value="${Dishes.pname }"/>
</a>
</h1>

</div>

				 
				<div class="space_box_home">
					
					<div class="recipDetail">
						
						<input type="hidden" id="recipe_id" value="402563">
						<input type="hidden" id="recipe_uid" value="10373406">
						<input type="hidden" id="recipe_title" value="recipe detail">
						<div class="recipe_De_imgBox" id="recipe_De_imgBox">
							<a class="J_photo" title="recipe detail"><span></span>
							<img  
							 src="${ pageContext.request.contextPath }/<c:out value="${Dishes.image}"/>"
							alt="recipe detail"> </a>
							<p class="J_photo">
							<span class="De_bg">&nbsp;</span>
							<span class="De_photo">3 images</span>
							</p>
						</div>
						 


<div class="mo mt20">
<h3>Ingredients list</h3>
</div>



<div class="recipeCategory_sub_R mt30 clear" style="width: 600px; margin: 0 auto;">
<ul style="
    padding: 0;
    margin: 0;
    display: flex; 
    flex-wrap: wrap;
    justify-content: flex-start;
    width: 100%;
    list-style: none;
">
    <%-- 循环配料数据 --%>
    <c:forEach items="${Dishes.ingredients}" var="ingredient" varStatus="status">
        <li style="width: 45%; margin: 10px; box-sizing: border-box;">
            <span class="category_s1">
                ${ingredient.item}
            </span>
            <span class="category_s2">
                ${ingredient.qty}
            </span>
        </li>
    </c:forEach>
</ul>
</div>






						
<div class="mo mt20">
<h3><c:out value="${Dishes.pname}"/>Cooking Steps</h3>
</div>
				
						


           <div class="recipeStep">
           
             <ul>
               <c:forEach items="${Dishes.steps}" var="step" varStatus="status">
                 <li>
                   <div class="recipeStep_img">
                    <img src="${pageContext.request.contextPath}/${step.image}" alt="${Dishes.pname}步骤${step.step}">
                   </div>
                   <div class="recipeStep_word">
                      <div class="recipeStep_num">${step.step}</div>
                      ${step.description}
                   </div>
                
                 </li>
            
               </c:forEach>
        
             </ul>
           
           </div>
		  		  






<div class="mt20">
	<iframe src="https://static.meishichina.com/v3/t2_2.html?id=468627" width="640" height="90" scrolling="no" frameborder="0"></iframe>
</div>




<div class="timeline clear">
<ul id="getRecommendNewRecipe">

</ul>
</div>

<div id="comment_top">
<script type="text/javascript" src="//crayon.meishichina.com/fasjbjbbj.js"></script>
</div>



		
		 <script>
var aliyun_recommend_opts={
	'url':'',
	'title':'',
	'thumb':'',
	'tags':''}; 

	var TMD_self = false;

/*后台绑定数据位置*/
var J_photo = [{"src":"https://i8.meishichina.com/attachment/recipe/2018/06/12/20180612152878228508073010373406.JPG?x-oss-process=style/p800","description":""},{"src":"https://i8.meishichina.com/attachment/recipe/2018/06/12/20180612152878227425955410373406.JPG?x-oss-process=style/p800","description":""},{"src":"https://i8.meishichina.com/attachment/recipe/2018/06/12/20180612152878229499929210373406.JPG?x-oss-process=style/p800","description":""}];

</script>


	</div>
	<!--recipDetail-->
</div>
<!--space_box_home-->
	</div>
	<!-- 左侧end -->

		<div class="space_right">	<!-- 右侧 -->

<div id="getRecipeDetailPaiandHealth" ingredient="MianBaoFen">
</div>


<div class="ui_title mt20 clear">
	<div class="ui_title_wrap">
		<h3 class="on">热门专题</h3>
		<a title="美食专题" href="https://www.meishichina.com/mofang/" class="right" target="_blank">更多</a>
	</div>
</div>
<div class="sPic2 clear">
	<ul>
		<li><a href="https://www.meishichina.com/mofang/paigudezuofadaquan/#hmsr=www&hmpl=recipe&hmcu=s_mofang&hmkw=paigudezuofadaquan&hmci=pic" title="排骨的花样吃法" target="_blank"><img width="140" height="93" border="0" src="https://i3.meishichina.com/attachment/article/2018/04/18/20180418152403923755013.jpg"></a></li>
		<li><a href="https://www.meishichina.com/mofang/peigenzuofadaquan/#hmsr=www&hmpl=recipe&hmcu=s_mofang&hmkw=peigenzuofadaquan&hmci=pic" title="诱惑味蕾的培根" target="_blank"><img width="140" height="93" border="0" src="https://i3.meishichina.com/attachment/article/2018/04/18/20180418152403937895113.jpg"></a></li>
		<li><a href="https://www.meishichina.com/mofang/qingdushucai/#hmsr=www&hmpl=recipe&hmcu=s_mofang&hmkw=qingdushucai&hmci=pic" title="平民蔬菜清毒素" target="_blank"><img width="140" height="93" border="0" src="https://i3.meishichina.com/attachment/article/2018/04/18/20180418152403944735113.jpg"></a></li>
		<li><a href="https://www.meishichina.com/mofang/chunjiqushi/#hmsr=www&hmpl=recipe&hmcu=s_mofang&hmkw=chunjiqushi&hmci=pic" title="食物祛湿有诀窍" target="_blank"><img width="140" height="93" border="0" src="https://i3.meishichina.com/attachment/article/2018/04/18/20180418152403953489313.jpg"></a></li>
	</ul>
</div>

 

<!-- 美食天下菜谱页右侧二300x250 -->
<div id='div-gpt-ad-1508681717585-3' style='height:250px; width:300px;margin-top:20px'>
<script>
googletag.cmd.push(function() { googletag.display('div-gpt-ad-1508681717585-3'); });
</script>
</div>


<div class="recipe_rlist clear">
<ul>
	<li>
<a title="吐司也可以萌萌哒" href="https://home.meishichina.com/collect-4201565.html" target="_blank">
	<img src="https://i3.meishichina.com/attachment/collect/2017/06/02/20170602149637538056513.jpg?x-oss-process=style/c180" >
	<p class="t3">吐司也可以萌萌哒</p>
		<p class="t2">2001人收藏</p>
	</a>
</li>
	</ul>
</div>


<div class="ui_title mt20 clear">
	<div class="ui_title_wrap">
		<h3 class="on">最受欢迎的家常菜</h3>
		<a title="家常菜谱大全" href="https://home.meishichina.com/recipe-menu.html" class="right" target="_blank">更多</a>
	</div>
</div>

<div class="gongxiao_r mt10">
<div>
<a title="红烧肉的做法大全" href="https://www.meishichina.com/mofang/hongshaorou/#hmsr=www&hmpl=recipe&hmcu=s_jiachangcai&hmkw=hongshaorou&hmci=list" target="_blank">红烧肉</a>
<a title="红烧茄子的做法大全" href="https://www.meishichina.com/mofang/hongshaoqiezi/#hmsr=www&hmpl=recipe&hmcu=s_jiachangcai&hmkw=hongshaoqiezi&hmci=list" target="_blank">红烧茄子</a>
<a title="红烧鱼的做法大全" href="https://www.meishichina.com/mofang/hongshaoyu/#hmsr=www&hmpl=recipe&hmcu=s_jiachangcai&hmkw=hongshaoyu&hmci=list" target="_blank">红烧鱼</a>

<a title="鱼香肉丝的做法大全" href="https://www.meishichina.com/mofang/yuxiangrousi/#hmsr=www&hmpl=recipe&hmcu=s_jiachangcai&hmkw=yuxiangrousi&hmci=list" target="_blank">鱼香肉丝</a>
<a title="可乐鸡翅的做法大全" href="https://www.meishichina.com/mofang/kelejichi/#hmsr=www&hmpl=recipe&hmcu=s_jiachangcai&hmkw=kelejichi&hmci=list" target="_blank">可乐鸡翅</a>
<a title="宫保鸡丁的做法大全" href="https://www.meishichina.com/mofang/gongbaojiding/#hmsr=www&hmpl=recipe&hmcu=s_jiachangcai&hmkw=gongbaojiding&hmci=list" target="_blank">宫保鸡丁</a>

<a title="红烧排骨的做法大全" href="https://www.meishichina.com/mofang/hongshaopaigu/#hmsr=www&hmpl=recipe&hmcu=s_jiachangcai&hmkw=hongshaopaigu&hmci=list" target="_blank">红烧排骨</a>
<a title="糖醋排骨的做法大全" href="https://www.meishichina.com/mofang/tangcupaigu/#hmsr=www&hmpl=recipe&hmcu=s_jiachangcai&hmkw=tangcupaigu&hmci=list" target="_blank">糖醋排骨</a>
<a title="水煮肉片的做法大全" href="https://www.meishichina.com/mofang/shuizhuroupian/#hmsr=www&hmpl=recipe&hmcu=s_jiachangcai&hmkw=shuizhuroupian&hmci=list" target="_blank">水煮肉片</a>

<a title="佛跳墙的做法大全" href="https://www.meishichina.com/mofang/fotiaoqiang/#hmsr=www&hmpl=recipe&hmcu=s_jiachangcai&hmkw=fotiaoqiang&hmci=list" target="_blank">佛跳墙</a>
<a title="麻婆豆腐的做法大全" href="https://www.meishichina.com/mofang/mapodoufu/#hmsr=www&hmpl=recipe&hmcu=s_jiachangcai&hmkw=mapodoufu&hmci=list" target="_blank">麻婆豆腐</a>
<a title="麻辣香锅的做法大全" href="https://www.meishichina.com/mofang/malaxiangguo/#hmsr=www&hmpl=recipe&hmcu=s_jiachangcai&hmkw=malaxiangguo&hmci=list" target="_blank">麻辣香锅</a>

<a title="沙拉的做法大全" href="https://www.meishichina.com/mofang/shala/#hmsr=www&hmpl=recipe&hmcu=s_jiachangcai&hmkw=shala&hmci=list" target="_blank">沙拉</a>
<a title="饭团的做法大全" href="https://www.meishichina.com/mofang/fantuan/#hmsr=www&hmpl=recipe&hmcu=s_jiachangcai&hmkw=fantuan&hmci=list" target="_blank">饭团</a>
<a title="鸡汤的做法大全" href="https://www.meishichina.com/mofang/jitang/#hmsr=www&hmpl=recipe&hmcu=s_jiachangcai&hmkw=jitang&hmci=list" target="_blank">鸡汤</a>
</div>
</div>

 
<div class="mt20" id="smnbk"></div>

<div id='div-gpt-ad-1508681717585-4' style='height:510px; width:300px;margin-top:20px' class="keyshow">
<script>
googletag.cmd.push(function() { googletag.display('div-gpt-ad-1508681717585-4'); });
</script>
</div>

	
	</div>
	<!-- 右侧end -->

		</div><!-- 主框架 -->

	</div><!-- 顶层end -->

  <%@ include file="footer3.jsp" %>

<!-- 引用全站js -->
<script type="text/javascript" src="//static.meishichina.com/v6/js/lib/all3.js?v1=2018-04-27"></script>
<script type="text/javascript" src="//static.meishichina.com/v6/js/lib/get_num.js"></script>
<script type="text/javascript" src="//static.meishichina.com/v6/js/app/newrecipe/recipe_navlist.js?v1=2"></script>
<script type="text/javascript">	
msc.goTop.init();
msc.user.init();
$("img.imgLoad").imgLoad();
//搜索
$("#search").click(function(){var q=$("#q").val().replace(/\s+/g,"").replace("　","");window.location.href='https://home.meishichina.com/search/'+(q==""?'':q+'/')});$("#q").keydown(function(e){if(e.keyCode==13)$("#search").click()});
</script>
	<script type="text/javascript" src="//static.meishichina.com/v6/js/lib/msc-tools-date.js"></script>
	<script type="text/javascript" src="//static.meishichina.com/v6/js/lib/msc-ui-lookImg.js?v1=2018-05-30"></script>
	<script type="text/javascript" src="//static.meishichina.com/v6/js/lib/msc-ui-smilies.js"></script>
	<script type="text/javascript" src="//static.meishichina.com/v6/js/lib/msc-tools-comment.js?v1=20180425"></script>
	<script type="text/javascript" src="//static.meishichina.com/v6/js/lib/msc-ui-select.js"></script>
	<script type="text/javascript" id="bdshare_js" data="type=tools&amp;uid=11097" ></script>
	<script type="text/javascript" id="bdshell_js"></script>
	<script type="text/javascript" src="//static.meishichina.com/v6/js/app/newrecipe/recipe_action_one.js?v1=2018-06-084"></script>
	<script>
$("li.top_bar_more").hoverDelay(function(){$("li.top_bar_more div").show()},function(){$("li.top_bar_more div").hide()},200,200);var _hmt=_hmt||[];(function(){var hm=document.createElement("script");hm.src="//hm.baidu.com/hm.js?fb9cd9dcdda23cee0c7357db9be24acb";var s=document.getElementsByTagName("script")[0];s.parentNode.insertBefore(hm,s)})();
(function(){var bp=document.createElement("script");var curProtocol=window.location.protocol.split(":")[0];if(curProtocol==="https"){bp.src="https://zz.bdstatic.com/linksubmit/push.js"}else{bp.src="http://push.zhanzhang.baidu.com/push.js"}var s=document.getElementsByTagName("script")[0];s.parentNode.insertBefore(bp,s)})();
</script> </body>
	</html>

