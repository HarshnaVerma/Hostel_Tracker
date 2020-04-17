package com.reglog;

import java.io.IOException;
import static java.lang.System.out;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;

import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


//@WebServlet("/LoginController")
public class LoginController extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String un = request.getParameter("email");
        String pw = request.getParameter("psw");

if (un.isEmpty() || pw.isEmpty()) {
   RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
   out.println("<font color=black>Please fill all the fields</font>");
   rd.include(request, response);
  } else {

        try {
            Class.forName("com.mysql.jdbc.Driver");
// loads driver
            Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/hostel", "root", "root"); // gets a new connection

            PreparedStatement ps = c.prepareStatement("select email,psw from reglog where email=? and psw=?");
            ps.setString(1, un);
            ps.setString(2, pw);
            
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                response.sendRedirect("success.html");
                return;
                
            }
            response.sendRedirect("error.html");
            return;
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
    }

}
}