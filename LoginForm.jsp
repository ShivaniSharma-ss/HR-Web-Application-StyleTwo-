<jsp:useBean id='administratorBean' scope='request' class='com.thinking.machines.hr.beans.AdministratorBean' />
<jsp:useBean id='errorBean' scope='request' class='com.thinking.machines.hr.beans.ErrorBean' />
<!DOCTYPE html>
<html lang='en'>
<head>
<link rel='stylesheet' type='text/css' href='/styletwo/css/style.css'>
</head>
<body>
<!--  Main Container starts here  -->
<div class='main-container'>
<!--  header starts here  -->
<div class='header'>
<img src='/styletwo/images/logo.png' class='logo'>
<div class='brand-name'>Thinking Machines</div> 
</div><!-- header ends here  -->
<!--  content section starts here  -->
<div class='content'>
<div class='loginForm'>
<form action='/styletwo/Login.jsp' method='post'>
<table border='0'>
<tr>
<td colspan='2' align='center'>
<span class='error'>
${errorBean.error}
</span>
</td>
</tr>
<tr>
<td>Username</td>
<td> <input type='text' name='username' id='username' maxlength='15'></td>
</tr>
<tr>
<td>Password</td>
<td> <input type='password' name='password' id='password' maxlength='15'></td>
</tr>
<tr>
<td colspan='2' align='center'>
<button type='Submit'>Login</button>
</td>
</tr>
</table>
</form>
</div>
</div>
<!-- content section ends here  -->
<!-- footer starts here -->
<div class='footer'>
&copy;Thinking Machines 2020
</div>
<!-- footer ends here -->
</div> <!--  Main Container ends here  -->

</form>
</body>
</html>


