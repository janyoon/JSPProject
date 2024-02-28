<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
<title>상품 수정</title>
</head>
<body>
	<jsp:include page="menu.jsp" />
	<br>
    <div class="container">
        <div class="w-25 " style="float: left;">
            <p class="fw-bold" style="font-size: 85px;">Fsf</p>
            <h1 class="m-0 fw-bold">제품수정</h1>
        </div>
			<%@ include file="dbconn.jsp"%>
        <div class="bg-secondary bg-opacity-25 p-4" style="float: left;">
			<%
				PreparedStatement pstmt = null;
				ResultSet rs = null;
			
				String productId = request.getParameter("id");
		
				String sql = "select * from product where p_id = ?";
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, productId);
				rs = pstmt.executeQuery();
				if (rs.next()) {
			%>
			<div class="container">
				 <div class="form-group row mb-1">
					<div class="col-md-5">
						<img src="./upload2/<%=rs.getString("p_filename")%>" alt="image"
							style="width: 100%" />
					</div>
					<div class="col-md-7">
						<form name="newProduct" action="./processUpdateProduct.jsp"
							class="form-horizontal" method="post" enctype="multipart/form-data">
							<div class="form-group row">
								<label class="col-sm-2">상품 코드</label>
								<div class="col-sm-3">
									<input type="text" id="productId" name="productId"
										class="form-control" value='<%=rs.getString("p_id")%>'>
								</div>
							</div>
							<div class="form-group row">
								<label class="col-sm-2">상품명</label>
								<div class="col-sm-3">
									<input type="text" id="name" name="name" class="form-control"
										value="<%=rs.getString("p_name")%>">
								</div>
							</div>
							<div class="form-group row">
								<label class="col-sm-2">가격</label>
								<div class="col-sm-3">
									<input type="text" id="unitPrice" name="unitPrice"
										class="form-control" value="<%=rs.getString("p_unitPrice")%>">
								</div>
							</div>
							<div class="form-group row">
								<label class="col-sm-2">상세 설명</label>
								<div class="col-sm-5">
									<textarea name="description" cols="50" rows="2"
										class="form-control"><%=rs.getString("p_description")%></textarea>
								</div>
							</div>
							<div class="form-group row">
								<label class="col-sm-2">제조사</label>
								<div class="col-sm-3">
									<input type="text" name="manufacturer" class="form-control"
										value="<%=rs.getString("p_manufacturer")%>">
								</div>
							</div>
							<div class="form-group row">
								<label class="col-sm-2">분류</label>
								<div class="col-sm-3">
									<input type="text" name="category" class="form-control"
										value="<%=rs.getString("p_category")%>">
								</div>
							</div>
							<div class="form-group row">
								<label class="col-sm-2">제고 수</label>
								<div class="col-sm-3">
									<input type="text" id="unitsInStock" name="unitsInStock"
										class="form-control" value="<%=rs.getString("p_unitsInStock")%>">
								</div>
							</div>
							<div class="form-group row">
								<label class="col-sm-2">상세 설명</label>
								<div class="col-sm-5">
									<textarea name="size" cols="50" rows="2"
										class="form-control"><%=rs.getString("p_size")%></textarea>
								</div>
							</div>
							<div class="form-group row">
								<label class="col-sm-2">이미지</label>
								<div class="col-sm-5">
									<input type="file" name="productImage" class="form-control">
								</div>
							</div>
							<div class="form-group row">
								<div class="col-sm-offset-2 col-sm-10 ">
									<input type="submit" class="btn btn-primary" value="등록">
								</div>
							</div>
						</form>
		
					</div>
				</div>
			</div>
		</div>
	</div>
	<%
		}
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
