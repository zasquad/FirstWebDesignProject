<%@ page language = "java" %> 
<html>
<head>
<title>createtable</title>
</head>
<body style="color: white; background-color: rgb(8, 8, 8);"
alink="#000099" link="#000099" vlink="#990099">
<br><br>
<% String name = request.getParameter("Name");
   int rows = Integer.parseInt(request.getParameter("Rows"));
   int columns = Integer.parseInt(request.getParameter("Columns"));
   if(rows <= 0)
   {
	   response.sendRedirect("classexercise.jsp?Error=1&Name="+name);
   }
   else if(columns <= 0)
   {
	   response.sendRedirect("classexercise.jsp?Error=2&Name="+name);
   }
   out.println("Hello " +name + ". Here is your table.");
   out.println("<table style=\"text-align: left; width: 100%;\" border=\"1\" cellpadding=\"2\" cellspacing=\"2\">");
   for(int i=1;i<=rows;i++)
   {
	   out.println("<tr>"); 
	   for(int j=1;j<=columns;j++) {
		out.println("<td>"+i +","+j+"</td>");  
	   
	   }
	   out.println("</tr>"); 
   }
   out.println("</table>");
%>
<br>
<br>
</body>
</html>

