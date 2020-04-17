    <!DOCTYPE html>  
      
    <html>  
    
    <head>
        <title>Hostels list</title>
        <link rel="stylesheet" href="styleR.css">
    </head>
    
   <body>
      
    <%@page import="com.hostel.dao.HostelDao,com.hostel.bean.*,java.util.*"%>  
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
     
    
    <div id="upper" class="menu">
        <img src="logo.png" align="left" class="main-logo">
        <a href="AboutUs.jsp"> About us </a>
	<a href="register.jsp" class="right"> Upload Hostel Details</a>
        <a href="index.jsp">Home</a>
        
        
</div>
    <h1 align="center">Hostels List</h1>  
      
    <%  
    List<Hostel> list=HostelDao.getAllRecords();  
    request.setAttribute("list",list);  
    %>  
      
    <table border="1" width="90%">  
    <tr><th>Id</th><th>Owner Name</th><th>Contact</th><th>Hostel Name</th>  
    <th>Hostel Address</th><th>Hostel Rent</th><th>Hostel Description</th><th>Image</th></tr>  
    <c:forEach items="${list}" var="u">  
    
    
    
    <tr>
        <td>${u.getId()}</td>
        <td>${u.getName()}</td>
        <td>${u.getContact()}</td>  
        <td>${u.getHostelName()}</td>
        <td>${u.getHostelAdd()}</td>
        <td>${u.getHostelRent()}</td>  
        <td>${u.getHostelDesc()}</td>
        <td>${u.getHostelImg()}</td>
        
    
    </tr>
    </c:forEach>  
    </table>  
     
     
    </body>  
    </html>  