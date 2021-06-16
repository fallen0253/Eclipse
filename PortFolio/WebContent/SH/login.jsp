<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="ko">
<head>
<title> 로그인 | 투어리스트인투어 </title>
<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<link rel="stylesheet" href="${contextPath}/css/common.css">
<script src="${contextPath}/js/jquery-1.11.3.min.js"></script>
<script src="${contextPath}/js/common.js"></script>  
<script src="${contextPath}/js/jquery.smooth-scroll.min.js"></script> 
<!--[if lte IE 9]>
    <script src="js/html5shiv.js"></script>
	<script src="js/placeholders.min.js"></script>
<![endif]-->
<script type="text/javascript">
// 현재 페이지에만 적용
$(document).ready(function(){
	$('.switch').click(function(){			// 로그인 유지 작동
		$(this).toggleClass("switchOn");
	});
	$('.quick_area').hide();				// 우측 빠른 실행 메뉴 숨김 
});
</script>
</head>

<body>
<ul class="skipnavi">
    <li><a href="#container">본문내용</a></li>
</ul>
<!-- wrap -->
<div id="wrap" class="s_point">
	
	<div id="container" id="layout0">
		
		<!-- bodytext_area -->
		<div class="bodytext_area box_inner">
			<!-- login-wrap -->
			
			 <div class="login_wrap">
				<h1 class="loginTit"><a href="#"><img src="${contextPath}/img/tit_login.png" alt="TOURIST IN TOUR" /></a></h1>
				
				  <ul class="login_list">
					<!-- <li class="kakao"> <a href="javascript:;"><strong>카카오톡</strong>  로그인</a></li>
					<li class="naver"><a href="javascript:;"><strong>네이버</strong> 로그인</a></li>
					<li class="facebook"><a href="javascript:;"><strong>페이스북</strong> 로그인</a></li>
					<li class="cellphone"><a href="javascript:;"><strong>이메일 주소</strong> 로그인</a></li> -->
					<form name="frm" method="post" action="${contextPath}/portpolio.do">
					<li> 아이디 &nbsp;&nbsp;&nbsp;<input type="text" name="id" class="id" /></li>
					<li>비밀번호 <input type="password" name="pwd" class="pwd"/></li>
					</form>
				</ul>
				<table border="1" align="center" class="table_list">
					<tr>
				<td colspan="2">
					<input type="submit" value="로그인" onclick="return validation();"/>
					<!-- <input type="submit" value="비밀번호 *변환 " onclick="return changepass();"/> -->
					<input type="reset" value="다시입력"/>
					<input type="button" value="회원가입"
					 onclick="location.href='portfolio.do?command=portfolio_join_form'"/>
					 <input type="button" value="메인으로"
						onclick="location.href='school.do?command=school_main'"/>
				</td>
			</tr>
				</table>  
				 <!-- <div class="btnonoff_line">
					<div class="switch"></div>
					<p>
					    <a href="#" class="btn_onoff" onclick="return false;">로그인 유지</a>
					</p> 
				</div>   -->
        				
			</div>
			<!-- //login-wrap -->

		</div>
		<!-- //bodytext_area -->

	</div>
	<!-- //container -->
	
	<%@ include file="footer.jsp" %>

</div>
<!-- //wrap -->

