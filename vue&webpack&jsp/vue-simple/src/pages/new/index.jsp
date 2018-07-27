<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../common/taglibs.jsp"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>惠民汇信</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<%@ include file="../common/csslibs.jsp"%>
</head>
<script>
(function(doc, win) {
    var docEl = doc.documentElement,
        resizeEvt = 'orientationchange' in window ? 'orientationchange' : 'resize',
        recalc = function() {
            var clientWidth = docEl.clientWidth;
            if (!clientWidth) return;
            docEl.style.fontSize = 100 * (clientWidth / 750) + 'px';
        };

    if (!doc.addEventListener) return;
    win.addEventListener(resizeEvt, recalc, false);
    doc.addEventListener('DOMContentLoaded', recalc, false);
})(document, window);
</script>

<style type="text/css">
.indexwhite {
	background-color: #fff;
}

.edubox {
	/*     margin-top: 0.44rem; */
	text-align: center;
}

.edubox span {
	color: #000;
	font-size: 0.3rem;
}

.edubox span img {
	width: 0.35rem;
	height: 0.34rem;
}

#canvas {
	display: block;
	margin: 0 auto;
	padding-right: 0.2rem;
}

.canvasBox {
	position: relative;
	zoom: 0.5;
}

.hzimg {
	width: 1.4rem;
	height: 0.4rem;
	position: absolute;
	top: 30%;
	bottom: 0;
	left: 0;
	right: 0;
	margin: auto;
	padding-left: 0.3rem;
}

.hzimg img {
	width: 0.3rem;
	height: 0.36rem;
}

.indexwhite {
	position: relative;
	padding-bottom: 1rem;
	width: 100%;
}

.scorebox {
	width: 3.9rem;
	height: 0.96rem;
	border-radius: 0.48rem;
	background-color: #f25b4e;
	text-align: center;
	line-height: 0.96rem;
	color: #fff;
	text-decoration: underline;
	position: absolute;
	bottom: -0.48rem;
	left: 0;
	right: 0;
	margin: auto;
}

.creditMan {
	position: fixed;
	bottom: 0rem;
	left: 0;
	width: 100%;
	height: 0.96rem;
	background-color: #ffffff;
	z-index: 20;
}

.creditMan p {
	width: 49%;
	height: 0.6rem;
	display: inline-block;
	color: #666;
	text-align: center;
	line-height: 0.6rem;
	font-size: 0.32rem;
	margin: 0.18rem 0;
}

.creditMan p:first-child {
	border-right: 1px solid #ccc;
}

/*.creditMan p:last-child {
    background-image: url('img/XYSH.png');
    background-size: 0.4rem 0.34rem;
    background-repeat: no-repeat;
    background-position-x: 20%;
    background-position-y: 24%;
} */
.layui-layer-hui {
	min-width: 100px;
	background-color: #000;
	filter: alpha(opacity = 60);
	color: #000;
	border-radius: 0.20rem;
	background-color: #fff;
	border: none;
}

.fendetail {
	width: 4.5rem;
	margin: 0.5rem auto 0;
}

.fendetail div img {
	width: 0.35rem;
	height: 0.35rem;
}

.fendetail div span {
	font-size: 0.24rem;
	text-decoration: underline;
}

.schoolrun {
	margin: 1rem auto;
	text-align: center;
	height: 18%;
}
/* .schoolrun .swiper-slide{
	width:280px!important;
} */
/* .schoolrun img{
	width: 6rem;
	height: 2.10rem;
} */
.layui-layer .layui-layer-title {
	padding: 0;
	text-align: center;
	font-weight: bold;
	height: 42px;
	line-height: 42px;
	border-bottom: 0;
	font-size: 14px;
	color: #333;
	overflow: hidden;
	background-color: #ffffff;
	/* border-radius: 2px 2px 0 0; */
}

.layui-layer .layui-layer-content {
	padding: 0.1rem 0.28rem;
	height:107px;
}

.layui-layer {
	width: 5.5rem!important;
    top: 175px!important;
    left: 50px!important;
	border-radius: 0.2rem!important;
}

.layui-layer .layui-layer-title {
	padding: 0 0.4rem;
	text-align: center;
	background-color: rgba(255, 255, 255, 0);
	font-size: 0.33rem;
	border-bottom: 1px solid #f7f7f7;
	border-radius: 0.2rem;
}

.layui-layer .layui-layer-btn .layui-layer-btn0 {
	color: #f25b4e;
	border: 1px solid #f25b4e;
	width: 1.6rem;
    height: 0.7rem;
    line-height: 0.66rem;
	border-radius: 0.46rem;
}

.layui-layer-btn {
	border-radius: 0.2rem;
	margin-top: 0.2rem;
}

.layui-layer-iframe .layui-layer-btn, .layui-layer-page .layui-layer-btn
	{
	padding-top: 0 !important;
}

.layui-layer .layui-layer-btn a {
	height: 28px;
	line-height: 28px;
	border: 0;
	background-color: transparent;
	color: #333;
	border-radius: 0px;
	font-weight: 400;
	cursor: pointer;
}

