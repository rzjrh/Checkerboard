 <!-- Author: Reza Akhlaqi 	7-30-2019 -->
 
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>



<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath}/style.css" />
<title>Checker Board Assignmenr</title>
</head>

<body>

<div class = "container">
	
	<% 
	int width = 7; 
	int height = 5;
	
	if (request.getParameter("width") != null){
			width = Integer.parseInt(request.getParameter("width"));
	}
	
	if (request.getParameter("height") != null){
		height = Integer.parseInt(request.getParameter("height"));
	}
	
	%>
	
	<h1>Here is the Checker Board <br>blocks in width: <%= width %>  <br>blocks in height: <%= height %> </h1>
	
	
	<% for(int i = 0; i<height; i++){
		if(i%2 == 0){%>
		<div class="roweven">
			<% for(int j=0; j<width; j++){
				if(j%2 == 0){%>
					<div class="one"></div>
				<%} else {%>
					<div class="two"></div>
				<%}
			}%>
			</div>
		<%} else{%>
			<div class="rowodd">
			<%for(int j=0; j<width; j++){
				if(j%2 == 0){%>
					<div class="one"></div>
				<%} else {%>
					<div class="two"></div>
				<%}
			}%>
			</div>
		<%} %>
	<%} %>
	</div>

</body>
</html>