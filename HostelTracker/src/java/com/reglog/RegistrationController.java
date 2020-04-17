package com.reglog;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class RegistrationController extends HttpServlet {

 protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
  // TODO Auto-generated method stub
  response.setContentType("text/html");
  PrintWriter out = response.getWriter();
  String ownername = request.getParameter("ownername");
  String contact = request.getParameter("contact");
  String email = request.getParameter("email");
  String psw = request.getParameter("psw");
  String psw_r = request.getParameter("psw_r");
  
  if (ownername.isEmpty() || contact.isEmpty() || email.isEmpty() || psw.isEmpty() || psw_r.isEmpty() ) {
   RequestDispatcher rd = request.getRequestDispatcher("registration.jsp");
   out.println("<font color=black>Please fill all the fields</font>");
   rd.include(request, response);
  } else {


    try {
    Class.forName("com.mysql.jdbc.Driver");
    // loads mysql driver

    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hostel", "root", "root"); 

    String query = "insert into reglog(ownername,contact,email,psw,psw_r) values(?,?,?,?,?)";

    PreparedStatement ps = con.prepareStatement(query); // generates sql query

    ps.setString(1, ownername);
    ps.setString(2, contact);
    ps.setString(3, email);
    ps.setString(4, psw);
    ps.setString(5, psw_r);
    
    ps.executeUpdate(); // execute it on test database
    System.out.println("successfully inserted");
    ps.close();
    con.close();
   } catch (ClassNotFoundException | SQLException e) {
    // TODO Auto-generated catch block
    e.printStackTrace();
   }
   RequestDispatcher rd = request.getRequestDispatcher("success.html");
   rd.forward(request, response);
  }
 }
}