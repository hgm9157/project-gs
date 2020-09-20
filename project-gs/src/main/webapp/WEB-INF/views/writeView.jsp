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
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <title>PROJECT GS</title>

  <!-- Bootstrap core CSS -->
  
    <title>Home</title>
    <link rel="stylesheet" href="/resources/vendor/bootstrap/css/bootstrap.min.css">
</head>

<body>
	
  <%@include file ="header.jsp" %>

  <!-- Page Content -->
<div class="container">
	<form id="writeView" name="writeView" method="post">
		<div>
			<h2>글쓰기</h2>
				<div>
					<table>
	                    <tr>
	                        <th>제목</th>
	                        <td><input style="width: 500px" type="text" id="title" name="title" /></td>
	                    </tr>
	                    <tr>
	                        <th>내용</th>
	                        <td><textarea style="width: 500px" rows="10" cols="10" id="content" name="content"></textarea></td>
	                    </tr>	                    
	                    <tr>
	                        <th>작성자</th>
	                        <td><input style="width: 500px" type="text" id="writer" name="writer" /></td>
	                    </tr>	                    
					</table>
	                <div>
	                    <a href='#' onClick='fn_addtoBoard()'>글 등록</a>
	                </div>					
				</div>			
		</div>
	</form>
</div>

  <script>  
  	//글 등록
  	function fn_addtoBoard() {
	    var form = document.getElementById("writeView");	    
	    form.action = "/write";    
	    form.submit();   			
	    alert('등록되었습니다.');
  	}
  	
  </script>
  
  <!-- Bootstrap core JavaScript -->
  <script src="/resources/vendor/jquery/jquery.slim.min.js"></script>
  <script src="/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	
</body>

</html>
