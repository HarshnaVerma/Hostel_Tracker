    <!DOCTYPE html>  
    <html>  
    <head>  
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">  
    <title>Edit Details</title> 
    

<link rel="stylesheet" href="style1.css">
    </head>  
    <body class="sansserif">
    <div id="upper" class="menu">
        <img src="logo.png" align="left" class="main-logo"><a href="index.jsp">Home</a>
        <a href="AboutUs.jsp"> About us </a>
	<a href="login.jsp" class="right"> Login</a>
	<a href="register.jsp" class="right"> Register</a>
        <a href="LogoutController">Logout</a>
        
</div>
    <%@page import="com.hostel.dao.EditDao,com.hostel.bean.Hostel"%>  
      
    <%  
    String id=request.getParameter("id"); 
    int id1 = Integer.parseInt(id);
    Hostel u=EditDao.getRecordById(id1);  
    %>  
      
    <h1>Edit Form</h1>  
    
<form action="EditDao"   method="post" >
    <input type="hidden" name="id" value="<%=u.getId() %>"/>  
    
    <table align="center" id="td1">  
    
        <tr><td>Owner Name:</td><td>  
    <input type="text" name="ownername" value="<%= u.getName()%>"/></td></tr>  
    
    <tr><td>Contact:</td><td>  
    <input type="text" name="contact" value="<%= u.getContact()%>"/></td></tr>  
    
    <tr><td>Hostel Name:</td><td>  
    <input type="text" name="hostelname" value="<%= u.getHostelName()%>"/></td></tr>   
      
    <tr><td>Hostel Address:</td><td>  
    <input type="text" name="hosteladd" value="<%= u.getHostelAdd()%>"/></td></tr>  
 
         <tr><td>Hostel Rent:</td><td>  
    <input type="text" name="hostelrent" value="<%= u.getHostelRent()%>"/></td></tr>  

         <tr><td>Hostel Description:</td><td>  
    <input type="text" name="hosteldesc" value="<%= u.getHostelDesc()%>"/></td></tr>  
      
        <tr><td>Hostel Image:</td><td>  
    <input type="url" name="hostelimg" value="<%= u.getHostelImg()%>"/></td></tr>  
 
    <tr><td colspan="2"><input type="submit" value="Edit"/></td></tr>  
    </table>  
    </form>  
      
    </body>  
    </html>  