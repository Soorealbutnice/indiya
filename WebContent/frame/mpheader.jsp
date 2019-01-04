<%@page import="com.indiya.musician.model.MusicianDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8" import="com.indiya.member.model.MemberDto, javax.servlet.http.HttpSession"%>
<%@include file = "/frame/public.jsp"%>

<!DOCTYPE html>
<html>
<link href="${root}/layout/styles/layout.css" rel="stylesheet" type="text/css" media="all">  
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<div class="bgded overlay" style="background-image:url(${root}/images/demo/backgrounds/maintitle.png);"> 

  <div class="wrapper row1"> 
    <header id="header" class="hoc clear"> 
 
      <div id="logo" class="fl_left">
         <h1 class="heading"><a href="${root}/Mainpage/main.jsp">INDIYA</a></h1>
      </div>      
      
      <nav id="mainav" class="fl_right">
        <ul class="clear">
          <!-- li><a href="${root}/Mypage/mypage.jsp">mypage</a></li-->
          <!-- li><a href="${root}/review?act=reviewlist">stage</a></li-->
          <li><a href="${root}/Mainpage/fundinglist_n_u.jsp">funding</a></li>
          <li><a href="${root}/jam?act=mvJamList">JAM</a></li>
          <li><a href="${root}/community?act=listarticle&pg=1&key=&word=">community</a>
          <li><a href="${root}/review?act=reviewlist">Review</a></li>         
          <li><a href="${root}/Mainpage/QNA.jsp">Q&A</a></li>
          <c:if test="${userInfo.id == null }">
		  	<li><a href="${root}/Mainpage/loginpage.jsp">LOGIN</a></li>
		  </c:if>
          <c:if test="${userInfo.id != null }">
		  	<li><a href="${root}/Mypage/mypage.jsp">${userInfo.id }</a></li>
		  	<c:if test="${userInfo.musician_flag == 'Y' }">
		  		<li><a href="${root}/musician?act=musician&id=${userInfo.id}">MyMusician</a></li>
		  		<li><a href="${root}/musician?act=mvMusicianBasic&id=${userInfo.id}">Musician Admin</a></li>
		  	</c:if>
		  	<li><a href="${root}/user?act=logout">LOGOUT</a></li>
		  </c:if>		  
        </ul>
      </nav>

    </header>
  </div>
  </div>