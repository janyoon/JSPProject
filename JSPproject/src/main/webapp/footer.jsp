<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 <div class="container">
<%@ page import="java.util.Date" %>

<div style="clear:both;"></div>
<br>
  <div class="container">
  <footer class="d-flex flex-wrap justify-content-between align-items-center py-3 my-4 border-top">
    <div class="col-md-4 d-flex align-items-center">
      <a href="/" class="mb-3 me-2 mb-md-0 text-body-secondary text-decoration-none lh-1">
        <svg class="bi" width="30" height="24"><use xlink:href="#bootstrap"/></svg>
      </a>
      <span class="mb-3 mb-md-0 text-body-secondary"><p>&copy; JSPproject</p>
       <%
	  	Date day= new java.util.Date();
	  	String am_pm;
	  	int hour = day.getHours();
	  	int minute = day.getMinutes();
	  	int second = day.getSeconds();
	  	if (hour /12 == 0) {
	  		am_pm = "AM";
	  	} else {
	  		am_pm = "PM";
	  		hour = hour - 12;
	  		String CT = hour + ":" + minute + ":" + second + " " + am_pm;
	  		out.println("접속 시각: " + CT + "\n");
	  	}
	  %>
	  </span>
    </div>

    <ul class="nav col-md-4 justify-content-end list-unstyled d-flex">
      <li class="ms-3"><a class="text-body-secondary" href="#"><svg class="bi" width="24" height="24"><use xlink:href="#twitter"/></svg></a></li>
      <li class="ms-3"><a class="text-body-secondary" href="#"><svg class="bi" width="24" height="24"><use xlink:href="#instagram"/></svg></a></li>
      <li class="ms-3"><a class="text-body-secondary" href="#"><svg class="bi" width="24" height="24"><use xlink:href="#facebook"/></svg></a></li>
    </ul>
  </footer>
</div>
   
  	