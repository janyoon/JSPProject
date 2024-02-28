<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String sessionId = (String) session.getAttribute("sessionId");
%>
 <nav class="py-0 text-bg-dark border-bottom">
    <div class="container d-flex flex-wrap">
      <ul class="nav me-auto">
      	<c:choose>
	      	<c:when test="${empty sessionId}">
		        <li class="nav-item"><a href="<c:url value="/member/loginMember.jsp"/>" class="nav-link px-2 text-white" aria-current="page">Login</a></li>
		        <li class="nav-item"><a href='<c:url value="/member/addMember.jsp"/>' class="nav-link  px-2 text-white">Sign-Up</a></li>
	       	</c:when>
			<c:otherwise>
				<li style="padding-top: 7px; color: white">[<%=sessionId%>님]</li>
					<li class="nav-item"><a class="nav-link text-white" href="<c:url value="/member/logoutMember.jsp"/>">Logout</a></li>
					<li class="nav-item"><a class="nav-link text-white" href="<c:url value="/member/updateMember.jsp"/>">my page</a></li>
			</c:otherwise>
		</c:choose>
      </ul>
    </div>
  </nav>
  <header class="p-2 border-bottom">
    <div class="container">
      <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
        <a href="<c:url value="/Main.jsp"/>" class="d-flex align-items-center mb-2 mb-lg-0 text-dark text-decoration-none">
            <span class="fs-4"><b>Fsf</b></span>
        </a>
        <div class="dropdown text-end">
            <a href="#" class="d-block link-body-emphasis ps-3 text-decoration-none dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
          		Product
            </a>
            <ul class="dropdown-menu text-small">
              <li><a class="dropdown-item" href="<c:url value="/Chairproduct.jsp"/>">Chair</a></li>
              <li><a class="dropdown-item" href="<c:url value="/Tableproduct.jsp"/>">Table</a></li>
              <li><a class="dropdown-item" href="<c:url value="/Sofaproduct.jsp"/>">Sofa</a></li>
            </ul>
          </div>
        <ul class="nav col-12 col-lg-auto me-lg-auto mb-2 px-3 justify-content-center mb-md-0">
            <li><a href="<c:url value="/cart.jsp"/>" class="nav-link px-2 text-dark text-secondary ">CART</a></li>
            <li><a href="<c:url value="/BoardListAction.do?pageNum=1"/>" class="nav-link px-2 text-dark">QnA</a></li>
        </ul>

        <form class="col-12 col-lg-auto mb-3 mb-lg-0" role="search">
            <input type="search" class="form-control" placeholder="Search..." aria-label="Search">
          </form>

          <div class="dropdown text-end">
            <a href="#" class="d-block link-body-emphasis px-3 text-decoration-none dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
              	<svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-balloon-heart-fill" viewBox="0 0 16 16">
 				 	<path fill-rule="evenodd" d="M8.49 10.92C19.412 3.382 11.28-2.387 8 .986 4.719-2.387-3.413 3.382 7.51 10.92l-.234.468a.25.25 0 1 0 .448.224l.04-.08c.009.17.024.315.051.45.068.344.208.622.448 1.102l.013.028c.212.422.182.85.05 1.246-.135.402-.366.751-.534 1.003a.25.25 0 0 0 .416.278l.004-.007c.166-.248.431-.646.588-1.115.16-.479.212-1.051-.076-1.629-.258-.515-.365-.732-.419-1.004a2 2 0 0 1-.037-.289l.008.017a.25.25 0 1 0 .448-.224l-.235-.468ZM6.726 1.269c-1.167-.61-2.8-.142-3.454 1.135-.237.463-.36 1.08-.202 1.85.055.27.467.197.527-.071.285-1.256 1.177-2.462 2.989-2.528.234-.008.348-.278.14-.386"/>
				</svg>
            </a>
            <ul class="dropdown-menu text-small">
	            <c:choose>
			       	<c:when test="${sessionId eq 'admin' }">
			       		<li><a class="dropdown-item" href="<c:url value="/addProduct.jsp"/>">제품 등록</a></li>
			            <li><a class="dropdown-item" href="<c:url value="/editProduct.jsp?edit=update"/>">제품 수정</a></li>
			            <li><a class="dropdown-item" href="<c:url value="/editProduct.jsp?edit=delete"/>">제품 삭제</a></li>
			       	</c:when>	
				</c:choose>
              <li><hr class="dropdown-divider"></li>
              <li><a class="dropdown-item" href="<c:url value="/member/logoutMember.jsp"/>">Sign out</a></li>
            </ul>
          </div>
        </div>
      </div>
  </header>