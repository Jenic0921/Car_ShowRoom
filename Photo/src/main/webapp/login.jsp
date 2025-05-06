<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel = "stylesheet" href = "./resources/css/bootstrap.min.css" />
<meta charset="UTF-8">
<title>Login</title>
</head>
<div class="h-container">
    <header class="header" style="display: flex; justify-content: space-between; align-items: center;">
        <div>
            <a href="index.jsp">
                <img src="./resources/images/CAR/Porshce.png" alt="Reset" width="80" height="80">
            </a>
        </div>
        <div class="nevigation">
            <div class="showroom">
            <p> <a href= "addBook.jsp" style="background-color: #fff; color: #000; padding: 10px 20px; text-decoration: none; font-size: 18px; font-weight: bold;">신규 차량 등록하기</a>
                <a href="books.jsp" style="background-color: #fff; color: #000; padding: 10px 20px; text-decoration: none; font-size: 18px; font-weight: bold;">자동차 전시장</a>
            </div>
        </div>
    </header>
	
	<div class = "row align-items-md-stretch text-center">
		<div class = "row justify-content-center align-items-center">
			<div class = "h-100 p-5 col-md-6">
				<h3 class="p-3 mb-2 bg-success text-white">Please sign in </h3>
				
				<%
					String error = request.getParameter("error");
					if (error != null) {
						out.println("<div class = 'alert alert-danger'>");
						out.println("아이디와 비밀번호를 확인해 주세요.");
						out.println("</div>");
					}
				%>
				
				<form class = "form-signin" action = "j_security_check" method = "post">
				<div class="form-floating mb-3">
					<input type = "text" class = "form-control" name = 'j_username'>
					<label for="floatingInput">ID</label>
				</div>
				
				<div class="form-floating mb-3">
					<input type = "password" class = "form-control" name = 'j_password'>
					<label for = "floatingInput">Password</label>
				</div>
				
				<button class = "btn btn-lg btn-success" type = "submit">로그인</button>
				</form>
			</div>
		</div>
	</div>
	<footer class = "pt-3 mt-4 text-body-secondary border-top">
	&copy; Car ShowRoom (2018225109 강경현)
	</footer>
</div>
</body>
</html>