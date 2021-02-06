<%@ page import = "java.util.*" %>
<%@ page import = "java.io.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<%! 
String Book1,Book2,Book3,Book4,Book1cost,Book2cost,Book3cost,Book4cost;
int Book1amt=0,Book2amt=0,Book3amt=0,Book4amt=0;%>
<% 
//remove all jsp
Book1cost = request.getParameter("Book1cost");
Book2cost = request.getParameter("Book2cost");
Book3cost = request.getParameter("Book3cost");
Book4cost = request.getParameter("Book4cost");

Book1 = request.getParameter("Book1");
Book2 = request.getParameter("Book2");
Book3 = request.getParameter("Book3");
Book4 = request.getParameter("Book4");

%>
<body>

<%
if(Book1 != null && !Book1.equals("")) {
	Book1amt = Integer.parseInt(Book1cost) * Integer.parseInt(Book1);
	if(session.getAttribute("Book1amt") != null) {
		Book1amt = Book1amt + Integer.parseInt(session.getAttribute("Book1amt").toString());
	}
	
	session.setAttribute("Book1amt", Book1amt+"");
}
if(Book2 != null && !Book2.equals("")) {
	Book2amt = Integer.parseInt(Book2cost) * Integer.parseInt(Book2);
	if(session.getAttribute("Book2amt") != null) {
		Book2amt = Book2amt + Integer.parseInt(session.getAttribute("Book2amt").toString());
	}
	session.setAttribute("Book2amt", Book2amt+"");
}
if(Book3 != null && !Book3.equals("")) {
	Book3amt = Integer.parseInt(Book3cost) * Integer.parseInt(Book3);
	if(session.getAttribute("Book3amt") != null) {
		Book3amt = Book3amt + Integer.parseInt(session.getAttribute("Book3amt").toString());
	}
	session.setAttribute("Book3amt", Book3amt+"");
}
if(Book4 != null && !Book4.equals("")) {
	Book4amt = Integer.parseInt(Book4cost) * Integer.parseInt(Book4);
	if(session.getAttribute("Book4amt") != null) {
		Book4amt = Book4amt + Integer.parseInt(session.getAttribute("Book4amt").toString());
	}
	session.setAttribute("Book4amt", Book4amt+"");
}
response.sendRedirect("./additem.html");
%>
</body>
</html>