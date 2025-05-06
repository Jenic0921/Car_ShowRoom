<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.ArrayList" %>
<%@ page import = "dto.Book" %>
<%@ page import = "dao.BookRepository3" %>
<jsp:useBean id = "bookDAO" class = "dao.BookRepository" scope = "session" />
<html>
<head>
<link href = "https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel = "stylesheet">
<meta charset="UTF-8">
<title>차량 목록</title>
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
            <p> <a href= "member/loginMember.jsp" style="background-color: #fff; color: #000; padding: 10px 20px; text-decoration: none; font-size: 18px; font-weight: bold;">로그인</a>
            	<a href= "member/addMember.jsp" style="background-color: #fff; color: #000; padding: 10px 20px; text-decoration: none; font-size: 18px; font-weight: bold;">회원가입</a>
                <a href= "addBook3.jsp" style="background-color: #fff; color: #000; padding: 10px 20px; text-decoration: none; font-size: 18px; font-weight: bold;">신규 차량 등록하기</a>
                <a href="books3.jsp" style="background-color: #fff; color: #000; padding: 10px 20px; text-decoration: none; font-size: 18px; font-weight: bold;">자동차 전시장</a>
            </div>
        </div>
    </header>
<div class="h-container">
    <header class="header" style="display: flex; justify-content: space-between; align-items: center;">
        <div class="nevigation">
            <div class="showroom">
                <!-- Car Buttons -->
                 <div style="display: flex; justify-content: center; gap: 60px;">
                    <a href="books.jsp" class="btn btn-outline-primary me-2" data-bs-target="#carouselExampleControls" data-bs-slide-to="0" aria-label="Slide 1">현대</a>
                    <a href="books2.jsp" class="btn btn-outline-danger me-2" data-bs-target="#carouselExampleControls" data-bs-slide-to="1" aria-label="Slide 2">KIA</a>
                    <a href="books3.jsp" class="btn btn-outline-success" data-bs-target="#carouselExampleControls" data-bs-slide-to="2" aria-label="Slide 3">GENESIS</a>
                </div>
            </div>
        </div>
    </header>
</div>

<%@ include file = "dbconn.jsp" %>

<%-- 변경된 부분 시작 --%>
<div class="row">
    <%
    int count = 0;
    try {
        BookRepository3 dao = BookRepository3.getInstance();
        ArrayList<Book> listOfBooks=dao.getAllBooks();

        // 쿼리 실행
        String sql = "SELECT * FROM book3";
        PreparedStatement pstmt = null;
        pstmt = conn.prepareStatement(sql);
        ResultSet rs = null;
        rs = pstmt.executeQuery();

        // 결과 처리
        while (rs.next()) {
            if (count % 3 == 0 && count != 0) {
    %>
</div>
<div class="row">
    <%
            }
    %>
    <div class="col-md-4">
        <div class="h-100 p-2">
            <img src="/uploads/kkh990921/<%=rs.getString("filename")%>" style="width: 500px; height: 350px;"/>
            <h5><b><%=rs.getString("name") %></b></h5>
            <br> 제조사 : <%=rs.getString("publisher") %> | <%=rs.getString("unitPrice") %> 만원
            <p><%=rs.getString("description").substring(0, 60) %>...
            <p> <a href="./book3.jsp?id=<%=rs.getString("id") %>" class="btn btn-secondary" role="button"> 상세 정보 &raquo;></a>
        </div>
    </div>
    <%
        count++;
        }
        rs.close();
        pstmt.close();
    } catch (SQLException e) {
        e.printStackTrace(); // 예외 처리
    } finally {
        // 리소스 해제
        if (conn != null) {
            try {
                conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
    %>
</div>
<%-- 변경된 부분 끝 --%>

<footer class="pt-3 mt-4 text-body-secondary border-top">
    &copy; Car ShowRoom (2018225109 강경현)
</footer>
</div>

</body>
</html>
