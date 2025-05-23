<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<link rel = "stylesheet" href = "./resources/css/bootstrap.min.css" />
<meta charset="UTF-8">
<title>편집</title>
	<script type = "text/javascript">
		function deleteConfirm(id) {
			if (confirm("해당 차량을 삭제합니다.")==true)
				location.href = "./deleteBook.jsp?id=" + id;
			else
				return;
		}
	</script>
</head>
	
	<%
		String edit = request.getParameter("edit");
	%>

<body>

	<div class = "p-5 mb-4 bg-body-tertiary rounded-3">
		<div class = "container-fluid py-5">
		<h1 class = "display-5 fw-bold">차량 정보 수정 및 삭제</h1>
		</div>
	</div>
	

	<%@ include file = "dbconn.jsp" %>
	<div class = "row align-items-md-stretch text-center">
	
	<%
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "SELECT * FROM book";
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();
		while (rs.next()) {
	%>
		<div class = "col-md-4">
			<div class = "h-100 p-2 round-3">
			<img src="${pageContext.request.contextPath}/resources/images/<%=rs.getString("filename") %>"
                             style="width: 500px; height: 350px" />
                        <h5><b><%=rs.getString("name") %></b></h5>                   
                        <p> 제조사 : <%=rs.getString("publisher") %> | <%=rs.getString("unitPrice") %> 만원</p>                
                        <p><%=rs.getString("description").substring(0, 60) %>...</p>
                        <p> <%
                        		if (edit.equals("update")) {
                        	%>
                        <a href = "./updateBook.jsp?id=<%=rs.getString("id") %>"
                        class = "btn btn-success" role = "button"> 수정 &raquo;</a>
                        
                        <%
                        		} else if (edit.equals("delete")) {
                        %>
                        <a href = "#" onclick = "deleteConfirm('<%=rs.getString("id") %>')"
                        class = "btn btn-danger" role = "button">삭제 &raquo;</a>
                        <%
                        		}
                        %>
			</div>
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

</body>
</html>