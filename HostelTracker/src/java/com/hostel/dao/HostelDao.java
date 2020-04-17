package com.hostel.dao;

import java.sql.*;  
import java.util.ArrayList;  
import java.util.List;  
import com.hostel.bean.Hostel; 
import java.io.IOException;
import java.io.PrintWriter;
import java.io.FileInputStream;
import java.io.File;
import java.io.InputStream;
import java.io.OutputStream;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 import javax.servlet.http.Part;


public class HostelDao extends HttpServlet {

   public static Connection getConnection(){  
    Connection con=null;  
    try{  
        Class.forName("com.mysql.jdbc.Driver");  
        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hostel","root","root");  

    }catch(Exception e){System.out.println(e);}  
    return con;  
} 



 protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
  // TODO Auto-generated method stub
  response.setContentType("text/html");
  

         
  PrintWriter out = response.getWriter();
  String ownername = request.getParameter("ownername");
  String contact = request.getParameter("contact");
  String hostelname = request.getParameter("hostelname");
  String hosteladd = request.getParameter("hosteladd");
  String hostelrent = request.getParameter("hostelrent");  
  String hosteldesc = request.getParameter("hosteldesc");  
  String hostelimg = request.getParameter("hostelimg");
  
  

  if (ownername.isEmpty() || contact.isEmpty() || hostelname.isEmpty() || hosteladd.isEmpty() || hostelrent.isEmpty() || hosteldesc.isEmpty()  ) {
   RequestDispatcher rd = request.getRequestDispatcher("hostel.jsp");
   out.println("<font color=black>Please fill all the fields</font>");
   rd.include(request, response);
  } 
  else {
      int status=0;
		
      try{
          
        Connection con=getConnection();  

   
      String query = "insert into hosteld(ownername,contact,hostelname,hosteladd,hostelrent,hosteldesc,hostelimg) values(?,?,?,?,?,?,?)";

    PreparedStatement ps = con.prepareStatement(query); // generates sql query

        ps.setString(1,ownername);  
        ps.setString(2,contact);  
        ps.setString(3,hostelname);  
        ps.setString(4,hosteladd);  
        ps.setString(5,hostelrent); 
        ps.setString(6,hosteldesc);
        ps.setString(7,hostelimg);
        status=ps.executeUpdate();
        ps.close();
        con.close();

       
        
    }catch(Exception e){System.out.println(e);}  
      System.out.println(ownername);
        System.out.println(contact);
        System.out.println(hostelname);
        System.out.println(hosteladd);
        System.out.println(hostelrent);
        System.out.println(hosteldesc);
        System.out.println(hostelimg);
        System.out.println(status);
        
        
   if(status>0){       
 RequestDispatcher rd = request.getRequestDispatcher("addhostel-success.jsp");
   rd.forward(request, response);
   }
   else{             
      
   RequestDispatcher rd = request.getRequestDispatcher("addhostel-error.jsp");
   rd.forward(request, response);
      
  }
    
   
 }
 
 
 }
 
public static int delete(Hostel u){  
    int status=0;  
    try{  
        Connection con=getConnection();  
        PreparedStatement ps=con.prepareStatement("delete from hosteld where id=?");  
        ps.setInt(1,u.getId());  
        status=ps.executeUpdate();  
    }catch(Exception e){System.out.println(e);} 
    
  
    return status;  
}  

public static List<Hostel> getAllRecords() throws IOException{  
    List<Hostel> list=new ArrayList<Hostel>();  
      
    try{  
        Connection con=getConnection();  
        PreparedStatement ps=con.prepareStatement("select * from hosteld");  
        ResultSet rs=ps.executeQuery();  
       while(rs.next()){  
            Hostel u=new Hostel(); 
            
            u.setId(rs.getInt("id"));  
            u.setName(rs.getString("ownername"));  
            u.setContact(rs.getString("contact"));  
            u.setHostelName(rs.getString("hostelname"));  
            u.setHostelAdd(rs.getString("hosteladd"));  
            u.setHostelRent(rs.getString("hostelrent")); 
            u.setHostelDesc(rs.getString("hosteldesc"));
            u.setHostelImg(rs.getString("hostelimg"));
             list.add(u);
       }  

        }catch(Exception e){System.out.println(e);}  
    return list;  
}


} 