<%@ page import = "java.util.*" %>
<%@ page import = "java.io.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<%!
int total;

Enumeration en;
String Book1amt,Book2amt,Book3amt,Book4amt,name,value;
%>
<body>
<% 
total = 0; 

en = session.getAttributeNames();
Book1amt = "";
Book2amt = "";
Book3amt="";
Book4amt = "";
while(en.hasMoreElements()){
	name = en.nextElement().toString();
	value = session.getAttribute(name).toString();
	total += Integer.parseInt(value);
}
if(session.getAttribute("Book1amt") != null) {
	Book1amt = session.getAttribute("Book1amt").toString();
}
if(session.getAttribute("Book2amt") != null) {
	Book2amt = session.getAttribute("Book2amt").toString();
}
if(session.getAttribute("Book3amt") != null) {
	Book3amt = session.getAttribute("Book3amt").toString();
}
if(session.getAttribute("Book4amt") != null) {
	Book4amt = session.getAttribute("Book4amt").toString();
}
session.invalidate(); 
%>
<table border=2 style="background-color:pink">
<tr><td>Book1:</td><td><%=Book1amt %></td></tr>
<tr><td>Book2:</td><td><%=Book2amt %></td></tr>
<tr><td>Book3:</td><td><%=Book3amt %></td></tr>
<tr><td>Book4:</td><td><%= Book4amt %></td></tr>
<tr><td>Total amount:</td><td><%= total %></td></tr>
</table>
</body>
</html>