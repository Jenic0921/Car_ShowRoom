<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<link rel = "stylesheet" href = "./resources/csss/bootstrap.min.css" />
<meta charset="UTF-8">
<title>수정</title>
</head>
<body>

	<div class = "container py-4"> 
		<%@ include file = "menu.jsp" %>
		
		<div class = "p-5 mb-4 bg-body-tertiary rounded-3">
			<div class = "container-fluid py-5">
		<h1 class = "display-5 fw-bold">차량 수정</h1>
			</div>
		</div>
		
		<%@ include file = "dbconn.jsp" %>
	
	<%
		String bookId = request.getParameter("id");
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "SELECT * FROM book WHERE id = ?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, bookId);
		rs = pstmt.executeQuery();
		if (rs.next()) {
	%>
	
		<div class = "row align-items-md-stretch">
			<div class = "col-md-5">
				<img src="${pageContext.request.contextPath}/resources/images/<%=rs.getString("filename")%>"
				alt = "image" style = "width : 100% " />
			</div>
			
		<div class  = "col-md-7">
			
			<form name = "newBook" action = "./processAddBook.jsp" class = "form-horizontal" method = "post" enctype="multipart/form-data">
			<div class = "mb-3 row">
				<label class = "col-sm-2">차량 코드</label>
					<div class = "col-sm-3">
						<input type = "text" id = "bookId" name = "bookId" class = "form-control">
				</div>
			</div>
			<div class = "mb-3 row">
				<label class = "col-sm-2">차량명</label>
				<div class = "col-sm-3">
					<input type = "text" id = "name" name = "name" class = "form-control">
				</div>
			</div>
			<div class = "mb-3 row">
				<label class = "col-sm-2">가격</label>
				<div class = "col-sm-3">
					<input type = "text" id = "unitPrice" name = "unitPrice" class = "form-control">
				</div>
			</div>
			
			<div class = "mb-3 row">
				<label class = "col-sm-2">제조사</label>
				<div class = "col-sm-3">
					<input type = "text" name = "publisher" class = "form-control">
				</div>
			</div>
			
			<div class = "mb-3 row">
				<label class = "col-sm-2">상세정보</label>
				<div class = "col-sm-5">
					<textarea name = "description" id = "description" cols = "50" rows = "2"
					class = "form-control" placeholder = "30자 이상 적어주세요"></textarea>
				</div>
			</div>
			
			<div class = "mb-3 row">
				<label class = "col-sm-2">분류</label>
				<div class = "col-sm-3">
					<input type = "text" name = "category" class = "form-control">
				</div>
			</div>
			
			<div class = "mb-3 row">
				<label class = "col-sm-2">상태</label>
				<div class = "col-sm-5">
					<input type = "radio" name = "condition" value = "New"> 신규 차량
					<input type = "radio" name = "condition" value = "Old"> 중고 차량
				</div>
			</div>
			
			<div class = "mb-3 row">
				<div class = "col-sm-offset-2 col-sm-10">
				<label class = "col-sm-2">이미지</label>
					<div class = "col-sm-5">
						<input type = "file" name = "BookImage" class = "form-cotrol">
					</div>
				</div>
			</div>
			<input type = "button" class="btn btn-secondary btn-lg" value = "등록" onclick = "CheckAddBook()">
			</form>	
		</div>
		
		<%
		
		}
		
		if (rs!=null)
			rs.close();
		if (pstmt!=null)
			pstmt.close();
		if(conn!=null)
			conn.close();
		%>
	
	</div>
</div>
</body>
</html>