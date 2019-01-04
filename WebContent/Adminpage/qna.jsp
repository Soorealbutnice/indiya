<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <%@include file="/frame/mpheader.jsp"%>
    <section id="services" class="service-item">
    <script>
function moveWrite(){
   document.getElementById("act").value = "mvwrite";
   document.getElementById("pg").value = "1";
   document.getElementById("key").value = "";
   document.getElementById("word").value = "";
   
   document.commonform.action = "${root}/qna";
   document.commonform.submit();
}

function listArticle(pg) {
   document.getElementById("act").value = "listarticle";
   document.getElementById("pg").value = pg;
   document.getElementById("key").value = "${key}";
   document.getElementById("word").value = "${word}";
   
   document.commonform.action = "${root}/qna";
   document.commonform.submit();
}

function totalArticle() {
   document.getElementById("act").value = "listarticle";
   document.getElementById("pg").value = '1';
   document.getElementById("key").value = "";
   document.getElementById("word").value = "";
   
   document.commonform.action = "${root}/qna";
   document.commonform.submit();
}

function goCommunitySearch() {
   document.getElementById("act").value = "listarticle";
   document.getElementById("pg").value = "1";
   document.getElementById("key").value = document.getElementById("skey").value;
   document.getElementById("word").value = document.getElementById("sword").value;

   document.commonform.action = "${root}/qna";
   document.commonform.submit();
}

function goMyList(userid) {
   document.getElementById("act").value = "listarticle";
   document.getElementById("pg").value = "1";
   document.getElementById("key").value = "member_id";
   document.getElementById("word").value = qna;
   
   document.commonform.action = "${root}/community";
   document.commonform.submit();
}

function viewArticle(no) {
   document.getElementById("act").value = "viewarticle";
   document.getElementById("pg").value = "${pg}";
   document.getElementById("key").value = "${key}";
   document.getElementById("word").value = "${word}";
   document.getElementById("no").value = no;

   document.commonform.action = "${root}/qna";
   document.commonform.submit();
}

function getCommentCount(){
   
   document.location.href= "${root}/community?act=getcommentcount";
}

</script>
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
      <!-- ################################################################################################ -->
      <div class="content three_quarter">
         <!-- 메인 내용################################################## -->

         <h1 style="font-family:Nanum Gothic; font-size:2.5em; font-weight: bold" >1:1문의 내역</h1>
         <hr>
         
         <div class="scrollable">
         
            <table class=" table table-hover">
               <thead>
                  <tr>
                     <!-- 표의 제목 -->
                     <th>no</th>
                     <th>제목</th>
                     <th width="200">작성자</th>
                     <th width="200">작성일</th>
                     
                     
                     
                  </tr>
               </thead>
               <tbody>
                  <c:forEach var="article" items="${list}">
                        <tr>
                           <td style="word-break: break-all;">${article.no}</td>
                           <td style="text-align:left"><a href="javascript:viewArticle('${article.no}');">${article.title}</a></td>
                           <td>${article.member_id}</td>
                           <td>${article.write_date}</td>
                        </tr>
                     </c:forEach>
               </tbody>
            </table>
         </div>
         <!----------------- 페이징 -------------------------------------------->

                  <nav class="pagination">
                 <ul>
                   <li><a href="#">&laquo;</a></li>
                   <li><a href="#">1</a></li>
                   <li><a href="#">2</a></li>
                   <li class="current"><a href="#">3</a></li>
                   <li><a href="#">4</a></li>
                   <li><a href="#">5</a></li>
                   <li><a href="#"> &raquo;</a></li>
                 </ul>
               </nav>
            </div>
         <!-- ################################################################################################ -->
   

      <!-- / main body -->
      <div class="clear"></div>
      </main>

    </section><!--/#services-->    
    <%@include file="/frame/mpfooter.jsp"%>