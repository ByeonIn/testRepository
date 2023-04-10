<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.Date,com.kh.notice.model.vo.Notice"%>
<%
	Notice n = (Notice)request.getAttribute("notice");
	String noticeTitle = n.getNoticeTitle();
	String noticeContent = n.getNoticeContent();
	String userId = n.getNoticeWriter();
	Date noticeDate = n.getCreateDate();
	int noticeNo = n.getNoticeNo();
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	#detail-area{
		border : 1px solid white;
	}
</style>
</head>
<body>
	
	<%@include file="../common/menubar.jsp" %>
	<div class="outer">
	<br><br>
	<h2 align="center">공지사항 상세보기</h2>
	<table id="detail-area" align="center">
		<tr>
			<th width="70">제목</th>
			<td width="350" colspan="3"><%=noticeTitle%></td>
		</tr>
		<tr>
			<th>작성자</th>
			<td><%=userId %></td>
			<th>작성일</th>
			<td><%=noticeDate %></td>
		</tr>
		<tr>
			<th>내용</th>
			<td colspan="3"><p style="height:150px"><%=noticeContent %></p></td>
		</tr>
	</table>
	<br><br>
	<!-- 로그인한 회원의 아이디와 작성자의 아이디가 일치하면 수정 삭제 권한 주기 -->
	<%if(loginUser !=null && loginUser.equals(n.getNoticeWriter())) %>
	<div align="center">
		<a href="<%=contextPath%>/update.no?noticeNo=<%=noticeNo%>" class="btn btn-warning">수정하기</a>
		<a href="<%=contextPath%>/delete.no?noticeNo=<%=noticeNo%>" class="btn btn-danger">삭제하기</a>
	</div>
	</div>
	
	
</body>
</html>