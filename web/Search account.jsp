
<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>


<html>
<head>
<title></title>

        <meta name="description" content="">
        <meta name="viewport" content="width=device-width">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link href="style.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="engine1/style.css" />
<script type="text/javascript" src="engine1/jquery.js"></script>
</head>
<body>

 <jsp:include page="header.jsp"/>


     
<div class="login-wrap">
	<h2 >Search Student Information</h2>
        <div class="form">
  <form  action="">
      <input type="text" placeholder="Student Name/Student Rool No. " name="un" width="200" />
    <button> Check  Info </button>
          </form>
            
            </div>
 </div>
 
 
<%
try
     {
    Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
    Connection con=DriverManager.getConnection("jdbc:odbc:Studentsource");
    
    Statement st=con.createStatement();
    String s="select * from Studentinfo where Name='"+request.getParameter("un")+"'OR Rool_no='"+request.getParameter("un")+"'";
    ResultSet rs=st.executeQuery(s); 
  
        %>
       
    
        
 <%
while(rs.next())
{

%>

<div class="table">
<table border="2" align="center">

      
      <tr>
          <th align="right"><strong>Name</strong></th>
          <td width="20" align="center">:</td>
          <td width="200"><%=rs.getString("Name") %></td>
      </tr>
      
       <tr>
           <th align="right"><strong>Father name </strong></th>
           <td width="20" align="center">:</td>
        <td width="100"><%=rs.getString("Father_name") %></td>
      </tr>
      
      <tr>
          <th align="right"><strong>Email id </strong></th>
          <td width="20" align="center">:</td>
          <td width="100"><%=rs.getString("Email_id") %></td>
      </tr>
      
      <tr>
          <th align="right"><strong>Branch name </strong></th>
          <td width="20" align="center">:</td>
          <td width="100"><%=rs.getString("Branch_name") %></td>
      </tr>
      
      <tr>
          <th align="right">Branch name</th>
           <td width="20" align="center">:</td>
         <td width="100"><%=rs.getString("Semester") %></td>
      </tr>
      <tr>
          <th align="right"><strong>Semester</strong></th>
           <td width="20" align="center">:</td>
         <td width="100"><%=rs.getString("Rool_no") %></td>
      </tr>
      
       <tr>
          <th align="right"><strong>Rool no </strong></th>
       <td width="20" align="center">:</td>
          <td width="100"><%=rs.getString("Open_date") %></td>
      </tr>
      
       <tr>
          <th align="right"><strong>Open_date</strong></th>
       <td width="20" align="center">:</td>
          <td width="100"><%=rs.getString("Address") %></td>
      </tr>
      
       <tr>
       <th align="right"><strong>Address</strong></th>
       <td width="20" align="center">:</td>
       <td width="100"><%=rs.getString("Phone_no") %></td>
      </tr>
      
     

</table>
      <div>


        <%

}
%>
    
    </table>
     
        
        <%

 
    
    
            
}
catch(Exception ex)
               {
    
    
    out.println(ex.getMessage());
}
%>
 
 

</div>           




</body>
</html>
