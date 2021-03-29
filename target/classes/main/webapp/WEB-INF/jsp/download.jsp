<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.Map"%>
<%@ page import="java.util.HashMap"%>
<%@ page import="java.util.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
<style type="text/css">
body {
	background-color: #3410C6
}
</style>

<title>Download IRB File</title>

</head>
<body>
	<img class="print" align="right" style="padding-right: 39px;"
		src="./images/logo.png" width="400" height="67" />
	<h1>
		<font size="6" class="div" color="cornsilk"
			style="padding-left: 40px;">Download File</font>
	</h1>
	<a href="/FileDownload/LogoutServlet"
		style="float: top; padding-left: 1400px;"><font size="2"
		class="div" color="cornsilk">Logout</font></a>
	<form action="DownloadFileServlet" method="post"
		enctype="multipart/form-data">
		<table style="height: 600px; background-color: #10B7C6;"
			align="center" width="95%" cellpadding="0" cellspacing="0">
			<tr>
				<td align="center" style="padding-left: 60px" valign="bottom">
					<font size="3" class="div"
					style="font-family: fantasy; color: black">Download IRB
						Project</font>
				</td>
			</tr>
			<tr>
				<td align="center" style="padding-left: 60px; padding-top: 20px"
					valign="top"><input name="downloadFile" type="submit"
					value="Download" style="width: 20%; font-size: 1.0em;"
					class="btn btn-large btn btn-success btn-lg btn-block"></td>
			</tr>
			</FORM>
</body>
</html>