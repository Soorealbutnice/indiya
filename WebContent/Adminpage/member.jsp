<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"
   import="java.util.List,com.indiya.musician.model.MusicianDto,java.util.ArrayList"%>
<%@include file="/frame/mpheader.jsp"%>
<%@ include file="/frame/board_common.jsp"%>
<script>
function getMemberList(musician_flag) {
   document.getElementById("act").value = "getmemberlist";
   document.getElementById("pg").value = "${pg}";
   document.getElementById("key").value = "";
   document.getElementById("word").value = musician_flag;
   
   document.commonform.action = "${root}/admin";
   document.commonform.submit();
   
}

function memberDelete(id){
	document.getElementById("act").value = "deletemember";
	document.getElementById("word").value = id;
	
	 document.commonform.action = "${root}/admin";
	 document.commonform.submit();
}

</script>

<section id="services" class="service-item">

   <!-- - 여기서 작업 -->
   <main class="hoc container clear"> <!-- main body --> <!-- ################################################################################################ -->
   <div class="sidebar one_quarter first">
      <!-- ################################################################################################ -->
      <h6>Lorem ipsum dolor</h6>
      <nav class="sdb_holder">
         <!-- 왼쪽 메뉴 -->
         <ul>
            <li><a href="./member.jsp">회원 관리</a></li>
            <li><a href="./coin.jsp">결제 내역</a></li>
            <li><a href="./funding.jsp">펀딩 관리</a></li>
            <li><a href="./survey.jsp">설문 조사</a></li>
            <li><a href="./qna.jsp">문의 내역</a></li>
         </ul>
      </nav>

      <!-- ################################################################################################ -->
   </div>
   <!-- ################################################################################################ -->
   <div class="content three_quarter">
      <!-- 메인 내용################################################## -->

      <h1
         style="font-family: Nanum Gothic; font-size: 2.5em; font-weight: bold">회원
         관리</h1>
      <hr>
      <div class="scrollable">
            <button class="btn btn-outline-primary" onclick="javascript:getMemberList('Y');">가수</button>
            <button class="btn btn-outline-primary" onclick="javascript:getMemberList('N');">일반</button>

            <a class="btn btn-mini" href="#"
               style="float: right; WIDTH: 80pt; HEIGHT: 25pt"><i
               class="icon-search"></i>search</a> <input type="text"
               class="input-small search-query" name ="word" id ="word" style="float: right; WIDTH: 120pt; HEIGHT: 25pt">

         <br>

         <!-- Single button가수 회원버튼-->
         <div>

            <table class="table table-hover">
               <thead>
                  <tr>
                     <th>아이디</th>
                     <th>비밀번호</th>
                     <th>이름</th>
                     <th>성별</th>
                     <th>가입일</th>
                     <th>관리</th>
                  </tr>
               </thead>
               
               <tbody>
               
                  <c:if test="${memberlist.musician_flag_ eq y}">
                     <c:forEach var="memberlist" items="${memberlist}">
                        <tr>
                           <td>${memberlist.id}</td>
                           <td>${memberlist.pass}</td>
                           <td>${memberlist.name}</td>
                           <td>${memberlist.sex}</td>
                           <td>${memberlist.join_date}</td>
                           <td><a href="javascript:memberDelete(${memberlist.id});">삭제</a></td>
                        </tr>
                     </c:forEach>
                  </c:if>
                  <c:if test="${memberlist.musician_flag eq n}">
                     <c:forEach var="singerlist" items="${singerlist}">
                        <tr>
                           <td>${memberlist.id}</td>
                           <td>${memberlist.pass}</td>
                           <td>${memberlist.name}</td>
                           <td>${memberlist.sex}</td>
                           <td>${memberlist.joindate}</td>
                           <td><a href="javascript:memberDelete(${singerlist.id});">삭제</a></td>
                        </tr>
                     </c:forEach>
                  </c:if>
               </tbody>
               
            </table>
         </div>

         </div>
      </div>
      <!-- ################################################################################################ -->


      <!-- ################################################################################################ -->
      <!-- / main body -->
      <div class="clear"></div>
   </main>

</section>
<!--/#services-->
<%@include file="/frame/mpfooter.jsp"%>