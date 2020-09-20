<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8"> 
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>PROJECT GS</title>

  <!-- Bootstrap core CSS -->
  
    <title>Home</title>
    <link rel="stylesheet" href="/resources/vendor/bootstrap/css/bootstrap.min.css">
</head>

<body>
	
  <%@include file ="header.jsp" %>
  
	<div class="container">
	    <form id="boardForm" name="boardForm" method="post">
	        <table class="table table-striped table-hover">
	            <thead>
	                <tr>
	                    <th>번호</th>
	                    <th>제목</th>
	                    <th>작성자</th>
	                    <th>날짜</th>
	                    <th>조회수</th>
	                </tr>
	            </thead>
	            <tbody>
	                <c:forEach var="result" items="${list }" varStatus="status">
	                    <tr>
	                        <td><c:out value="${result.bno}"/></td>
	                        <td><a href='#' onClick='fn_view(${result.bno})'><c:out value="${result.title }"/></a></td>
	                        <td><c:out value="${result.writer }"/></td>
	                        <td><c:out value="${result.regdate }"/></td>
	                        <td></td>
	                    </tr>
	                </c:forEach>
	            </tbody>
	        </table>
	        
	        <div>            
	            <a href='#' onClick='fn_write()' class="btn btn-success">글쓰기</a>            
	        </div>
	    </form>
	</div>
<script>
	//글 쓰기
	function fn_write(){
	    
	    var form = document.getElementById("boardForm");
	    
	    form.action = "/writeView";
	    form.submit();
	    
	}

	//글 조회
	function fn_view(bno){	    
	    var form = document.getElementById("boardForm");	    
	    form.action = "/readView?bno=" + bno;    
	    form.submit(); 
	}
	
</script>
  <!-- Bootstrap core JavaScript -->
  <script src="/resources/vendor/jquery/jquery.slim.min.js"></script>
  <script src="/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	
</body>

</html>
