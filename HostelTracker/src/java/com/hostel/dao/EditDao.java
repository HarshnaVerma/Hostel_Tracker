package com.hostel.dao;

import java.sql.*;    
import com.hostel.bean.Hostel; 
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 

public class EditDao extends HttpServlet {

   public static Connection getConnection(){  
    Connection con=null;  
    try{  
        Class.forName("com.mysql.jdbc.Driver");  
        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hostel","root","root");  

    }catch(Exception e){System.out.println(e);}  
    return con;
   }
public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
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
  String id = request.getParameter("id");
  int id1 = Integer.parseInt(id);
  
  Hostel u = new Hostel();

       int status=0;  
    try{       
          
        Connection con=getConnection();  
        PreparedStatement ps = con.prepareStatement("update hosteld set ownername=?,contact=?,hostelname=?,hosteladd=?,hostelrent=?,hosteldesc=?,hostelimg=? where id=?"); 

        ps.setString(1,ownername);  
        ps.setString(2,contact);  
        ps.setString(3,hostelname);  
        ps.setString(4,hosteladd );  
        ps.setString(5,hostelrent); 
        ps.setString(6,hosteldesc);
        ps.setString(7,hostelimg);
        ps.setInt(8,id1);
        status=ps.executeUpdate();
        ps.close();
        con.close();

     }catch(Exception e){System.out.println(e);
    }

        
        System.out.println(ownername);
        System.out.println(contact);
        System.out.println(hostelname);
        System.out.println(hosteladd);
        System.out.println(hostelrent);
        System.out.println(hosteldesc);
        System.out.println(hostelimg);
        System.out.println(status);
        



        if(status>0){
            
 RequestDispatcher rd = request.getRequestDispatcher("viewhostel.jsp");
   rd.forward(request, response);
        }
        else{             
      
   RequestDispatcher rd = request.getRequestDispatcher("error.html");
   rd.forward(request, response);
      
  }

      
    
}






public static Hostel getRecordById(int id){  
    Hostel u=null;  
    try{  
        Connection con=getConnection();  
        PreparedStatement ps=con.prepareStatement("select * from hosteld where id=?");  
        ps.setInt(1,id);  
        ResultSet rs=ps.executeQuery();  
        while(rs.next()){  
            u=new Hostel();  
            u.setId(rs.getInt("id"));  
            u.setName(rs.getString("ownername"));  
            u.setContact(rs.getString("contact"));  
            u.setHostelName(rs.getString("hostelname"));  
            u.setHostelAdd(rs.getString("hosteladd"));  
            u.setHostelRent(rs.getString("hostelrent")); 
            u.setHostelDesc(rs.getString("hosteldesc"));
            u.setHostelImg(rs.getString("hostelimg"));
        }  
    }catch(Exception e){System.out.println(e);}  
    return u;  
}  
}