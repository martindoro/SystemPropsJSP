<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>System properties printout</title>
</head>
<body>
	<h1>System properties printout:</h1>
	<p>
	<table border="1">
	<%
java.util.Properties prop = new java.util.Properties(System.getProperties());
java.util.Enumeration<?> keys = prop.propertyNames();
while(keys.hasMoreElements()) {
String key = (String)keys.nextElement();
String value = System.getProperty(key);
%>
<tr>
<td><%= key %></td>
<td><%= value %></td>
<% } %>
</table>
</body>
</html>