.swiper-slide {
	padding: 0 0.5rem;
}

.swiper-slide a {
	width: 100%;
	height: 100%;
	display: block;
}

.gb_ban_sty {
	width: 100%;
	margin: 0.6rem auto 1.2rem;
}

.gb_ban_sty ul li {
	padding: 0.2rem 0.4rem;
}

.gb_ban_sty ul li img {
	width: 100%;
	height: auto;
}
</style>

<body>
	<div class="indexwhite">
		<p style="padding: 0.14rem; font-size: 0.28rem; color: #000;">信用杭州</p>
		<div class="edubox">
			<span>市民卡·惠信分 <img src="${ctx}/img/index_about.png"
				onclick="whathxf()"></span>
		</div>
		<div class="canvasBox">
			<canvas id="canvas" width="560" height="400"
				data-score='${score==undefined?"0":score}'></canvas>
			<div class="hzimg">
				<c:choose>
					<c:when test="${dt_flag == 1}">
						<img src="${ctx}/img/24Y.png">
					</c:when>
					<c:when test="${dt_flag == 0}">
						<img src="${ctx}/img/24N.png">
					</c:when>
				</c:choose>
				<c:choose>
					<c:when test="${ax_flag == 1}">
						<img src="${ctx}/img/24Y.png">
					</c:when>
					<c:when test="${ax_flag == 0}">
						<img src="${ctx}/img/24N.png">
					</c:when>
				</c:choose>
				<c:choose>
					<c:when test="${wt_flag == 1}">
						<img src="${ctx}/img/24Y.png">
					</c:when>
					<c:when test="${wt_flag == 0}">
						<img src="${ctx}/img/24N.png">
					</c:when>
				</c:choose>
			</div>
		</div>
		<%-- <div class="fendetail fg">
		<div class="fendetail-1 fl">
			<img src="${ctx}/img/index_detail.png">
			<span onclick= "score_detail()">分详情</span>
		</div>
		<div class="fendetail-2 fr">
			<img src="${ctx}/img/index_up.png">
			<span onclick="score_qwe()">分提升</span>
		</div>
		</div> --%>
		<div class="scorebox" onclick="gosunnum()">马上晒分</div>
	</div>

	<div class="gb_ban_sty">
		<ul>
			<li onclick="personcre()"><img src="${ctx}/images/gb_ban_0.png"></li>
			<li onclick="xyhz()"><img src="${ctx}/images/gb_ban_8.png"></li>
			<li onclick="zlbd()"><img src="${ctx}/images/gb_ban_6.png"></li>
			<li onclick="hwbg()"><img src="${ctx}/images/gb_ban_9.png"></li>
			<li onclick="jckbg()"><img src="${ctx}/images/gb_ban_10.png"></li>
			<li onclick="szcs()"><img src="${ctx}/images/gb_ban_7.png"></li>
			<li onclick="qyurl()"><img src="${ctx}/images/gb_ban_1.png"></li>
			<li onclick="xyurl()"><img src="${ctx}/images/gb_ban_2.png"></li>
			<li onclick="goschool()"><img src="${ctx}/images/gb_ban_3.png"></li>
			<li onclick="score_qwe()"><img src="${ctx}/images/gb_ban_4.png"></li>	
		</ul>
	</div>
	<div class="creditMan">
		<p onclick="xygl()">信用管理</p>
		<p onclick="creditlife()">信用服务</p>
	</div>
</body>
<%@ include file="../common/jslibs.jsp"%>
<script type="text/javascript">

//获取token
var token1 = '${token}'; 
//判断token
if (token1){

}else{
  //旧版本
  var getDataFromApp = function(data){
      //data
      if(data == undefined || data == ''){
          document.location="hxfAction_nologin";
      }else{
          document.location="hxfAction_loading?token="+encodeURIComponent(data);
      }
  };
}

