<%-- 
    Document   : reg
    Created on : May 15, 2014, 12:41:43 PM
    Author     : prafull
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<%
try
 
                     {
    
    Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
    Connection con=DriverManager.getConnection("jdbc:odbc:Studentsource");
    
    String N=request.getParameter("t1");
    String P=request.getParameter("t2");
   
          String sql="insert into Admin(Adminid,Password)values('"+N+"','"+P+"')";
    
    int action=con.createStatement().executeUpdate(sql);
    con.setAutoCommit(true);
       
    


if(action>=1)
       {
        out.println("Deatils  is Saved Succesfully");
        out.println("<br>");
        out.println("<a href='Adminlogin.jsp'>GO TO HOME PAGE FOR LOGIN</a>");  
        
        
}        
    else
        out.println("record not save..........");
            
    
     
    
    
            
}
catch(Exception ex)
               {
    
    
    out.println(ex.getMessage());
}
%>
