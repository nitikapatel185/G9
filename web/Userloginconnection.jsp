<%-- 
    Document   : aa.jsp
    Created on : Apr 7, 2014, 3:18:51 PM
    Author     : prafull
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<%
try
 
                     {
    
    Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
    Connection con=DriverManager.getConnection("jdbc:odbc:Studentsource");
    
    Statement st=con.createStatement();
    String s="select * from Admin where Adminid='"+request.getParameter("t1")+"'and Password='"+request.getParameter("t2")+"'";
    
    ResultSet rs=st.executeQuery(s);
    
    if(rs.next())
               {
       
    out.println("<a href='Admin home.jsp'>continue</a>");
       }
    else
               {
        out.println("PLEASE ENTER VALID ID AND PASSWORD..........");
    
        out.println("<a href='Adminlogin.jsp'>Try Again</a>");   
               }
    
    
            
}
catch(Exception ex)
               {
    
    
    out.println(ex.getMessage());
}
%>
