<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<link rel="stylesheet" href="css/profile.css" type="text/css">

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>



<div class="profile container">
	<div class="profile row">
		<div><h1>안녕하세요! 떙떙 님</h1></div>
		<div class="profile col-lg-12"><%--장바구니 --%>
			<div class="profile" style="text-align:left">
			    <input id="profile-tap1" type="radio" name="tabs" checked> 
			    <label  id="profile-tap1-label" for="profile-tap1">자기정보</label>
			 
			    <input id="profile-tap2" type="radio" name="tabs">
			    <label  id="profile-tap2-label" for="profile-tap2">장바구니</label>
			
			    <input id="profile-tap3" type="radio" name="tabs">
			    <label id="profile-tap3-label" for="profile-tap3">위시리스트</label>
			
			    <input id="profile-tap4" type="radio" name="tabs">
			    <label id="profile-tap4-label" for="profile-tap4">구매내역</label>
			 
			 
			    <section id="profile-tap1-content1" style="margin-bottom:20px;">
				<jsp:include page="/profile/mypage.jsp"/>
			    </section>
			 
			    <section id="profile-tap2-content2" style="margin-bottom:20px;">
				<jsp:include page="/profile/cart.jsp"/>
			    </section>
			    
			    <section id="profile-tap3-content3" style="margin-bottom:20px;">
				<jsp:include page="/profile/wishlist.jsp"/>
			    </section>
			    
			    <section id="profile-tap4-content4" style="margin-bottom:20px;">
			    <jsp:include page="/profile/order.jsp"/>
			    </section>
			</div>
		</div>
	</div>
</div>

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script src="js/wishlist.js"></script>
</body>

</html>