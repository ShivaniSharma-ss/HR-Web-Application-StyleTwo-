<%@ taglib uri='/WEB-INF/mytags/tmtags.tld' prefix='tm' %>
<tm:Guard>
<jsp:forward page='/LoginForm.jsp' />
</tm:Guard>
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
<div class ='username'>
<img src='/styletwo/images/user.png' />
${username}
<a href='/styletwo/logout'>Logout</a>
</div>
</div><!-- header ends here  -->
<!--  content section starts here  -->
<div class='content'>
<!-- left panel starts here -->
<div class='content-left-panel'>
<!-- In case of Designation Module -->
<tm:If condition='${module==DESIGNATION}'>
<b>Designations</b><br>
</tm:If>
<tm:If condition='${module!=DESIGNATION}'>
<a href='/styletwo/Designations.jsp'>Designations</a><br>
</tm:If>
<!-- In case of Employee Module -->
<tm:If condition='${module==EMPLOYEE}'>
<b>Employees</b><br>
</tm:If>
<tm:If condition='${module!=EMPLOYEE}'>
<a href='/styletwo/Employees.jsp'>Employees</a><br>
</tm:If>
<!-- In case of Home Page-->
<tm:If condition='${module!=HOME}'>
<br>
<a href='/styletwo/index.jsp'>Home</a><br>
</tm:If>
</div>
<!-- left panel ends here -->
<!-- right panel starts here -->
<div class='content-right-panel'>