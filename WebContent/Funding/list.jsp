<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@include file="/frame/mpheader.jsp"%>
<%@ include file="/frame/board_common.jsp" %>
<script>
function moveWrite(){
   document.getElementById("act").value = "mvwrite";
   document.getElementById("pg").value = "1";
   document.getElementById("key").value = "";
   document.getElementById("word").value = "";

   /* TEST */
   document.getElementById("userinfo").value = "musician";
   
   document.commonform.action = "${root}/funding";
   document.commonform.submit();
}

function moveRequestList(){
   document.getElementById("act").value = "mvrequestlist";
   document.getElementById("pg").value = "1";
   document.getElementById("key").value = "";
   document.getElementById("word").value = "";
   
   /* TEST */
   document.getElementById("userinfo").value = "admin";
   
   document.commonform.action = "${root}/funding";
   document.commonform.submit();
}
</script>
<body id="top">

<!-- 
Funding Menu Body   Funding Menu Body   Funding Menu Body   Funding Menu Body
Funding Menu Body   Funding Menu Body   Funding Menu Body   Funding Menu Body
Funding Menu Body   Funding Menu Body   Funding Menu Body   Funding Menu Body
-->



<div class="wrapper row3">
  <main class="hoc container clear"> 
    <!-- main body -->
    <!-- ############################################### -->
   <!-- 공지 NOTICE   NOTICE   NOTICE   NOTICE -->
   <div class="alert alert-warning hoc center" role="alert">
   NOTICE 1 RTFM - Read The F Manual<br>
   </div>
   <div class="alert alert-danger hoc center" role="alert">
   NOTICE 2 RTFE - Read The F Error<br>
   </div>
   <!-- 공지 NOTICE   NOTICE   NOTICE   NOTICE -->
   
   <div>
   <!-- id mainav 수정 필요 -->
       <nav id="mainav" class="fl_left">
        <ul class="clear">
           <li><a class="drop" href="#">정렬</a>
            <ul>
              <li class="active"><a href="#">최다 후원순</a></li>
              <li><a href="#">최다 금액순</a></li>
           <li><a href="#">마감 임박순</a></li>
           <li><a href="#">최신순</a></li>
           <li><a href="#">마감 상품 보기</a></li>
            </ul>
          </li>
        <li><a class="drop" href="#">카테고리</a>
            <ul>
              <li class="active"><a href="#">모두</a></li>
              <li><a href="#">음반</a></li>
           <li><a href="#">공연</a></li>
            </ul>
          </li>
        </ul>
      </nav>
      
            
<!-- 뮤지션, 관리자 로그인 시 전용 버튼 -->
      <nav class="fl_right inline">
<c:if test="${userInfo.musician_flag == 'Y'}">
         <a href="javascript:moveWrite();"><button class="btn">펀딩신청하기</button></a>
</c:if>
<c:if test="${userInfo.id == 'admin'}">
         <a href="javascript:moveRequestList();"><button class="btn">펀딩신청목록</button></a>
</c:if>

      </nav>
<!-- 뮤지션, 관리자 로그인 시 전용 버튼 -->      
   
   </div>
    <div class="content"> 
      <!-- ############################################### -->
      <div id="gallery">
        <figure>
      <!-- header text 정렬 필요 -->
          <header class="heading center">IndiYa Funding</header>
        
        <ul class="nospace clear">
<!-- 펀딩 리스트 시작 -->
            
   <c:forEach var="funding" items="${list}" varStatus="i" >
      <c:choose>
         <c:when test="${i.index % 4 == 0}">
         <li class="one_quarter first">
         </c:when>
         <c:when test="${i.index % 4 != 0}">
         <li class="one_quarter">
         </c:when>
      </c:choose>
         <div class="thumbnail">
            <a href="${root}/funding?act=viewfunding&seq=${funding.no}&pg=1"><img src="../images/demo/gallery/01.png" alt="">
            <div class="caption">
               <h6>${funding.title}</h6>
               <p>${funding.musician_id}</p>
               <!-- <p>카테고리</p> -->
               <div class="progress">
                  <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: <fmt:formatNumber value="${funding.amount / funding.goal}" type="percent"/>;">
                  <fmt:formatNumber value="${funding.amount / funding.goal}" type="percent"/>
                  </div>
               </div>
               <div class="inline">
                  <div class="">7일 남음</div>
                  <div class="fl_right">${funding.amount}</div>
               </div>
            
            </div>
            </a>
         </div>
         </li>

   </c:forEach>
<!-- 펀딩 리스트 끝 -->
          </ul>
          <!-- <figcaption>Gallery Description Goes Here</figcaption> -->
        </figure>
      </div>
      <!-- ############################################### -->
      <!-- ############################################### -->
      <nav class="pagination">
        <ul>
          <li><a href="#">&laquo; Previous</a></li>
          <li><a href="#">1</a></li>
          <li><a href="#">2</a></li>
          <li><strong>&hellip;</strong></li>
          <li><a href="#">6</a></li>
          <li class="current"><strong>7</strong></li>
          <li><a href="#">8</a></li>
          <li><a href="#">9</a></li>
          <li><strong>&hellip;</strong></li>
          <li><a href="#">14</a></li>
          <li><a href="#">15</a></li>
          <li><a href="#">Next &raquo;</a></li>
        </ul>
      </nav>
      <!-- ############################################### -->
    </div>
    <!-- ############################################### -->
    <!-- / main body -->
    <div class="clear"></div>
  </main>
</div>



<!-- 
Funding Menu Body   Funding Menu Body   Funding Menu Body   Funding Menu Body
Funding Menu Body   Funding Menu Body   Funding Menu Body   Funding Menu Body
Funding Menu Body   Funding Menu Body   Funding Menu Body   Funding Menu Body
-->














<!-- ############################################### -->
<!-- ############################################### -->
<!-- ############################################### -->

<!-- ############################################### -->
<!-- ############################################### -->
<!-- ############################################### -->
<a id="backtotop" href="#top"><i class="fa fa-chevron-up"></i></a>

<!-- JAVASCRIPTS -->
<%@include file="/frame/mpfooter.jsp"%>