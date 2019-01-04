<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/frame/mpheader.jsp"%>   
<link rel="stylesheet" type="text/css" href="/Bandpage/star/starrr.css"> 
<style>
	span.star-prototype,
	span.star-prototype>* {
	  height: 16px;
	  background: url(http://i.imgur.com/YsyS5y8.png) 0 -16px repeat-x;
	  width: 80px;
	  display: inline-block;
	}
	
	span.star-prototype>* {
	  background-position: 0 0;
	  max-width: 80px;
	}
</style>
<body>

<div class="row	">
	<div class="hoc container clear" style="padding-top:50px" >
		<div class="" >
			<div id="intro" class="nospace clear" align="left" style="display:inline;">  
				    <div id="profile" class="one_half first" style="width:350px;height:250px;">
				    	<img src="/music/${musician.pic }" style="width:100%;height:100%;">
				    </div>
			 		<div class="one_half">
				    <h1>${musician.musician_name }</h1> 
				    <div style="margin-left:20px;">
				    	<h4>장르 : ${musician.genre }</h4>
				    	<h4>활동 지역 : ${musician.area }</h4>
						<div>평점 : <span class="star-prototype">${avg }</span> ${avg }</div>
				    </div>
					</div>			    
			</div>
			<div>&nbsp;</div>
			<div id="musician info" class="content"> 
				  <div>${musician.musician_info }</div> 
			</div>
			<hr>
		
			<div id="Member info" style="display:inline;">
				<h3>밴드 멤버</h3> 
			    <ul class="group services" style="padding-top:10px; padding-left:0px; list-style:none;">
			    	<c:forEach var="member" varStatus="status"  items="${members}">	
					  	<li class="one_quarter <c:if test="${status.first }"> first </c:if>" style="margin-bottom: 10px;">
					  		<a href="javascript:alert('${member.member_id }  멤버 상세 정보');">
						    	<img class="fadding-photo" src="/music/${member.member_pic }" style="width:150px;height:120px;margin-bottom: 10px;"> 
						    </a>          
						    <div  style="padding-left:10px;">
						    	<p>포지션 : ${member.position }</p>
						    	<p>이름 : ${member.member_name }</p>
						    </div>
					    </li>
					</c:forEach>
			    </ul>
		    </div>	
			<hr>
			<div>&nbsp;</div>
				
			<div id="Schedule" style="margin-top:20px;">
				<h3>공연일정</h3>
					<table id="table" style="width:100%; height:200px; text_align:center;" >
			          <thead>
			            <tr>
			              <th>날짜</th>
			              <th>시간</th>
			              <th colspan="2">장소</th>
			            </tr>
			          </thead>
			          <tbody>
			            <tr>
			              <td><a href="#">2018.01.01.</a></td>
			              <td>00:00 AM ~ 24:00 PM</td>
			              <td colspan="2">서울시 구로구 구로동 디지털로 34길 43
			              <button name="loc" class="btn btn-default">장소확인</button>
			              </td>
			            </tr>
			            <tr>
			              <td>Value 5</td>
			              <td>Value 6</td>
			              <td colspan="2"><a href="#">Value 8</a></td>
			            </tr>
			            <tr>
			              <td>Value 9</td>
			              <td>Value 10</td>
			              <td colspan="2">Value 3</td>
			            </tr>
						<tr>
							<td><a href="#">Value 5</a></td>
							<td>Value 2</td>
							<td>Value 2</td>
						</tr>
			          </tbody>
			        </table>
			</div>
			<hr>
			<div>&nbsp;</div>

			<h3 style="float:left">공영 사진</h3>
			<h3 style="float:right"><a href="javascript:alert('더 보기');">+</a></h3>
			<div style="display:inline;">
 
			    <ul class="group services" style="padding-top:10px; padding-left:0px; list-style:none;">
			    	<c:forEach var="photo" varStatus="status"  items="${photos}">	
					  	<li class="one_quarter <c:if test="${status.first }"> first </c:if>" style="margin-bottom: 10px;">
					  		<a href="javascript:alert('${photo.no }  포토 상세정보 페이지 가기');">
						    	<img class="fadding-photo" src="/music/${photo.show_pic }" style="width:350px;height:250px;margin-bottom: 10px;"> 
						    </a>          
						    <div  style="padding-left:10px;">
						    	<p>장소 : ${photo.show_place }</p>
						    	<p>날짜 : ${photo.write_date }</p>
						    </div>
					    </li>
					</c:forEach>
			    </ul>
			</div>
			<hr>
			<div>&nbsp;</div>
			
			<h3 style="float:left">공연영상</h3>
			<h3 style="float:right"><a href="javascript:alert('공연영상 전체 페이지 가기');">+</a></h3>
			<div style="display:inline;">
 
			    <ul class="group services" style="padding-top:10px; padding-left:0px; list-style:none;">
			    	<c:forEach var="movie" varStatus="status"  items="${movies}">	
					  	<li class="one_quarter <c:if test="${status.first }"> first </c:if>" style="margin-bottom: 10px;">
						    ${movie.show_movie_url } 
						    <div  style="padding-left:10px;">
						    	<p>제목 : <a href="javascript:alert('${movie.no }  동영상 상세정보 페이지 가기');">${movie.show_title }</a></p>
						    	<p>장소 : ${movie.show_place }</p>
						    	<p>날짜 : ${movie.write_date }</p>
						    </div>
					    </li>
					</c:forEach>
			    </ul>
			</div>
			<hr>
			<div>&nbsp;</div>
			
			<h4>댓글(15)</h4>
			<div>
				<div class="form-group row">
					<form id="writeForm" name="writeForm" method="post" action="/musician?act=comment"  class="form-horizontal">
					<input type="hidden" name="star" id="star" value="5"/>
					<input type="hidden" name="musician_id" id="musician_id" value="${musician.musician_id }"/>
					<input type="hidden" name="member_id" id="member_id" value="${userInfo.id}"/>
					<div class="raw">
						<div class='starrr' id='star1' style="padding-left: 13px;float: left;"></div>
						<span class='choice' style="padding-left: 13px;float: left;">5</span> 점
					</div>
					<div class="three_quarter first">
						<div class="col-lg-10">
							<textarea class="form-control" rows="3" id="contents" name="contents" placeholder="댓글 내용을 입력하세요." required></textarea>
						</div>
						<div class="col-lg-2">
							<button type="submit" class="btn btn-default" style="width:80px;height:90px;" 
								 	<c:if test="${userInfo == null }">disabled="disabled"</c:if>>
								작성
							</button>
						</div>	
					</div>
					</form>	
				</div>
			    <c:forEach var="comment" varStatus="status"  items="${comments}">	
					<div>
						<div>
							<span style="font-weight: bold;color:maroon;">${comment.member_id }</span> 
							<span style="color: gray">${comment.write_date }</span> 
						</div>
						<div>${comment.contents }</div>
					</div >
					<hr style="border:gray thin 1px;"/>
				</c:forEach>				
			</div>
    	</div>
    </div><!-- container -->
</div><!-- wrapper row3 -->
<!------------------------------------------- footer------------------------------------- -->
<%@include file="/frame/mpfooter.jsp"%>
<script src="/Bandpage/star/starrr.js"></script>
<script type="text/javascript">

	$.fn.generateStars = function() {
	  return this.each(function(i, e) {
	    $(e).html($('<span/>').width($(e).text() * 16));
	  });
	};

	// 숫자 평점을 별로 변환하도록 호출하는 함수
	$('.star-prototype').generateStars();
	
    $('#star1').starrr({
    	rating: 5,
        change: function(e, value){
          if (value) {
            $('.your-choice-was').show();
            $('.choice').text(value);
            $('#star').val(value);
          } else {
            $('.your-choice-was').hide();
          }
        }
      });	

</script>