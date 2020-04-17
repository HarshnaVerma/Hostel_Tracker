<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript">
function validateForm(){
var name=document.getElementById("ownername").value;
var email = document.getElementById("email").value;
var psw = document.getElementById("psw").value;
var psw_r = document.getElementById("psw_r").value;
var atposition = email.indexOf("@");
var dotposition = email.lastIndexOf(".");
            if (name == null || name == "") {
                alert("Name field can't be empty");
                return false;
            }

            if (atposition < 1 || dotposition < atposition + 2 || dotposition + 2 >= email.length) {
                alert("Please enter a valid e-mail address \n");
                return false;
            }
            else if (psw == null || psw == "") {
                alert("Password is required !")
                return false;
            }
            else if (psw != psw_r) {
                alert("Password must be same !");
                return false;
            }
            else {
                alert("Registered successfully !!");
                return true;
            }
}


function phonevalidation(){

var a = document.getElementById("contact").value;
if(a=="")
{
	alert("please Enter the Contact Number");
	document.form.phone.focus();
	return false;
}
if(isNaN(a))
{
	alert("Enter the valid Mobile Number(Like : 9566137117)");
	document.form.phone.focus();
	return false;
}
if((a.length!==10))
{
	alert(" Enter a valid Mobile No.!");
	document.form.phone.select();
	return false;
}


}



function test_strr() { 
var res; 
var str = document.getElementById("psw").value; 
if (str.match(/[a-z]/g) && str.match( /[A-Z]/g) && str.match( /[0-9]/g) && str.match( /[^a-zA-Z\d]/g) && str.length >= 8) 
   res = "TRUE"; 
else
 {
alert("password must be 8 character having atkeast one uppercase letter and a digit and a special character");
 return false;
}
}

</script>

<link rel="stylesheet" href="style11.css">
</head>

<body class="sansserif">
    <div id="upper" class="menu">
        <img src="logo.png" align="left" class="main-logo">
        <a href="index.jsp">Home</a>
        <a href="AboutUs.jsp"> About us </a>
	<a href="login.jsp" > Login</a>
	<a href="register.jsp" > Register</a>
        
</div>

    <form action="RegistrationController" method="post" name="myform" onsubmit="return validateForm()">
    <h1>Register</h1>
    <p align="center">Please fill in this form to create an account.</p>
    <table align="center" id="td3">
        <tr>
            <td><label for="name"><b>Owner Name</b></label></td>
            <td><input type="text"   id="ownername"  name="ownername" placeholder="Enter Owner Name"/></td>
        </tr>
        <tr>
            <td> <label><b>Contact No.</b></td>
            <td> <input type="text"   id="contact" onblur="phonevalidation()" name="contact"  placeholder="Enter Contact No."/></td>
        </tr>
        <tr>
            <td><label for="email"><b>Email</b></label></td>
            <td><input type="text" placeholder="Enter Email"  id="email"  name="email"/></td>
        </tr> 
        
        <tr>
            <td> <label for="psw"><b>Password</b></label></td>
            <td> <input type="password" placeholder="Enter Password" id="psw" onblur="test_strr()" name="psw" /></td>
        </tr>
        <tr>
            <td><label for="psw-repeat"><b>Repeat Password</b></label></td>
            <td><input type="password" placeholder="Repeat Password"  id="psw_r" name="psw_r"/></td>
        </tr>
    </table>
    <p id="submission">
        <button type="submit" name="submit"  class="registerbtn">Register</button></p>

    <p>Already have an account? <a href="login.jsp">Sign in</a>.</p>
</form>
</body>
</html>


