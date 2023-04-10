<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style >
	.list-area{
		width:760px;
		margin:auto;
	}
	.thumnail{
		border: 1px solid white;
		width : 220px;
		display:inline-block;
		margin: 14px;
	}
	.thumnail:hover{
		cousor:pointer;
		opacity:0.7;
	}
</style>
</head>
<body>
	<%@include file="../common/menubar.jsp" %>
	<div class="outer">
		<h2 align="center">사진 게시판</h2>
		<br><br>
		<%if(loginUser != null){ %>
		<div align="center">
			<a href="<%=contextPath%>/insert.ph" class="btn btn-info">글작성</a>
		</div>
		<%} %>
		
		<div class="list-area">
			<div class="thumnail" align="center">
				
				<img width="200px" height="150px">
				<p>
					No.5<br>
					조회수 : 14
				</p>
				
			</div>
		</div>
	
	</div>
</body>
</html>