window.onload = function() {
  var canvas = document.getElementById('canvas'),
   ctx = canvas.getContext('2d'),
   cWidth = canvas.width,
   cHeight = canvas.height,
   score = canvas.attributes['data-score'].value,
   stage = ['较差', '中等', '良好', '优秀', '极好'],
   radius = 260,
   deg0 = Math.PI / 9,
   deg1 = Math.PI *  5.5/ 45;
  
  if(score < 0 || score > 1000) {
   alert('信用分数区间：0~1000');
  } else {
   var dot = new Dot(),
   dotSpeed = 0.03,
   textSpeed = Math.round(dotSpeed * 100 / deg1),
   angle = 0,
   credit = 0;
  
   (function drawFrame() {
  
   ctx.save();
   ctx.clearRect(0, 0, cWidth, cHeight);
   ctx.translate(cWidth / 2, cHeight / 2);
   ctx.rotate(8 * deg0);
  
   dot.x = radius * Math.cos(angle) + 20;
   dot.y = radius * Math.sin(angle) - 100;
  
   var aim = score * deg1 / 100;
   if(angle < aim) {
    angle += dotSpeed;
   }
   dot.draw(ctx);
  
   if(credit < score - textSpeed) {
    credit += textSpeed;
   } else if(credit >= score - textSpeed && credit < score) {
    credit += 1;
   }
   text(credit);
  
   ctx.save();
   ctx.beginPath();
   ctx.lineWidth = 3;
   ctx.strokeStyle = 'rgba(242, 91, 78, 1)';
   ctx.arc(20, -100, radius, 0.5 * deg0 , angle, false);
   ctx.stroke();
   ctx.restore();
  
   window.requestAnimationFrame(drawFrame);
  
  
   ctx.save(); //信用阶段及评估时间文字
   ctx.rotate(10 * deg0);
   ctx.fillStyle = '#000000';
   ctx.font = '48px Microsoft yahei';
   ctx.textAlign = 'center';

   if(score < 500) {
    ctx.fillText('信用待完善', 20, 150);
   } else if(score < 550 && score >= 500) {
    ctx.fillText('良好', 20, 150);
   } else if(score < 700 && score >= 550) {
    ctx.fillText('优秀', 20, 150);
   } else if(score < 950 && score >= 700) {
    ctx.fillText('极好', 20, 150);
   }
   ctx.fillStyle = '#000000';
   ctx.font = '20px Microsoft yahei';
   ctx.fillText('评估时间：${nTime}', 20, 190);
   ctx.restore();
  
   // ctx.save(); //最外层轨道
   ctx.beginPath();
   ctx.strokeStyle = 'rgba(201, 195, 195, .5)';
   ctx.lineWidth = 3;
   ctx.arc(20, -100, radius, 0.5 * deg0, 10.5 * deg0, false);
   ctx.stroke();
   ctx.restore();
  
   })();
  }
  
  function Dot() {
   this.x = 0;
   this.y = 0;
   this.draw = function(ctx) {
   ctx.save();
   ctx.beginPath();
   ctx.fillStyle = 'rgba(242, 91, 78, 1)';
   ctx.arc(this.x, this.y, 5, 0, Math.PI * 2, false);
   ctx.fill();
   ctx.restore();
   };
  }
  
  function text(process) {
   ctx.save();
   ctx.rotate(10 * deg0);
   ctx.fillStyle = '#000';
   ctx.font = '110px Microsoft yahei';
   ctx.textAlign = 'center';
   ctx.textBaseLine = 'top';
   ctx.fillText(process, 20,0);
   ctx.restore();
  }
};

document.body.addEventListener('touchstart', function () {});  
var swiper = new Swiper('.swiper-container', {
   /*  pagination: '.swiper-pagination', */
    /* autoplayDisableOnInteraction : false,
    autoplay : 2000, */
    spaceBetween: 20,
    paginationClickable: true,
    loop:true
});

function construction(){
	layer.msg('更多信用产品，下期奉上',{time:2000,offset: '8.6rem'});
}
function getScore111(){
	document.location='hxfAction_scoreint';  
}
function creditlife(){
	document.location='hxfAction_creditlife';
}
function xygl(){
	document.location='xyglAction_xygl';
}
function score_qwe(){
	document.location = "scoreIncreaseAction_scoreIncreaseMsg";
}
/* function jckbg(){
	document.location = "http://127.0.0.1:9080/hmqy/view/gld_trade_index";
}
function hwbg(){
	document.location = "http://127.0.0.1:9080/hmqy/view/gld_abroad_index";
} */
function jckbg(){
	document.location = '${jckbgurl}';
}
function hwbg(){
	document.location = '${hwbgurl}';
} 

function score_detail(){
	document.location = "scoreDetailAction_scoreDetail"
}
function gosunnum(){
	document.location = "sfAction_scoreShareMsg"
}
function goschool(){
	document.location = "smkapp://campusfitness"
}
function whathxf(){
	document.location = "scoreDetailAction_scoreDetail"	
}
function personcre(){
	document.location = 'https://hmls.96225.com/product/list'
}
function qyurl(){
	document.location = '${qyurl}'
}
function xyurl(){
	document.location = '${xyurl}'
}
function zlbd(){
	document.location = '${zlbdurl}'
}
function szcs(){
	document.location = '${szcsurl}'
}
function xyhz(){
	document.location = 'http://hzcredit.gov.cn/hz-wechat/'
}
if (sessionStorage.pagecount){
	sessionStorage.pagecount=Number(sessionStorage.pagecount) +1;
}else{
	sessionStorage.pagecount=1;
}
if(sessionStorage.pagecount == 1){
	if('${notice_title}'!=''&&'${notice_title}'!=null){
		qxsqalert()
	}
}

function qxsqalert() {
	layer.open({
		type : 1,
		title : '公告',
		btn : ['关闭' ],
		area : [ '6rem' ],
		btnAlign : 'c',
		closeBtn : 0,
		content : '<strong> ${notice_title}：</strong>'+'${notice_content}'
	})
}

</script>
</html>
