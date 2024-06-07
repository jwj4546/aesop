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
	<!-- 헤더 부분 include -->
	<header id="hd-wrap" class="container is-fullhd">
		<jsp:include page="../include/header.jsp"></jsp:include>
	</header>
	<div class="container">
	<main class="contents">
		<div id="breadcrumb" class="container breadcrumb-wrap clr-fix" style="height:60px; line-height:60px;">
	    	<nav class="breadcrumb" aria-label="breadcrumbs">
			  <ul>
			    <li><a href="${path2 }">Home</a></li>
			    <li><a href="${path2 }/product/list.do">상품</a></li>
			    <li class="is-active"><a href="#" aria-current="page">상품 등록</a></li>
			  </ul>
			</nav>
    	</div>
 	    <section class="page" id="page1">
    		<h2 class="page-title">상품 등록</h2>
    		<div class="page-wrap">
	    		<div class="clr-fix">
	    			<br>
					<form action="${path2 }/product/insertPro.do" method="post" enctype="multipart/form-data">
						<table class="table">
							<tbody>
								<tr>
									<th><label for="category">카테고리</label></th>
									<td>
										<select name="category" id="category" onchange="updateSubCategory()" required>
										    <option value="">선택 안함</option>
										    <option value="s">스킨케어</option>
										    <option value="b">바디&핸드</option>
										    <option value="h1">홈</option>
										    <option value="h2">헤어</option>
										    <option value="p">향수</option>
										    <option value="k">키트&트레블</option>
										</select>
									</td>
									<th><label for="category_sub">서브 카테고리</label></th>
									<td>
										<select name="category_sub" id="category_sub" required>
										    <option value="">선택 안함</option>
										</select>
									</td>
								</tr>
								<tr>
									<th><label for="pname">상품명</label></th>
									<td>
										<input type="text" name="pname" id="pname" class="input" maxlength="100" required>
									</td>
								</tr>
								<tr>
									<th><label for="com">상품 설명</label></th>
									<td>
										<textarea name="com" id="com" rows="8" cols="80" maxlength="3000" class="textarea"></textarea>
									</td>
								</tr>
								<tr>
									<th><label for="com">가격</label></th>
									<td>
										<input type="number" min="0" step="100" value="500" name="price" id="price" class="input" />
									</td>
								</tr>
								<tr>
									<th><label for="img">상품 메인이미지</label></th>
									<td>
										<input type="file" name="img1" id="img1" accept="image/*" required/>
									</td>
								</tr>
								<tr>
									<th><label for="img">상품 상세 이미지</label></th>
									<td>
										<input type="file" name="img2" id="img2" accept="image/*" required/>
									</td>
								</tr>
								<tr>
									<th><label for="img">상품 썸네일 이미지</label></th>
									<td>
										<input type="file" name="img3" id="img3" accept="image/*" required/>
									</td>
								</tr>
							</tbody>
						</table>
						<hr>
						<div class="buttons">
						  <button type="submit" class="button is-danger">상품 등록</button>
						  <a href="${path2 }/product/listAll.do?category=s" class="button is-primary">상품 목록</a>
						</div>
					</form>
				</div>
    		</div>
    	</section>
    	<script>
	    // 카테고리 값이 변경되었을 때 실행되는 함수
	    function updateSubCategory() {
        // 선택된 카테고리 값 가져오기
        var category = document.getElementById("category").value;
        
        // 서브 카테고리를 포함하는 select 요소 가져오기
        var subCategorySelect = document.getElementById("category_sub");
        
        // 서브 카테고리 옵션 초기화
        subCategorySelect.innerHTML = "";
        
        // 선택된 카테고리 값에 따라 서브 카테고리 옵션 추가
        switch (category) {
            case "s": // 스킨케어
                subCategorySelect.innerHTML += '<option value="1">클렌저</option>';
                subCategorySelect.innerHTML += '<option value="2">각질 제거</option>';
                subCategorySelect.innerHTML += '<option value="3">트리트먼트&마스크</option>';
                subCategorySelect.innerHTML += '<option value="4">토너</option>';
                subCategorySelect.innerHTML += '<option value="5">하이드레이터</option>';
                break;
            case "b": // 바디&핸드
            	subCategorySelect.innerHTML += '<option value="1">핸드</option>';
                subCategorySelect.innerHTML += '<option value="2">바디</option>';
                subCategorySelect.innerHTML += '<option value="3">퍼스널 케어</option>';
                subCategorySelect.innerHTML += '<option value="4">번들</option>';
                subCategorySelect.innerHTML += '<option value="5">핸드 및 바디 케어 기프트</option>';
                break;
            case "h1": // 홈
            	subCategorySelect.innerHTML += '<option value="1">홈</option>';
                subCategorySelect.innerHTML += '<option value="2">문학</option>';
                subCategorySelect.innerHTML += '<option value="3">홈 케어 기프트</option>';
                break;
            case "h2": //헤어
            	subCategorySelect.innerHTML += '<option value="1">샴푸</option>';
                subCategorySelect.innerHTML += '<option value="2">컨디셔너</option>';
                subCategorySelect.innerHTML += '<option value="3">트리트먼트</option>';
                subCategorySelect.innerHTML += '<option value="4">그루밍</option>';
                break;
            case "p": //향수
            	subCategorySelect.innerHTML += '<option value="1">우라논</option>';
                subCategorySelect.innerHTML += '<option value="2">글롬</option>';
                subCategorySelect.innerHTML += '<option value="3">이더시스</option>';
                subCategorySelect.innerHTML += '<option value="4">미라세티</option>';
                subCategorySelect.innerHTML += '<option value="5">카르스트</option>';
                break;
            case "k": //키트&트래블
            	subCategorySelect.innerHTML += '<option value="1">시즈널 기프트 키트</option>';
                subCategorySelect.innerHTML += '<option value="2">스킨 케어 키트</option>';
                subCategorySelect.innerHTML += '<option value="3">바디&핸드 케어 키트</option>';
                subCategorySelect.innerHTML += '<option value="4">트래블</option>';
        		break;
        }
    }
</script>
	</main>
</div>
	<!-- footer 부분 include -->
	<footer class="footer" id="ft">
		<%-- <jsp:include page="../include/ft.jsp"></jsp:include> --%>
	</footer>
</body>
</html>