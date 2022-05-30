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
    String A=request.getParameter("t3");
    String B=request.getParameter("t4");
    String C=request.getParameter("t5");
    String D=request.getParameter("t6");
    String E=request.getParameter("t7");
    String F=request.getParameter("t8");
    String G=request.getParameter("t9");
   

          String sql="insert into Studentinfo(Name,Father_name,Email_id,Branch_name,Semester,Rool_no,Open_date,Address,Phone_no)values('"+N+"','"+P+"','"+A+"','"+B+"','"+C+"','"+D+"','"+E+"','"+F+"','"+G+"')";
    
    int action=con.createStatement().executeUpdate(sql);
    con.setAutoCommit(true);
       
    


if(action>=1)
       {
        out.println("Deatils  is Saved Succesfully and you can search your details in search customer Option");
        out.println("<br>");
        out.println("<a href='Search account.jsp'>Search account</a>");  
        
        
}        
    else
        out.println("record not save..........");
            
    
     
    
    
            
}
catch(Exception ex)
               {
    
    
    out.println(ex.getMessage());
}
%>
