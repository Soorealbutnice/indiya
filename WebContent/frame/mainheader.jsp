<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="com.indiya.member.model.MemberDto"%>
<%@include file = "/frame/public.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title>INDIYA</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="layout/styles/layout.css" rel="stylesheet" type="text/css" media="all">
</head>
<body id="top">
<!-- Top Background Image Wrapper -->
<div class="bgded overlay" style="background-image:url('${root}/images/demo/backgrounds/01.png');"> 

  <div class="wrapper row1">
    <header id="header" class="hoc clear"> 

      <div id="logo" class="fl_left">
        <h1><a href="main.jsp">Geodarn</a></h1>
      </div>
      <nav id="mainav" class="fl_right">
        <ul class="clear">
          
          <li><a href="${root}/community?act=listarticle&pg=1&key=&word=">community</a>
          <li><a href="${root}/Review/ReviewViewMain.jsp">Review</a></li>
          <li><a href="${root}/Mainpage/fundinglist_n_u.jsp">funding</a></li>
          <li><a href="${root}/Mainpage/QNA.jsp">Q&A</a></li>
              <%
              MemberDto memberDto = (MemberDto) session.getAttribute("userInfo");
                System.out.println("memberDto : "+memberDto);
              if(memberDto == null) {    
              %>
              <li><a href="${root}/Mainpage/loginpage.jsp">LOGIN</a></li>
              <%
              } else {
              %>
              <li><a href="${root}/Mainpage/loginpage.jsp">LOGOUT</a></li>
              <%
              }
              %>
              <li><a href="${root}/community?act=listarticlemain&pg=1&key=&word=">LOGIN</a></li>
        </ul>
      </nav>

    </header>
  </div>

  <!-- 여기서부터 배너 -->

  <div id="pageintro" class="hoc clear"> 
    <div class="flexslider basicslider">
      <ul class="slides">
        <li>
          <article>
            <p>Ullamcorper</p>
            <h3 class="heading">Maecenas nulla tellus</h3>
            <p>Vitae lobortis id ut mi in molestie in</p>
            <footer><a class="btn" href="#">Venenatis curabitur</a></footer>
          </article>
        </li>
        <li>
          <article>
            <p>Scelerisque</p>
            <h3 class="heading">Dolor rhoncus nullam</h3>
            <p>Augue non id quam sit amet urna lobortis</p>
            <footer><a class="btn inverse" href="#">Interdum lectus</a></footer>
          </article>
        </li>
        <li>
          <article>
            <p>Vestibulum</p>
            <h3 class="heading">Justo erat venenatis</h3>
            <p>Tempor sit amet ac nibh nullam mattis</p>
            <footer><a class="btn" href="#">Bibendum magna</a></footer>
          </article>
        </li>
      </ul>
    </div>
  </div>
</div>