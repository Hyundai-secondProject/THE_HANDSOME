<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>Member</h2>

<sec:authorize access="hasRole('ROLE_ADMIN')">
  관리자 페이지
</sec:authorize>
	<p>
		principal :
		<sec:authentication property="principal.Username" />
		<sec:authentication property="principal" />
	</p>
</body>
</html>