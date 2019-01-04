<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

    <%@include file="/frame/mpheader.jsp"%>
     <!-- include summernote css/js-->
   <link href="/plugin/dist/summernote.css" rel="stylesheet">
    
    <section id="services" class="service-item">
    
    <!-- - 여기서 작업 -->
    <!-- 작성하기 누르면 확인창 alert 만들어 봄 -->
   
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
         <div class="sdb_holder">
            <!-- 왼쪽 사이드바 바로밑 내용 
            <h6>Lorem ipsum dolor</h6>
            <address>
               Full Name<br> Address Line 1<br> Address Line 2<br>
               Town/City<br> Postcode/Zip<br> <br> Tel: xxxx xxxx
               xxxxxx<br> Email: <a href="#">contact@domain.com</a>
            </address>-->
         </div>
         <div class="sdb_holder">
            <!-- 왼쪽 사이드바 바로밑밑 내용 -->


         </div>
         <!-- ################################################################################################ -->
      </div>
      <!-- ################################################################################################ -->
      <div class="content three_quarter">
         <!-- 메인 내용################################################## -->

         <h1 style="font-family: Nanum Gothic; font-size: 2.5em; font-weight: bold">1:1문의 내역</h1>
      
         
            <section id="contact-form">
               
                     <div class="row">

                        <div class="block">
                           <form name="f" method="post" enctype="multipart/form-data">

                              <div class="form-group">
                                 <br>
                                 <hr style="border-top: 2px solid #bbb; border-bottom: 1px solid #fff;">
                           
                                       <!--------------------------------------------------------------게시판 본문 ------------------------------------------------------------------------------------->
         
               
                                    <!-- Title -->
                     
                                    <div name="title">
                                       <h5>가수 전환을 하고 싶은데 어떻게 하나요??</h3>
                                    </div>
                                    <hr>
                                    <!-- Author & date -->
                                    <div id="container">
                                       <div style="float:left">
                                          by <a href="#">작성자 이름</a>
                                       </div>
                                       <div style="float: right">
                                       January 1, 2018 at 12:00 PM
                                       </div>
                                    </div>
                                    <hr>
                                    <!-- Post Content -->
                                    <p>저는 부평 문화의 거리에서 버스킹을 하는 고등학생입니다. 저도 인디야 사이트에 제 공연을 올리고 싶은데 어떻게 해야 할 수 있나요??</p>
                                    <hr>
                              </div>
                              <br> <br>
                              <hr>
                     </div>
                           <form>
               <!-- --관리자 답변 -->
                            <div class="form-group">
                                       <label for="formGroupExampleInput2">답변하기</label>
                                       <textarea name="content" id="content" class="summernote"></textarea>
                                   </div>

                           <div align="right">
                              <button type="submit" class="btn btn-outline-primary" onclick="javascript:conAlert();">작성하기</button>
                              <button type="submit" class="btn btn-outline-primary">목록</button>
                              
                              
                           </div>
                        </form>

                     </div>
                     
            </section>


         </div>
         <div id="comments" f="center">
         <div class="pagination"></div>
         

         <!-- ################################################################################################ -->
         <!-- / main body -->
         <div class="clear"></div>

      </main>

    </section><!--/#services--> 
   <%@include file="/frame/mpfooter.jsp"%>    
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
     <script src="/layout/scripts/jquery.min.js"></script>
   <script src="/layout/scripts/jquery.backtotop.js"></script>
   <script src="/layout/scripts/jquery.mobilemenu.js"></script>
   <script src="/layout/scripts/jquery.flexslider-min.js"></script>
   <!-- summer note korean language pack -->
   
   <script src="/plugin/dist/summernote.js"></script>
<script src="/plugin/dist/lang/summernote-ko-KR.js"></script>
    <script type="text/javascript">
  $(function() {
    $('.summernote').summernote({
      height: 300,          // 기본 높이값
      minHeight: null,      // 최소 높이값(null은 제한 없음)
      maxHeight: null,      // 최대 높이값(null은 제한 없음)
      focus: true,          // 페이지가 열릴때 포커스를 지정함
      lang: 'ko-KR'         // 한국어 지정(기본값은 en-US)
    });
  });
</script>
</body>
</html>