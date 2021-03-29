<%@ page language="java" contentType="text/html; charset=windows-1256"
	pageEncoding="windows-1256"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.*"%>
<%@ page import="com.DbManager"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">

<jsp:useBean id="upload" scope="session" class="java.lang.String" />

<html>
<head>
<meta http-equiv="Content-Type"
	content="text/html; charset=windows-1256">
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
<style type="text/css">
body {
	background-color: #3410C6
}
</style>
<title>Administrator Page</title>
</head>
<body>
	<img class="print" align="right" style="padding-right: 39px;"
		src="./images/logo.png" width="400" height="67" />
	<h1>
		<font size="6" class="div" color="cornsilk"
			style="padding-left: 40px;">Admin</font>
	</h1>
	<a href="/FileDownload/LogoutServlet"
		style="float: top; padding-left: 1400px;"><font size="2"
		class="div" color="cornsilk">Logout</font></a>
	<FORM ACTION="UploadFileServlet" name="adminForm" METHOD="POST"
		enctype="multipart/form-data">
		<table border="1" style="height: 600px; background-color: #10B7C6;"
			align="center" width="95%" cellpadding="0" cellspacing="0">
			<tr>
				<td align="left" style="padding-left: 10px; padding-top: 10px"
					valign="top"><a href="DownloadFileServlet">Go To Download
						Page</a></td>
			</tr>

			<tr>
				<td align="center" style="padding-left: 60px" valign="center">
					<font size="3" style="font-family: fantasy; color: black">Select
						File to Upload:</font> <input type="file" name="fileName"
					style="width: 20%; font-size: 1.0em;"
					class="btn btn-large btn btn-success btn-lg btn-block">
				</td>
			</tr>
			<tr>
				<td align="center" style="padding-left: 60px; padding-top: 20px"
					valign="top"><input name="adminUser" type="submit"
					value="Upload" style="width: 20%; font-size: 1.0em;"
					class="btn btn-large btn btn-success btn-lg btn-block" /></td>
			</tr>
			
		</table>
		<%
			String fileupload = (String) session.getAttribute("upload");

			if (fileupload != null && fileupload.equals("upload")) {
		%>
		<div style="color: red">File uploaded successfully</div>

		<%
			}
			session.removeAttribute("upload");
		%>
	</FORM>
</body>
</html>