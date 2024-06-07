<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="path2" value="${pageContext.servletContext.contextPath }" />
<!DOCTYPE>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>목록</title>
	<jsp:include page="../include/head.jsp"></jsp:include>
</head>
<body>
	<div class="content">
	<!-- 헤더 부분 include -->
 	<header id="header">
		<jsp:include page="../include/header.jsp"></jsp:include>
	</header> 
	<main class="contents">
		<div id="breadcrumb" class="container breadcrumb-wrap clr-fix" style="height:60px; line-height:60px;">
	    	<nav class="breadcrumb" aria-label="breadcrumbs">
			  <ul>
			    <li><a href="${path2 }">Home</a></li>
			    <li><a href="${path2 }/product/list.do">상품</a></li>
			    <li class="is-active"><a href="#" aria-current="page">목록</a></li>
			  </ul>
			</nav>
    	</div>
 	    <section class="page" id="page1">
    		<h2 class="page-title">상품 목록</h2>
    		<div class="tab_box">
	    		<div class="tabs">
				  <ul style="padding-top:50px;">
						<c:if test="${category eq 's' }">
                        <li><a href="${path2 }/product/listAll.do?category=s" class="navbar-item" title="전체">
                            모든
                            <c:if test="${not empty categoryName}">
				                ${categoryName}
				            </c:if>
                        </a></li>
                        <li><a href="${path2 }/product/list.do?category=s&category_sub=1" class="navbar-item" title="클렌저">
                            클렌저
                        </a></li>
                        <li><a href="${path2 }/product/list.do?category=s&category_sub=2" class="navbar-item" title="각질 제거">
                            각질 제거
                        </a></li>
                        <li><a href="${path2 }/product/list.do?category=s&category_sub=3" class="navbar-item" title="트리트먼트&마스크">
                            트리트먼트 & 마스크
                        </a></li>
                        <li><a href="${path2 }/product/list.do?category=s&category_sub=4" class="navbar-item" title="토너">
                            토너
                        </a></li>
                        <li><a href="${path2 }/product/list.do?category=s&category_sub=5" class="navbar-item" title="하이드레이터">
                            하이드레이터
                        </a></li>
                        </c:if>
                        
                       <c:if test="${category eq 'b' }">
                        <li><a href="${path2 }/product/listAll.do?category=b" class="navbar-item" title="전체">
                            모든
                            <c:if test="${not empty categoryName}">
				                ${categoryName}
				            </c:if>
                        </a></li>
                        <li><a href="${path2 }/product/list.do?category=b&category_sub=1" class="navbar-item" title="핸드">
                            핸드
                        </a></li>
                        <li><a href="${path2 }/product/list.do?category=b&category_sub=2" class="navbar-item" title="바디">
                            바디
                        </a></li>
                        <li><a href="${path2 }/product/list.do?category=b&category_sub=3" class="navbar-item" title="퍼스널 케어">
                            퍼스널 케어
                        </a></li>
                        <li><a href="${path2 }/product/list.do?category=b&category_sub=4" class="navbar-item" title="번들">
                            번들
                        </a></li>
                        <li><a href="${path2 }/product/list.do?category=b&category_sub=5" class="navbar-item" title="핸드 및 바디 케어 기프트">
                            핸드 및 바디 케어 기프트
                        </a></li>
                        </c:if>
                        
                        <c:if test="${category eq 'h1' }">
                        <li><a href="${path2 }/product/listAll.do?category=h1" class="navbar-item" title="전체">
                            모든
                            <c:if test="${not empty categoryName}">
				                ${categoryName}
				            </c:if>
                        </a></li>
                        <li><a href="${path2 }/product/list.do?category=h1&category_sub=1" class="navbar-item" title="홈">
                            홈
                        </a></li>
                        <li><a href="${path2 }/product/list.do?category=h1&category_sub=2" class="navbar-item" title="문학">
                            문학
                        </a></li>
                        <li><a href="${path2 }/product/list.do?category=h1&category_sub=3" class="navbar-item" title="홈 케어 기프트">
                            홈 케어 기프트
                        </a></li>
                        </c:if>
                        
                        <c:if test="${category eq 'h2' }">
                        <li><a href="${path2 }/product/listAll.do?category=h2" class="navbar-item" title="전체">
                            모든
                            <c:if test="${not empty categoryName}">
				                ${categoryName}
				            </c:if>
                        </a></li>
                        <li><a href="${path2 }/product/list.do?category=h2&category_sub=1" class="navbar-item" title="샴푸">
                            샴푸
                        </a></li>
                        <li><a href="${path2 }/product/list.do?category=h2&category_sub=2" class="navbar-item" title="컨디셔너">
                            컨디셔너
                        </a></li>
                        <li><a href="${path2 }/product/list.do?category=h2&category_sub=3" class="navbar-item" title="트리트먼트">
                            트리트먼트
                        </a></li>
                        <li><a href="${path2 }/product/list.do?category=h2&category_sub=4" class="navbar-item" title="그루밍">
                            그루밍
                        </a></li>
                        <li><a href="${path2 }/product/list.do?category=h1&category_sub=5" class="navbar-item" title="핸드 및 바디 케어 기프트">
                            핸드 및 바디 케어 기프트
                        </a></li>
                        </c:if>
                        
                        <c:if test="${category eq 'p' }">
                        <li><a href="${path2 }/product/listAll.do?category=p" class="navbar-item" title="전체">
                            모든
                            <c:if test="${not empty categoryName}">
				                ${categoryName}
				            </c:if>
                        </a></li>
                        <li><a href="${path2 }/product/list.do?category=p&category_sub=1" class="navbar-item" title="우라논">
                            우라논
                        </a></li>
                        <li><a href="${path2 }/product/list.do?category=p&category_sub=2" class="navbar-item" title="글롬">
                           	글롬
                        </a></li>
                        <li><a href="${path2 }/product/list.do?category=p&category_sub=3" class="navbar-item" title="이더시스">
                            이더시스
                        </a></li>
                        <li><a href="${path2 }/product/list.do?category=p&category_sub=4" class="navbar-item" title="미라세티">
                            미라세티
                        </a></li>
                        <li><a href="${path2 }/product/list.do?category=p&category_sub=5" class="navbar-item" title="카르스트">
                            카르스트
                        </a></li>
                        </c:if>
                        
                         <c:if test="${category eq 'k' }">
                        <li><a href="${path2 }/product/listAll.do?category=k" class="navbar-item" title="전체">
                            모든
                            <c:if test="${not empty categoryName}">
				                ${categoryName}
				            </c:if>
                        </a></li>
                        <li><a href="${path2 }/product/list.do?category=k&category_sub=1" class="navbar-item" title="시즈널 기프트 키트">
                            시즈널 기프트 키트
                        </a></li>
                        <li><a href="${path2 }/product/list.do?category=k&category_sub=2" class="navbar-item" title="스킨 케어 키트">
                           	스킨 케어 키트
                        </a></li>
                        <li><a href="${path2 }/product/list.do?category=k&category_sub=3" class="navbar-item" title="바디&핸드 케어 키트">
                            바디&핸드 케어 키트
                        </a></li>
                        <li><a href="${path2 }/product/list.do?category=k&category_sub=4" class="navbar-item" title="트래블">
                            트래블
                        </a></li>
                        </c:if>
				  </ul>
				</div>
    		</div>
    		
    		<div class="page-wrap">
	    		<div class="clr-fix">
	    			<br>
					<ul class="columns list" id="list1" >
						<c:if test="${not empty list }">
							<c:forEach var="dto" items="${list }">
							<li class="column" >
									<div class="item_box" style="text-align:center;">
										<a href="${path2 }/product/detail.do?pno=${dto.pno }" class="item_wrap">
										<img src="${path2 }/resources/upload/${dto.img3 }" class="item_pic"/>
										<h3 class="list_title">${dto.pname }</h3><br>
										<p class="list_price"><strong>&#8361;${dto.price }</strong></p>
										</a>
									</div>
							</li>
							</c:forEach>
						</c:if>
						<c:if test="${empty list }">
							<li>
								<p><strong>상품이 존재하지 않습니다.</strong></p>
							</li>
						</c:if>
					</ul>
					<script>
					$(document).ready(function(){
						/* $("#list1").DataTable({
							order:[[0,"desc"]]
						}); */
					});
					</script>
					<hr>
					<c:if test="${semail.equals('admin@aesop.com') }">
					<div class="buttons">
					  <a href="${path2 }/product/insert.do" class="button is-danger">상품 등록</a>
					</div>
					</c:if>
				</div>
    		</div>
    	</section>
	</main>
</div>
	<!-- footer 부분 include -->
<%-- 	<footer class="footer" id="ft">
		<jsp:include page="../include/ft.jsp"></jsp:include>
	</footer> --%>
</body>
</html>