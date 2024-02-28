<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<%@ page import="java.sql.*"%>
<jsp:useBean id="productDAO" class="dao.ProductRepository" scope="session" />
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<meta charset="UTF-8">
<title>Chair Product</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
</head>
<body>
	<jsp:include page="menu.jsp" />
	<main  class="container">
		
		<div style="float: left;">
		<img src="./img/table3.jpg" width="647px" height="481px" class="mb-5">
		</div>
		<div style="border: 1px; margin:200px 30px 0px; float: left; width:400px;	">
      		<div class="fw-bold fs-3">글자넣자 글자</div>
        	<p>
	          "Lorem ipsum dolor sit amet, consectetur adipiscing elit,
	           sed do eiusmod tempor incididunt ut labore et dolore ma
	           gna aliqua. Ut enim ad minim veniam, quis nostrud exer
	           citation ullamco laboris nisi ut aliquip ex ea commodo co
	           nsequat. Duis aute irure dolor in reprehenderit in volupta
	           te velit esse cillum dolore eu fugiat nulla pariatur. Except
	           eur sint occaecat cupidatat non proident, sunt in culpa q
	           ui officia deserunt mollit anim id est laborum."
	        </p>
    	</div>
    </main>
    <div style="clear:both;"></div>
    
    <div class="container">
    	<div class="row" align="center">
    	<%@ include file="dbconn.jsp"%>
    		<%
    			PreparedStatement pstmt = null;
    			ResultSet rs = null;
    		
		    	String sql = "SELECT * FROM PRODUCT WHERE p_category = 'table'";
    		
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();
				while (rs.next()) {
   			 %>
    		<div class="col-sm-3">
    			<div style="align-items: flex-end; width:160px; height:160px; ">
					<img src="./resource/images/<%=rs.getString("p_filename")%>" style="width:150px; height:auto;" class=""  >
				</div>
	    			<p class="fs-4 fw-bold"><%=rs.getString("p_name") %></p>
	    			<p>price <%=rs.getString("p_unitprice") %> won</p>
	    			<p> <a href="./product.jsp?id=<%=rs.getString("p_id")%>" class="btn btn-secondary" role="button"> 상세 정보&raquo;</a>
    		</div>
    		<%
    			}
    		%>
    		<%	
			if (rs != null)
				rs.close();
 			if (pstmt != null)
 				pstmt.close();
 			if (conn != null)
				conn.close();
			%>
    	</div>
    </div>
	
	<jsp:include page="footer.jsp"/>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
</body>
</html>