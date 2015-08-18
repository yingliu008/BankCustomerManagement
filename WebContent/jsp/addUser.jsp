<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>add new customer</title>
<script type="text/javascript" src="/js/jquery-2.1.4.js"></script>
<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
<script>
	$(document).ready(	
			function() {
				$("#phoneNum")
						.keyup(
								function() {
									
									var inputLength = $(this).val().length;
									var inputVal = $(this).val();
									var formatted;
									if (isNaN(inputVal)) {
										$(this).val(
												inputVal.slice(0,
														inputLength - 1));
									}
									if (inputLength == 10) {
										formatted = inputVal.substr(0, 3) + '-'
												+ inputVal.substr(3, 3) + '-'
												+ inputVal.substr(6, 4);
										$(this).val(formatted);
									}
								})
			})
			
</script>
</head>
<body bgcolor="#CED3FE">
    <img src="image/c1.jpg" />
   <hr>
   <center>
   <h1>Please input new customer's information</h1>
     <form action="userprocess.jsp?flag=addUser" method="post">
       <table border="1">
       <tr bgcolor="pink"><td>Name: </td><td><input type="text" name="userName"/></td></tr>
       <tr bgcolor="pink"><td>Password: </td><td><input type="text" name="passwd"/></td></tr>
       <tr bgcolor="pink"><td>Email: </td><td><input type="text" name="email"/></td></tr>
       <tr bgcolor="pink"><td>Phone Number: </td><td><input type="text" name="phoneNumber" id="phoneNum"/></td></tr>
       <tr bgcolor="pink"><td>Address: </td><td><input type="text" name="address"/></td></tr>

       </table>
       <br/>
       <input type="submit" value="Create"/> <input type="reset" value="clear"/>
     </form>
	<hr>
	<a href="home.jsp">Home</a> &nbsp; &nbsp; &nbsp;
	<a href="logoff.jsp">Log off</a>
   </center>
</body>
</html>