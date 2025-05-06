<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.Date" %>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0hN7BS0uLmNfzFwjz8f8A0CJa6gYPLb8iRNyARTh/g7x9UDRb5qUpJ2ujDOrz2x" crossorigin="anonymous">

<html>
<head>
	<link 04 href= "https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/
	bootstrap.min.css" rel = "stylesheet">
<meta charset="UTF-8">
<title>Car ShowRoom</title>
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
                <a href="books.jsp" style="background-color: #fff; color: #000; padding: 10px 20px; text-decoration: none; font-size: 18px; font-weight: bold;">자동차 전시장</a>
            </div>
        </div>
    </header>
</div>

<div class="slider-wrapper">
    <div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="./resources/images/CAR/HYUNDAI.jpg" class="d-block w-100" alt="HYUNDAI" width="500" height="550">
            </div>
            <div class="carousel-item">
                <img src="./resources/images/CAR/KIA.jpg" class="d-block w-100" alt="KIA" width="500" height=550">
            </div>
            <div class="carousel-item">
                <img src="./resources/images/CAR/GENESIS1.png" class="d-block w-100" alt="GENESIS" width="500" height="550">
            </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<style>
    .slider-wrapper {
        overflow: hidden;
        width: 100%;
        margin: 0 auto;
    }

    .carousel-inner {
        display: flex;
        transition: transform 1s ease;
    }

    .carousel-item {
        width: 100%;
        flex: 0 0 auto;
    }
</style>

<script>
    $(document).ready(function () {
        setInterval(function () {
            $('.carousel').carousel('next');
        }, 2000); 
    });
</script>

</html>
		<%
			response.setIntHeader("Refresh", 5);
			Date day = new java.util.Date();
			String am_pm;
			int hour = day.getHours();
			int minute = day.getMinutes();
			int second = day.getSeconds();
			if (hour / 12 == 0) {
				am_pm = "AM";
			} else {
				am_pm = "PM";
				hour = hour - 12;
			}
			String CT = hour + ":" + minute + ":" + second + "	" + am_pm;
			out.println("현재 접속 시각 : " + CT + "\n");
		%>
	
	<footer class = "pt-3 mt-4 text-body-secondary border-top">
	&copy; Car ShowRoom (2018225109 강경현)
	</footer>
</body>
</html>