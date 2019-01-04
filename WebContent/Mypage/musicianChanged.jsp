<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/frame/mpheader.jsp"%>
<body>
    <section id="services" class="service-item">
 <%
         String act = request.getParameter("act");
      String id = request.getParameter("id");
      String pass = request.getParameter("pass");
      String email = (request.getParameter("email1") + "@" + request.getParameter("email2"));
       %>
        <!-- - 여기서 작업 -->
        <main class="hoc container clear"> 
        <!-- main body --> 
        <!-- ################################################################################################ -->
        <div class="sidebar one_quarter first">
            <!-- ################################################################################################ -->
            <h6>Lorem ipsum dolor</h6>
            <nav class="sdb_holder">
                <!-- 왼쪽 메뉴 -->
                <ul>
                     <li><a href="${root}/Mypage/mypagemodify.jsp">정보수정</a></li>
                    <li><a href="${root}/Mypage/mypageschedule.jsp">일정관리</a></li>
                    <li><a href="${root}/Mypage/mypage.jsp">찜목록</a></li>
            
                    <li><a href="${root}/funding/">펀딩목록확인</a></li>
                    <li><a href="${root}/Mypage/musicianchange.jsp">뮤지션 전환</a></li>
                    <li><br/></li>
                    <li><br/></li>
                    <c:if test="${chk == 'SUCC'}">
                    <li><a href="performanceregister.jsp">공연등록</a></li>
                    <li><a href="banner">공연일정관리</a></li>
                    <li><a href="banner">홈피수정</a></li>
                    </c:if>
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
        <!-- ################################################################################################ -->
        <div class="content three_quarter">
            <h1
                style="font-family: Nanum Gothic; font-size: 2.5em; font-weight: bold">뮤지션   전환</h1>
            <hr>
            <div class="container">
                <c:if test="${chk == 'SUCC'}">
                <h3>뮤지션으로 전환이 되었습니다.</h3>
                <p>
                    <a href="${root}/Mainpage/community.jsp">뮤지션 페이지</a>
                </p>
                <p>
                    <a href="${root}/Mainpage/community.jsp">뮤지션 페이지 설정</a>
                </p>
                <p>
                    <a href="${root}/Mainpage/community.jsp">관객으로 전환</a>
                </p>
                </c:if>
                <c:if test="${chk == 'FAIL'}">
                    <h3>뮤지션으로 전환하는 중 실패했습니다.</h3>
                </c:if>
            </div>
        </div>    
        </main>       
        <!-- / main body -->
        <div class="clear"></div>
    </section>            
<%@include file="/frame/mpfooter.jsp"%>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->