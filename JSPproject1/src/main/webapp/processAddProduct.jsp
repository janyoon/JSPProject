<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.oreilly.servlet.*"%>
<%@ page import="com.oreilly.servlet.multipart.*"%>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<%@ include file="dbconn.jsp" %>

<% 
    request.setCharacterEncoding("UTF-8");
	
	String filename = "";
	String realFolder = getServletContext().getRealPath("/") + "upload2";
	System.out.println(realFolder);
	
	String encType = "utf-8"; //인코딩 타입
	int maxSize = 5 * 1024 * 1024; //최대 업로드될 파일의 크기5Mb
	
	MultipartRequest multi = new MultipartRequest(request, realFolder, maxSize, encType,
			new DefaultFileRenamePolicy());

    String productId = multi.getParameter("productId");
    String name = multi.getParameter("name");
    String unitPrice = multi.getParameter("unitPrice");
    String description = multi.getParameter("description");
    String category = multi.getParameter("category");
    String manufacturer = multi.getParameter("manufacturer");
    String unitsInStock = multi.getParameter("unitsInStock");
    String size = multi.getParameter("size");

    Enumeration files = multi.getFileNames();
	String fname = (String) files.nextElement();
	String fileName = multi.getFilesystemName(fname);
	
	//dbconn.jsp에 이미 pstmt가 선언되어 있었는데 include file로 불러와서 변수 중복 선언되었음.
	PreparedStatement pstmt = null;
	
	String sql = "insert into product values(?,?,?,?,?,?,?,?,?)";
	
	pstmt = conn.prepareStatement(sql);
	
	pstmt.setString(1, productId);
	pstmt.setString(2, name);
	pstmt.setString(3, unitPrice);
	pstmt.setString(4, description);
	pstmt.setString(5, category);
	pstmt.setString(6, manufacturer);
	pstmt.setString(7, unitsInStock);
	pstmt.setString(8, size);
	pstmt.setString(9, fileName);
	

	pstmt.executeUpdate();
	
	if (pstmt != null)
 		pstmt.close();
 	if (conn != null)
		conn.close();
	
 	response.sendRedirect("Main.jsp");
%>