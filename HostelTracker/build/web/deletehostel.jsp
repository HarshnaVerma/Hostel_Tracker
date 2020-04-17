S<%@page import="com.hostel.dao.HostelDao"%>  
<jsp:useBean id="u" class="com.hostel.bean.Hostel"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
<%  
HostelDao.delete(u);  
response.sendRedirect("viewhostel.jsp");  
%>