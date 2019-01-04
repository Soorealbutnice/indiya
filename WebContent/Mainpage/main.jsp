<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>

<%@ include file="/frame/mpheader.jsp"%>
<%@ include file="/frame/board_common.jsp"%>

<script type="text/javascript">
   
   function viewArticle(no) {
      document.getElementById("act").value = "viewarticle";
      document.getElementById("pg").value = "${pg}";
      document.getElementById("key").value = "${key}";
      document.getElementById("word").value = "${word}";
      document.getElementById("no").value = no;

      document.commonform.action = "${root}/community";
      document.commonform.submit();
   }
</script>

<!---!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!로그인 하려고 해놓은 부분!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!-->

<!---!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!로그인 하려고 해놓은 부분!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!-->

<div id="pageintro" class="hoc clear"
   style="background-image: url('/images/demo/backgrounds/01.png');">
   <!-- ################################################################################################ -->
   <div class="flexslider basicslider">
      <ul class="slides">
         <li>
            <article>
               <p>Ullamcorper</p>
               <h3 class="heading">Maecenas nulla tellus</h3>
               <p>Vitae lobortis id ut mi in molestie in</p>
               <footer>
                  <a class="btn" href="#">Venenatis curabitur</a>
               </footer>
            </article>
         </li>
         <li>
            <article>
               <p>Scelerisque</p>
               <h3 class="heading">Dolor rhoncus nullam</h3>
               <p>Augue non id quam sit amet urna lobortis</p>
               <footer>
                  <a class="btn inverse" href="#">Interdum lectus</a>
               </footer>
            </article>
         </li>
         <li>
            <article>
               <p>Vestibulum</p>
               <h3 class="heading">Justo erat venenatis</h3>
               <p>Tempor sit amet ac nibh nullam mattis</p>
               <footer>
                  <a class="btn" href="#">Bibendum magna</a>
               </footer>
            </article>
         </li>
      </ul>
   </div>
   <!-- ################################################################################################ -->
</div>
<!-- ################################################################################################ -->

