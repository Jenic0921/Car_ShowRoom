<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "dto.Book" %>
<%@ page import = "dao.BookRepository3" %>
<jsp:useBean id = "bookDAO" class = "dao.BookRepository" scope = "session" />
<!DOCTYPE html>
<html>
<head>
<link href = "https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel = "stylesheet">
<meta charset="UTF-8">
<title>차량 정보</title>

<script type = "text/javascript">
	function addToCart() {
		if (confirm("도서를 장바구니에 추가하시겠습니까?")) {
			document.addForm.submit();
		} else {
			document.addForm.reset();
		}
	}
</script>

</head>
<body>
<div class="h-container">
    <header class="header" style="display: flex; justify-content: space-between; align-items: center;">
        <div>
            <a href="index.jsp">
                <img src="./resources/images/CAR/Porshce.png" alt="Reset" width="80" height="80">
            </a>
        </div>
        <div class="nevigation">
            <div class="showroom">
            <p> <a href= "addBook3.jsp" style="background-color: #fff; color: #000; padding: 10px 20px; text-decoration: none; font-size: 18px; font-weight: bold;">신규 차량 등록하기</a>
                <a href="books3.jsp" style="background-color: #fff; color: #000; padding: 10px 20px; text-decoration: none; font-size: 18px; font-weight: bold;">자동차 전시장</a>
            </div>
        </div>
    </header>
    
	<%
		String id = request.getParameter("id");
		BookRepository3 dao = BookRepository3.getInstance();
		Book book = dao.getBookById(id);
	%>
	
	<div class = "row align-items-md-stretch">
		<div class = "col-md-5">
		<img src = "/uploads/kkh990921/<%=book.getFilename()%>" style="width: 500px; height: 350px;"/>
		</div>
		<div class = "col-md-12">
			<h3><b><%=book.getName() %></b></h3>
			<p> <%=book.getDescription() %>
			<p> <b>자동차코드 :</b>
			<span class = "badge text-bg-danger">
			<%=book.getBookId() %></span>
			<p> <b>제조사</b> : <%=book.getPublisher() %>
			<p> <b>분류</b> : <%=book.getCategory() %>
			<h4><%=book.getUnitPrice() %>만원</h4>
			<p> <form name = "addForm" action = "./addCart2.jsp?id=<%=book.getBookId() %>" method = "post">			
			<p> <a href = "#" class = "btn btn-info" onclick = "addToCart()"> 차량 주문 &raquo;</a>
			<a href = "./cart.jsp" class = "btn btn-warning">장바구니 &raquo;</a>
			<a href = "./books3.jsp" class = "btn btn-secondary"> 자동차 목록 &raquo;</a>
			</form>
		</div>
	</div>
	
	<footer class = "pt-3 mt-4 text-body-secondary border-top">
	&copy; Car ShowRoom(2018225109 강경현)
	</footer>
	
	</div>

</body>
</html>