<html>
<head>
<meta content="text/html; charset=ISO-8859-1"
http-equiv="content-type">
<title>classexercise.html</title>
</head>
<body>
<form method="post" action="createtable.jsp" name="Table">Please enter
the dimensions of the desired table below:<br>
<%
	String anyErrors = request.getParameter("Error");
	String name = request.getParameter("Name");
	if(anyErrors != null && anyErrors.equals("1")){
		out.println("Hello "+name+": PLEASE PROVIDE A ROW VALUE >=1");
	}
	else if(anyErrors != null && anyErrors.equals("2")){
		out.println("Hello "+name+": PLEASE PROVIDE A COL VALUE >=1");
	}
%>
<br>
<table style="text-align: left; width: 100%;" border="1"
cellpadding="2" cellspacing="2">
<tbody>
<tr>
<td style="vertical-align: top; width: 379px;">Enter your name<br>
</td>
<td style="vertical-align: top; width: 286px;"><input
name="Name"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top; width: 379px;">Enter number of
rows<br>
</td>
<td style="vertical-align: top; width: 286px;"><input
name="Rows" value="1"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top; width: 379px;">Enter number of
columns<br>
</td>
<td style="vertical-align: top; width: 286px;"><input
name="Columns" value="1"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top; width: 379px;"><input
name="Submit" value="Submit" type="submit"><br>
</td>
<td style="vertical-align: top; width: 286px;"><input
name="Reset" value="Reset" type="reset"><br>
</td>
</tr>
</tbody>
</table>
</form>
<br>
<br>
</body>
</html>

