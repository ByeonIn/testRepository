<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.kh.notice.model.vo.Notice"%>
<%
	Notice n = (Notice)request.getAttribute("notice");
	String noticeTitle = n.getNoticeTitle();
	String noticeContent = n.getNoticeContent();
	int noticeNo = n.getNoticeNo();
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
       	#update-form>table{borde:1px solid white;}
       	#update-form input,textarea{
       	width: 100%;
       	box-sizing:border-box;
       	}HTML 공백이후 날라감
</style>
</head>
<body>
	<%@include file= "../common/menubar.jsp" %>
	<div class="outer">
	
	<h2 align="center">공지사항 수정</h2>
	
	<form id="enroll-form" action="<%=contextPath%>/update.no?noticeNo=<%=noticeNo%>" method="post">
		<input type="hidden" name="noticeNo" value="<%=n.getNoticeNo() %>">
		<table align="center">
			<tr>
				<td width="50">제목</td>
				<td width="350"><input type="text" name="title" value="<%=noticeTitle %>" required></td>
			</tr>
			<tr>
				<td>내용</td>
				<td></td>
			</tr>
			<tr>
				<td colspan="2">
					<textarea rows="10" cols="20" style="resize:none" name="content"  required><%=noticeContent %></textarea>
				</td>
			</tr>
		</table>
		<br><br>
		<div align="center"> 
			<button type="submit">수정하기</button>
		</div>
	
	</form>
	
	
	</div>
</body>
</html>