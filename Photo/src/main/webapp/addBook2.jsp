<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href = "https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel = "stylesheet">
<meta charset="UTF-8">
<link rel = "stylesheet" href = "./resources/css/bootstrap.min.css" />
<script type = "text/javascript" src = "./resources/js/CarTest.js"></script>
<title>차량 등록</title>
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
            <p> <a href= "addBook2.jsp" style="background-color: #fff; color: #000; padding: 10px 20px; text-decoration: none; font-size: 18px; font-weight: bold;">신규 차량 등록하기</a>
                <a href="books2.jsp" style="background-color: #fff; color: #000; padding: 10px 20px; text-decoration: none; font-size: 18px; font-weight: bold;">자동차 전시장</a>
            </div>
        </div>
    </header>
	<div class = "row align-items-md-stretch">
		<div class = "mb-3 row">
	<a href = "logout.jsp" class = "btn btn-outline-success">logout</a>
		</div>
		<form name = "newBook" action = "./processAddBook2.jsp" class = "form-horizontal" method = "post" enctype="multipart/form-data">
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
	<footer class = "pt-3 mt-4 text-body-secondary border-top">
	&copy; Car ShowRoom (2018225109 강경현)
	</footer>
</div>
</body>
</html>