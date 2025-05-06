<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.ArrayList" %>
<%@ page import = "dto.Book" %>
<%@ page import = "dao.BookRepository" %>
<!DOCTYPE html>
<html>
<head>
<link rel = "stylesheet" href = "./resources/css/bootstrap.min.css" />
	<%
		String cartId = session.getId();
	%>
<meta charset="UTF-8">
<title> 장바구니 </title>
</head>
<body>

	<div class = "container py-4">
	<header class = "pb-3 mb-4 border-bottom">
		<a href = "./index.jsp" class = "d-flex align-items-center text-dark
		text-decoration-none">
		<svg  width="32" height="32" fill="currentColor" class="bi bi-house-fill" viewBox="0 0 16 16">
   <path d="M8.707 1.5a1 1 0 0 0-1.414 0L.646 8.146a.5.5 0 0 0 .708.708L8 2.207l6.646 6.647a.5.5 0 0 0 .708-.708L13 5.793V2.5a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5v1.293L8.707 1.5Z"/>
   <path d="m8 3.293 6 6V13.5a1.5 1.5 0 0 1-1.5 1.5h-9A1.5 1.5 0 0 1 2 13.5V9.293l6-6Z"/>
</svg>
		<span class = "fs-4">Home</span>
		</a>
	</header>
	
		<div class = "p=5 mb-4 bg-body-tertiary rounded-3">
			<div class = "container-fluid py-5">
				<h1 class = "display-5 fw-bold">장바구니</h1>
				<p class = "col-md-8 fs-4">Car</p>
			</div>
		</div>
		
		<div class = "row align-items-md-stretch">
			<div class = "row">
			<table width = "100%">
			<tr>
			<td align = "left"><a href = "./deleteCart.jsp?cartId=<%=cartId%>"
			class = "btn btn-danger">삭제하기</a></td>
			<td align = "right"><a href = "#" class = "btn btn-success">주문하기</a></td>
			</tr>
			</table>
			</div>
			
			<div style = "padding-top: 50px">
			<table class = "table table-hover">
			<tr>
				<th>도서</th>
				<th>가격</th>
				<th>수량</th>
				<th>소계</th>
				<th>비고</th>
				</tr>
				
				<%
					int sum = 0;
					ArrayList<Book> cartList = (ArrayList<Book>) session.getAttribute("cartlist");
					if (cartList == null)
						cartList = new ArrayList<Book>();
					for (int i = 0; i < cartList.size(); i++) { // 상품리스트 하나씩 출력하기
						Book book = cartList.get(i);
						int total = book.getUnitPrice() * book.getQuantity();
						sum = sum + total;
					
				%>
				
				<tr>
					<td><%=book.getBookId() %> - <%=book.getName() %></td>
					<td><%=book.getUnitPrice() %></td>
					<td><%=book.getQuantity() %></td>
					<td><%=total %></td>
					<td><a href = "./removeCart.jsp?id=<%=book.getBookId()%>" class = "badge text-bg-danger">삭제</a></td>
				</tr>
				<%
					}
				%>
				
				<tr>
					<th></th>
					<th></th>
					<th>총액</th>
					<th><%=sum %></th>
					<th></th>
					</tr>
			</table>
			<a href = "./books.jsp" class = "btn btn-secondary"> &laquo; 쇼핑 계속하기</a>
			</div>
	</div>
	
	<footer class = "pt-3 mt-4 text-body-secondary border-top">
	&copy; Car ShowRoom(2018225109 강경현)
	</footer>
	
</body>
</html>