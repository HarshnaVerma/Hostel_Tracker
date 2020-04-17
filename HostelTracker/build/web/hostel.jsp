<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript">
function validation(){
var ownername=document.getElementById("ownername").value;
var contact= document.getElementById("contact").value;
var hostelname=document.getElementById("hostelname").value;
var hosteladd=document.getElementById("hosteladd").value;
var hostelrent=document.getElementById("hostelrent").value;
var hosteldesc=document.getElementById("hosteldesc").value;
var hostelimg=document.getElementById("hostelimg").value;


  if(ownername==="" ){
	alert("Name is required!");
   	return false;
}
else if(hostelname==="" ){
	alert("Hostel Name is required!");
   	return false;
}
else if(hosteladd==="" ){
	alert("Hostel address is required!");
   	return false;
}
else if(hostelrent==="" ){
	alert("Hostel rent is required!");
   	return false;
}
else if(contact==="" ){
	alert("Contact No. is required!");
        return false;
}
else if(hosteldesc==="" ){
	alert("Hostel Description is required!");
   	return false;
}
else if(hostelimg==="" ){
	alert("Hostel image is required!");
   	return false;
}

else{
	return true;
}

}


function phonevalidation(){

var a = document.getElementById("contact").value;
if(a==="")
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


</script>

<link rel="stylesheet" href="style1.css">
</head>

<body class="sansserif">
    <div id="upper" class="menu">
        <img src="logo.png" align="left" class="main-logo"><a href="index.jsp">Home</a>
	<a href="hostel.jsp"> Hostel </a>
        <a href="AboutUs.jsp"> About us </a>
	<a href="viewhostel.jsp" class="right"> Edit Hostels List</a>
	<a href="viewonly.jsp" class="right"> View Hostels List</a>
        <a href="LogoutController">Logout</a>
</div>
<form action="HostelDao"   method="post"   name = "form2" onsubmit="validation()" >
    <h1>Hostel Details</h1>
    <table align="center" id="td1">
        <tr>
            <td><label for="ownername"><b>Owner Name</b></label></td>
            <td><input type="text" placeholder="Enter Owner Name" name="ownername" id="ownername" /></td>
        </tr>
        <tr>
            <td><label for="contact"><b>Contact No.</b></label></td>
            <td><input type="text" placeholder="Enter Contact No." name="contact" id="contact" onblur="phonevalidation()"/></td>
        </tr>
        <tr>
            <td><label for="hostelname"><b>Hostel Name</b></label></td>
            <td><input type="text" placeholder="Enter Hostel Name" name="hostelname" id="hostelname" /></td>
        </tr>
        <tr>
          <td><label for="hosteladd"><b>Hostel Address</b></label></td>
         <td><input type="text" placeholder="Enter Hostel Address" name="hosteladd" id="hosteladd" /></td>
        </tr>
        <td><label for="rent"><b>Hostel Rent </b></label></td>
        <td><input type="text" placeholder="Hostel Rent" name="hostelrent" id="hostelrent" /></td>
    </tr>
    <tr>
    <td><label for="hosteldesc"><b>Hostel Description</b></label></td>
    <td><input type="text" placeholder="Enter Hostel Description" name="hosteldesc" id="hosteldesc" /></td>
    </tr>
    <tr>
        <td><label for="hostelimg"><b>Link for image</b></label></td>
   <td><input type="url" placeholder="Enter link" name="hostelimg" id="hostelimg" /><td>
    </table>
    <p id="submission">
        <button type="submit" name="submit" class="registerbtn" >Submit</button></p>
   
</form>
    <footer>
        
        Copyright @ SGSITS IT, 2020
    </footer>
</body>
</html>
