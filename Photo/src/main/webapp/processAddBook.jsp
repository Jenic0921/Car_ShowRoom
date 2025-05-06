<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dto.Book" %>
<%@ page import="dao.BookRepository" %>
<%@ page import="com.oreilly.servlet.*" %>
<%@ page import="com.oreilly.servlet.multipart.*" %>
<%@ page import="java.util.*" %>
<%@ page import = "java.sql.*" %>
<%@ include file = "dbconn.jsp" %>

<%
    request.setCharacterEncoding("UTF-8");

    String filename = "";
    String uploadpath;
    boolean ret = System.getProperty("os.name").toLowerCase().startsWith("windows");
    if( ret==true ) uploadpath = "D://uploads";           // 윈도우 업로드경로
    else uploadpath = System.getProperty("catalina.base") + "/webapps/uploads/kkh990921";     // 우분투 업로드경로
    int maxSize = 5 * 1024 * 1024;
    String encType = "utf-8";

        MultipartRequest multi = new MultipartRequest(request, uploadpath, maxSize, encType, new DefaultFileRenamePolicy());

        String bookId = multi.getParameter("bookId");
        String name = multi.getParameter("name");
        String unitPrice = multi.getParameter("unitPrice");
        String publisher = multi.getParameter("publisher");
        String description = multi.getParameter("description");
        String category = multi.getParameter("category");
        String condition = multi.getParameter("condition");

        Enumeration files = multi.getFileNames();
        String fname = (String)files.nextElement();
        String fileName = multi.getFilesystemName(fname);

        Integer price;

        if (unitPrice.isEmpty())
            price = 0;
        else
            price = Integer.valueOf(unitPrice);
     
        BookRepository dao = BookRepository.getInstance();

        Book newBook = new Book();
        newBook.setBookId(bookId);
        newBook.setName(name);
        newBook.setUnitPrice(price);
        newBook.setPublisher(publisher);
        newBook.setDescription(description);
        newBook.setCategory(category);
        newBook.setCondition(condition);
        newBook.setFilename(fileName);

        dao.addBook(newBook);

        PreparedStatement pstmt = null;
        
        String sql = "INSERT INTO book (id, name, unitPrice, description, publisher, category, fileName) VALUES(?,?,?,?,?,?,?)";
        
        pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, bookId);
        pstmt.setString(2, name);
        pstmt.setInt(3, price);
        pstmt.setString(4, description);
        pstmt.setString(5, publisher);
        pstmt.setString(6, category);
        pstmt.setString(7, fileName);
        pstmt.executeUpdate();
        
        if (pstmt!=null)
        	pstmt.close();
        if (conn!=null)
        	conn.close();
        
        response.sendRedirect("books.jsp");
    
%>
