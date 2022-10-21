<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>admin</title>
</head>
<body>
<h2>admin</h2>
<a href="/member/logout">logout</a>

<sec:authorize access="isAnonymous()">
   로그인
   회원가입
</sec:authorize>
<sec:authorize access="isAuthenticated()">
   로그아웃
   회원정보보기
</sec:authorize>

<sec:authorize access="hasRole('ROLE_ADMIN')">
  관리자 페이지
</sec:authorize>

<p>principal : <sec:authentication property="principal"/> </p>
</body>
</html>