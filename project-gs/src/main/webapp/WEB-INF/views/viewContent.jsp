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
	    <form id="viewContent" name="viewContent" method="POST">
	        <div>
	            <h2>글쓰기</h2>
	            <div>
	                <table>
	                    <tr>
	                        <th>번호</th>
	                        <td><input style="width: 500px" type="text" id="bno" name="bno" readonly="readonly" value="${read.bno }"/></td>
	                    </tr>	                
	                    <tr>
	                        <th>제목</th>
	                        <td><input style="width: 500px" type="text" id="title" name="title" value="${read.title }"/></td>
	                    </tr>
	                    <tr>
	                        <th>내용</th>
	                        <td><textarea style="width: 500px" rows="10" cols="10" id="content" name="content"><c:out value="${read.content }"/></textarea></td>
	                    </tr>
	                    <tr>
	                        <th>작성자</th>
	                        <td><input style="width: 500px" type="text" id="writer" name="writer" value="${read.writer }"/></td>
	                    </tr>
	                </table>
	                <div>
	                    <a href='#' onClick='fn_update()'>수정</a>
	                    <a href='#' onClick='fn_delete()'>삭제</a>                
	                </div>
	            </div>
	        </div>
	    </form>
	<script>
	//목록
	function fn_delete(){	   
	    var form = document.getElementById("viewContent");	    
	    form.action = "/delete";    
	    form.submit();					   
	    alert('삭제되었습니다.');
	}
	 
	//수정
	function fn_update(){
	    
	    var form = document.getElementById("viewContent");	    
	    form.action = "/update";    
	    form.submit();
	    alert('수정되었습니다.');
	}
	</script>
	</div>
</body>
</html>
