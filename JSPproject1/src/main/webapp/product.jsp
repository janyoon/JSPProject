<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="dto.Product" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<meta charset="UTF-8">
<title>상세 정보</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
<script type="text/javascript">
	function addToCart() {
		if (confirm("상품을 장바구니에 추가하시겠습니까?")) {
			document.addForm.submit();
		} else {		
			document.addForm.reset();
		}
	}
</script>
</head>
<body>
	<jsp:include page="menu.jsp" />
	<%@ include file="dbconn.jsp"%>
	<%
		String id = request.getParameter("id");
		PreparedStatement pstmt = null;
		ResultSet rs = null;
	
		/* ProductRepository dao = ProductRepository.getInstance();
		Product product = dao.getProductById(id); */
		
		String sql = "select * from product where p_id = '"+id+"'";
		System.out.println(sql);
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();
		if(rs.next()) {
	%>
	<div class="container">
	<main class="p-5 m-5 d-flex justify-content-center">
		<img src="./upload2/<%=rs.getString("p_filename")%>" width="610px" height="auto" >
	</main>
	</div>
	<div style="clear:both;"></div>
	<div class="container">
		<div class="w-50" style="float:left;">
			<div class="container text-center">
			  	<div class="row">
			    	<div class="col-12 fs-2 mb-3">
			     		<%=rs.getString("p_name") %>
			    	</div>
			    	<div class="col-12 fs-5">
			      		price <%=rs.getString("p_unitprice") %> won
			    	</div>
				</div>
			</div>
		</div>
		<div class="w-50" style="float:left;">
			<div class="container text-center">
			  	<div class="row">
			  		<div class="col-12 mb-1 pt-2">
			      		<b>Detail :</b> <%=rs.getString("p_description") %>
			    	</div>
			    	<div class="col-12 mb-1">
			      		<b>Size :</b> <%=rs.getString("p_size") %>
			    	</div>
			    	<div class="col-12">
			    		<b>Brand :</b> <%=rs.getString("p_manufacturer") %>
			    	</div>
			    	<div class="col-12 text-end">
			    		
						<p><form name="addForm" action="./addCart.jsp?id=<%=rs.getString("p_id")%>" method="post">
							<a href="#" class="btn btn-secondary" onclick="addToCart()"><svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-cart" viewBox="0 0 16 16">
		  							<path d="M0 1.5A.5.5 0 0 1 .5 1H2a.5.5 0 0 1 .485.379L2.89 3H14.5a.5.5 0 0 1 .491.592l-1.5 8A.5.5 0 0 1 13 12H4a.5.5 0 0 1-.491-.408L2.01 3.607 1.61 2H.5a.5.5 0 0 1-.5-.5M3.102 4l1.313 7h8.17l1.313-7zM5 12a2 2 0 1 0 0 4 2 2 0 0 0 0-4m7 0a2 2 0 1 0 0 4 2 2 0 0 0 0-4m-7 1a1 1 0 1 1 0 2 1 1 0 0 1 0-2m7 0a1 1 0 1 1 0 2 1 1 0 0 1 0-2"/>
									</svg> add cart&raquo;</a> 
							<a href="./cart.jsp" class="btn btn-info"> go cart&raquo;</a>
						</form>
			    	</div>
				</div>
			</div>
		</div>
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
	<jsp:include page="footer.jsp"/>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
</body>
</html>