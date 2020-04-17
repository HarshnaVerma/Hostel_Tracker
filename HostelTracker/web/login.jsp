<!DOCTYPE html>
<html>
<head>
    <title>LOGIN </title>
    <script type="text/javascript">
        function validateForm() {
            var email = document.getElementById("email");
            var atposition = email.indexOf("@");
            var dotposition = email.lastIndexOf(".");
            if (email === null || email === "") {
                alert("Email is required !");
                return false;
            }

            else if (atposition < 1 || dotposition < atposition + 2 || dotposition + 2 >= email.length) {
                alert("Please enter a valid e-mail address \n");
                return false;
            }
            else {
                return true;
            }


        }

        function test_strr() {
            var res;
            var str = document.getElementById("psw").value;

            if (psw === null || psw === "") {
                alert("Password is required !");
                return false;
            }
            else if (str.match(/[a-z]/g) && str.match(/[A-Z]/g) && str.match(/[0-9]/g) && str.match(/[^a-zA-Z\d]/g) && str.length >= 8)
                res = "TRUE";
            else {
                alert("password must be 8 character having atleast one uppercase letter and a digit and a special character");
                return false;
            }
        }
    </script>
    <link rel="stylesheet" href="style.css">
</head>

<body class="sansserif2">
    <div id="upper" class="menu">
        <img src="logo.png" align="left" class="main-logo">
        <a href="register.jsp" class="right"> Register</a>
        <a href="AboutUs.jsp"> About us </a>
        <a href="index.jsp">Home</a>
    </div>

    <form action="LoginController" method="post" name="form1">
        <br>
        <br><br>
        <h1>LOGIN</h1>
        <table align="center" id="td2">
            <tr>
                <td><label><b>Email</b></label></td>
                <td><input type="text" placeholder="Email" id="email" onblur="validateForm()" name="email"></td>
            </tr>
            <tr>
                <td><label><b>password</b></label></td>
                <td><input type="password" id="psw" onblur="test_strr()" name="psw" placeholder="Password"></td>
            </tr>
            <tr></tr>
            <tr></tr>
            <tr></tr>
            <br>
            <br>
            <tr></tr>
        </table>
        <p id="submitlog">
            <input type="submit" name="submit" id="login" value="Login" class="loginbtn">
        </p>
        
    </form>
    <footer>
        Copyright @ SGSITS IT, 2020
    </footer>
</body>
</html>
