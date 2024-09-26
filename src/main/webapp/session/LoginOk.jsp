<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.6.1.min.js"></script> 

<script type="text/javascript">
  $(function(){
	  //alert(11)
	  
	  $("a").click(function(){
		  //로그아웃기능을하는 페이지로 이동해서 모든세션의 삭제
		  if(confirm("로그아웃할래?")){
			 location.href="${pageContext.request.contextPath}/logout";
			  
		  }
		  
	  });
  })
</script>
</head>
<body>

<c:choose>
  <c:when test="${not empty sessionId}">
      <h3>
      ${sessionScope.sessionName} (${sessionId})님 로그인 중 
     [접속시간 : ${creationTime} ] <p>
     </h3>
  	<img src="images/bin.jpg"><p>
  	
  	<a href="#">로그아웃</a>
  </c:when>
  <c:otherwise>
      <script type="text/javascript">
	     alert("인증하고 이용해주세요.");
	     location.href="LoginForm.jsp";
	   </script>
  </c:otherwise>
</c:choose>



</body>
</html>