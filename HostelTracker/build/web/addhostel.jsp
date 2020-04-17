<%@page import="com.hostel.dao.HostelDao"%>  
<jsp:useBean id="u" class="com.hostel.bean.Hostel"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
  
<%  
int i=HostelDao.save(u);  
if(i>0){  
response.sendRedirect("addhostel-success.jsp");  
}else{  
response.sendRedirect("addhostel-error.jsp");  
}  
%>