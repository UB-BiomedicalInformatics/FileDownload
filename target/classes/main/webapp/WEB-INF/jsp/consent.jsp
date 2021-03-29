<%@ page language="java" contentType="text/html; charset=windows-1256"
	pageEncoding="windows-1256"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">

<jsp:useBean id="userName" scope="session" class="java.lang.String" />
<jsp:useBean id="investigator" scope="session" class="java.lang.String" />
<jsp:useBean id="projTitle" scope="session" class="java.lang.String" />
<jsp:useBean id="noStudyDetails" scope="session"
	class="java.lang.String" />

<html>
<head>
<meta http-equiv="Content-Type"
	content="text/html; charset=windows-1256">
<title>License Page</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<style type="text/css">
body {
	background-color: #3410C6
}
</style>
</head>
<body>
	<img class="print" align="right" style="padding-right: 39px;"
		src="./images/logo.png" width="400" height="67" />
	<h1>
		<font size="6" class="div" color="cornsilk"
			style="padding-left: 40px;">License Agreement</font>

	</h1>
	<script type="text/javascript">
		function EnableSubmit() {
			document.consent.submitConsent.disabled = true;
			if (document.consent.checkbox.checked == true) {
				document.consent.submitConsent.disabled = false;
			}
			if (document.consent.checkbox.checked == false) {
				document.consent.submitConsent.enabled = false;
			}
		}
	</script>
	<a href="/FileDownload/LogoutServlet"
		style="float: top; padding-left: 1400px;"><font size="2"
		class="div" color="cornsilk">Logout</font></a>
	<form name="consent" method="post" action="RegServlet">

		<table style="height: 600px; background-color: #10B7C6;"
			align="center" width="95%" cellpadding="0" cellspacing="0">

			<tr height="100px">
				<td align="center"
					style="padding-left: 300px; padding-right: 300px; padding-top: 200px"
					valign="middle"><b> <a rel="license"
						href="http://creativecommons.org/licenses/by/4.0/"><img
							alt="Creative Commons License" style="border-width: 0"
							src="https://i.creativecommons.org/l/by/4.0/88x31.png" /></a><br />This
						work is licensed under a <a rel="license"
						href="http://creativecommons.org/licenses/by-nc-sa/4.0/">Creative
							Commons Attribution 4.0 International License</a>.
				</b></td>
			</tr>
			<tr height="80px">
				<td align="center">I Agree&nbsp;<input type="checkbox"
					name="checkbox" value="Accept" onClick="EnableSubmit()"></td>
			</tr>
			<tr>
				<td align="center" style="padding-left: 60px" valign="top"><input
					name="submitConsent" type="submit" value="Submit"
					style="width: 20%; font-size: 1.0em;"
					class="btn btn-large btn btn-success btn-lg btn-block" disabled /></td>
			</tr>
		</table>
		<%
			session.removeAttribute("investigator");
			session.removeAttribute("projTitle");
			session.removeAttribute("noStudyDetails");
		%>
	</form>
</body>
</html>