<!-- End Top Background Image Wrapper -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<div class="wrapper row3">
   <main class="hoc container clear"> <!-- main body --> <!-- ################################################################################################ -->
   <div class="btmspace-20">
      <h3 class="nospace">
         <b>공연</b>
      </h3>
   </div>
   <ul class="nospace group services">
      <li class="one_quarter first active">
         <article class="bgded overlay"
            style="background-image: url('images/demo/gallery/01.png');">
            <div class="txtwrap">
               <br></br> <br></br> <br></br>
               <h6 class="heading">
                  <p style="text-align: right;">버스킹버스킹</p>
               </h6>
               <p style="text-align: right;">홍대 18:00</p>
            </div>
            <footer>
               <a href="#">More &raquo;</a>
            </footer>
         </article>
      </li>
      <li class="one_quarter">
         <article class="bgded overlay"
            style="background-image:url('${root}/images/demo/gallery/01.png');">
            <div class="txtwrap">
               <br></br> <br></br> <br></br>
               <h6 class="heading">
                  <p style="text-align: right;">버스킹버스킹</p>
               </h6>
               <p style="text-align: right;">홍대 18:00</p>
            </div>
            <footer>
               <a href="#">More &raquo;</a>
            </footer>
         </article>
      </li>
      <li class="one_quarter active">
         <article class="bgded overlay"
            style="background-image: url('images/demo/gallery/01.png');">
            <div class="txtwrap">
               <br></br> <br></br> <br></br>
               <h6 class="heading">
                  <p style="text-align: right;">버스킹버스킹</p>
               </h6>
               <p style="text-align: right;">홍대 18:00</p>
            </div>
            <footer>
               <a href="#">More &raquo;</a>
            </footer>
         </article>
      </li>
      <li class="one_quarter">
         <article class="bgded overlay"
            style="background-image: url('images/demo/gallery/01.png');">
            <div class="txtwrap">
               <br></br> <br></br> <br></br>
               <h6 class="heading">
                  <p style="text-align: right;">버스킹버스킹</p>
               </h6>
               <p style="text-align: right;">홍대 18:00</p>
            </div>
            <footer>
               <a href="#">More &raquo;</a>
            </footer>
         </article>
      </li>
   </ul>
   <div class="btmspace-20">
      <h3 class="nospace">
         <b>가수</b>
      </h3>
   </div>
   <ul class="nospace group services">
      <li class="one_quarter first">
         <article class="bgded overlay"
            style="background-image: url('images/demo/gallery/01.png');">
            <div class="txtwrap">
               <br></br> <br></br> <br></br>
               <h6 class="heading">
                  <p style="text-align: right;">버스킹버스킹</p>
               </h6>
               <p style="text-align: right;">홍대 18:00</p>
            </div>
            <footer>
               <a href="#">More &raquo;</a>
            </footer>
         </article>
      </li>
      <li class="one_quarter active">
         <article class="bgded overlay"
            style="background-image: url('images/demo/gallery/01.png');">
            <div class="txtwrap">
               <br></br> <br></br> <br></br>
               <h6 class="heading">
                  <p style="text-align: right;">버스킹버스킹</p>
               </h6>
               <p style="text-align: right;">홍대 18:00</p>
            </div>
            <footer>
               <a href="#">More &raquo;</a>
            </footer>
         </article>
      </li>
      <li class="one_quarter">
         <article class="bgded overlay"
            style="background-image: url('images/demo/gallery/01.png');">
            <div class="txtwrap">
               <br></br> <br></br> <br></br>
               <h6 class="heading">
                  <p style="text-align: right;">버스킹버스킹</p>
               </h6>
               <p style="text-align: right;">홍대 18:00</p>
            </div>
            <footer>
               <a href="#">More &raquo;</a>
            </footer>
         </article>
      </li>
      <li class="one_quarter active">
         <article class="bgded overlay"
            style="background-image: url('images/demo/gallery/01.png');">
            <div class="txtwrap">
               <br></br> <br></br> <br></br>
               <h6 class="heading">
                  <p style="text-align: right;">버스킹버스킹</p>
               </h6>
               <p style="text-align: right;">홍대 18:00</p>
            </div>
            <footer>
               <a href="#">More &raquo;</a>
            </footer>
         </article>
      </li>
   </ul>
   <!-- ################################################################################################ -->
   <!-- / main body -->
   <div class="clear"></div>
   </main>
</div>
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<div class="wrapper row3">
   <section class="hoc container clear">
      <!-- ################################################################################################ -->
      <hr style="border:3px;">
      <div class="group">
         <article class="one_half first">
            <h3>
               Notice
               </h3>
               <br>
               <table class="table table-hover">
               <thead>
                        <tr>
                           <th>글번호</th>
                           <th>제목</th>
                        </tr>
                     </thead>
                  <tbody>
                     <c:forEach var="article" items="${list}">
                        <tr>
                           <td style="word-break: break-all;">${article.no}</td>
                           <td style="text-align: left"><a
                              href="javascript:viewArticle('${article.no}');">${article.title}</a></td>
                        </tr>
                     </c:forEach>
                  </tbody>

               </table>
         </article>
         <div class="one_half">
            <h3>
               HOT ISSUE
               </h3>
               <br>
               <div class="col-sm-12">
                  <table class="table table-hover">
                  <thead>
                        <tr>
                           <th>글번호</th>
                           <th>제목</th>
                           <th>조회수</th>
                        </tr>
                     </thead>
                     <tbody>
                        <c:forEach var="article" items="${hotlist}">
                           <tr>
                              <td style="word-break: break-all;">${article.no}</td>
                              <td style="text-align: left"><a
                                 href="javascript:viewArticle('${article.no}');">${article.title}</a></td>
                              <td>${article.visited}</td>
                                 
                           </tr>
                        </c:forEach>
                     </tbody>

                  </table>
               </div>
         </div>
      </div>
                        <hr>
      
      <!-- ################################################################################################ -->
   </section>
   <div class="btmspace-80 center">
         <h3 class="nospace">INDIYA</h3>
         <p class="nospace">Erat volutpat integer vestibulum purus et
            sagittis rhoncus.</p>
      </div>
</div>
</body>
<%@ include file="/frame/mpfooter.jsp"%>