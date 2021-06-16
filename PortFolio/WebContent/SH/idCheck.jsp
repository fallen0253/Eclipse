<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="mMgr" class="com.portfolio.dao.MemberDAO"/>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<%
	request.setCharacterEncoding("utf-8");
	String checkid = request.getParameter("id");
	boolean result = mMgr.checkId(checkid);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>ID 중복체크</title>
<link href="${contextPath}/css/style.css" rel="stylesheet" type="text/css">
</head>
<body bgcolor="#FFFFCC">
	<div align="center">
		<br/><b><%=checkid %></b>
		<%if(result){
			out.println("는 이미 존재하는 ID입니다.");
		}else{
			out.println("는 사용 가능 합니다.");
		}
		%>
		<a href="#" onClick="self.close()">닫기</a>
		
	</div>
</body>
</html>