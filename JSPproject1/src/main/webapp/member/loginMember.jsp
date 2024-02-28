<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
<title>Login</title>
</head>
<body>
	<jsp:include page="/menu.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">로그인</h1>
		</div>
	</div>
	<div class="container" align="center">
		<div class="col-md-4 col-md-offset-4">
			<h3 class="form-signin-heading">Please sign in</h3>
			<%
				String error = request.getParameter("error");
				if (error != null) {
					out.println("<div class='alert alert-danger'>");
					out.println("아이디와 비밀번호를 확인해 주세요");
					out.println("</div>");
				}
			%>
			<form class="form-signin" action="processLoginMember.jsp" method="post">

				<div class="form-group">
					<label for="inputUserName" class="sr-only">User Name</label> <input
						type="text" class="form-control" placeholder="ID" name='id'
						required autofocus>
				</div>
				<div class="form-group">
					<label for="inputPassword" class="sr-only">Password</label> <input
						type="password" class="form-control" placeholder="Password"
						name='password' required>
				</div>
				<button class="btn btn btn-lg btn-success btn-block" type="submit">로그인</button>

			</form>
		</div>
	</div>
	<jsp:include page="/footer.jsp"/>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
</body>
</html>