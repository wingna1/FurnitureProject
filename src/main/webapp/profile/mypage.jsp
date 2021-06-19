<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<!-- <script src="/js/mypage.js"></script> -->
<head>
<link rel="stylesheet" href="css/mypage.css" type="text/css">

<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>


<!-- 이름,생일, 주소를 알려주는 제목 -->
<div id="privatedataDiv" class="privateData">
<h4>개인 정보</h4>

<!-- 수정버튼 -->
<div id="private-closing">
<button class="private-modifyBtn" id="private-modifyBtn" type="button">수정</button>
<div class="birth" id="birth"><p><h5>생년월일</h5></p></div>
<div class="name" id="name"><p><h5>이름</h5></p></div>
<div class="address" id="address"><p><h5>주소지</h5></p></div>
</div>


<div id="dataPrivateDiv">
<button class="private-modifyBtnCancle" id="private-modifyBtnCancle" type="button">닫기</button>
<p><input type="text" name="dataName" id="dataName" style="border:0;"></p>
<p><input type="text" name="dataBirth" id="dataBirth" style="border:0;"></p>
<p><input type="text" name="dataAddress" id="dataAddress" style="border:0;"></p>
<p><input type="button" value="취소"></p>
<p><input type="button" value="저장" id="saveBtn"></p>
</div>
</div>

<!-- 구분선 -->
<hr class="profile__divider">

<!-- 핸드폰, 이메일 구분제목-->
<div id="contactDiv" class="contactData">
<h4>연락처</h4>

<!-- 수정버튼 -->
<div id="contact-closing">
<button class="contact-modifyBtn" id="contact-modifyBtn" type="button">수정</button>
<div class="phonenumber" id="phonenumber"><p><h5>휴대폰번호</h5></p></div>
<div class="email" id="email"><p><h5>이메일</h5></p></div>
</div>

<div id="dataContactDiv">
<button class="contact-modifyBtnCancle" id="contact-modifyBtnCancle" type="button">닫기</button>
<p><input type="text" name="dataPhone" id="dataPhone" style="border:0;"></p>
<p><input type="text" name="dataEmail" id="dataEmail" style="border:0;"></p>
<p><input type="button" value="취소"></p>
<p><input type="button" value="저장" id="saveBtn"></p>
</div>
</div>
<hr class="profile__divider">

<!-- 비밀번호 구분제목-->
<div id="passwordDiv" class="passwordData">
<h4>비밀번호</h4>
<!-- 수정버튼 -->
<div id="password-closing">
<button class="password-modifyBtn" id="password-modifyBtn" type="button">수정</button>
<div class="password" id="password"><p><h5>비밀번호</h5></p></div>
</div>

<div id="dataPasswordDiv">
<button class="private-modifyBtnCancle" id="password-modifyBtnCancle" type="button">닫기</button>
<p><input type="text" name="dataPwd" id="dataPwd" style="border:0;"></p>
<p><input type="button" value="취소"></p>
<p><input type="button" value="저장" id="saveBtn"></p>
</div>
</div>


<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="js/mypage.js"></script>

</body>
</html>