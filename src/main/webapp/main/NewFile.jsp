<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
#subjectA:link {color: white; text-decoration: none;}
#subjectA:visited {color: white; text-decoration: none;}
#subjectA:hover {color: cyan; text-decoration: underline;}
#subjectA:active {color: white; text-decoration: none;}

#currentPaging {
   color: red;
   text-decoration: underline;
}

#paging {
   color: white;
   text-decoration: none;
}
</style>
</head>
<body>
<form name="boardList" id="boardList" >
<table border="1" bordercolor="yellow"  width="750" cellpadding="5" frame="hsides" rules="rows">
 <tr>
    <th width="100">글번호</th>
    <th width="300">제목</th>
    <th width="100">작성자</th>
    <th width="150">작성일</th>
    <th width="100">조회수</th>
 </tr>
 <c:if test="${list != null }" >
    <c:forEach var="boardDTO" items="${list}">
       <tr>
          <td align="center">${boardDTO.seq}</td>
          <td>
             <c:forEach var="i" begin="1" end="${boardDTO.lev }" step="1">
                &emsp;
             </c:forEach>
             <c:if test="${boardDTO.pseq != 0 }">
                <img src="../image/reply.gif">
             </c:if>
          
             <a href="javascript:void(0)" id="subjectA" 
             onclick="isLogin('${sessionScope.memId }', ${boardDTO.seq}, ${pg })">
                ${boardDTO.subject}
             </a>
          </td>
          <td align="center">${boardDTO.id}</td>
          <td align="center">
             <fmt:formatDate pattern="YYYY.MM.dd" value="${boardDTO.logtime }"  type="date"  />
          </td>
          <td align="center">${boardDTO.hit}</td>
       </tr>
    </c:forEach>
 </c:if>
 </table>
 </form>
<br><br><br><br>
<div style=" width: 750px; text-align: center;">${boardPaging.pagingHTML }</div>   
<div><form action="/miniProject/board/boardSearchService.do">

   <select id="search" name="search">
      <option value="subject">제목</option>
      <option value="id">작성자</option>
   </select>
   <input type="text" id="searchText" name="searchText" value="" width="100px">
   <input type="hidden" value="${pg }">
   <input type="submit" id="searchBtn" value="검색" >

</form>
</div>
   

<script type="text/javascript">
function isLogin(memId, seq, pg){
   if(memId == '')
      alert("먼저 로그인하세요");
    else
       location.href="boardView.do?seq="+seq+"&pg="+pg;
   /* else
      if(#searchText==null){
         location.href="boardView.do?seq="+seq+"&pg="+pg;
      }else if (#searchText!=null){
         location.href="boardSearchService.do?seq="+seq+"&pg="+pg      +#searchText;
      } */
}


/* $(document).on('click', '#paging', function(){
   if($('#searchAfter').val()!=""){
      var startIndex = $(this).attr('href').indexOf('=') + 1;
       var pg = $(this).attr('href').substr(startIndex, 2);
    
       $(this).attr('href', "/miniProject/board/boardSearch.do?pg=" + pg+"&search="+$('#searchAfter').val()+"&select="+$('#selectAfter').val());
   }
});
 */
</script>   
</body>
</html>















