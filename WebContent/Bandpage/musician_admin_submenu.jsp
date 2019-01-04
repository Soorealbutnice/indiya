<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<h3>뮤지션 설정</h3>
<nav class="sdb_holder">
<!-- 왼쪽 메뉴 -->
	<ul>
		<li><a href="/musician?act=mvMusicianBasic&id=${userInfo.id}">기본 정보 </a></li>
		<li><a href="/musician?act=mvMusicianMember&id=${userInfo.id}">뮤지션 맴버 관리 </a></li>
		<li><a href="javascript:alert('완료했겠지 ');">공연일정 관리</a></li>
		<li><a href="/musician?act=mvMusicianPicList&id=${userInfo.id}">공연사진 관리</a></li>
		<li><a href="/musician?act=mvMusicianMovieList&id=${userInfo.id}">공연영상 관리</a></li>
		<li></li>
	</ul>
</nav>