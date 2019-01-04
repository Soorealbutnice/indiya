<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/frame/board_common.jsp" %>
<%
String root = request.getContextPath();
%>    


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Funding TEST PAGE</title>
</head>
<body>

<a href="<%=root%>/funding?act=listfunding&userinfo=musician&pg=1">뮤지션</a><br>
<a href="<%=root%>/funding?act=listfunding&userinfo=user&pg=1">회원</a><br>
<a href="<%=root%>/funding?act=listfunding&userinfo=admin&pg=1">관리자</a>


<br>
<br>
<br>
<br>
<a href="<%=root%>/funding/list.jsp?userinfo=musician&pg=1">뮤지션</a><br>
<a href="<%=root%>/funding/list.jsp?userinfo=user&pg=1">회원</a><br>
<a href="<%=root%>/funding/list.jsp?userinfo=admin&pg=1">관리자</a>

</body>
</html>