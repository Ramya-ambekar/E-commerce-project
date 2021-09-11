
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<jsp:include page="login.jsp" />
<%
try
{
   Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
    String connectionURL="jdbc:odbc:digitalDSN";
     Connection connection=DriverManager.getConnection(connectionURL,"","");
      Statement stmt=connection.createStatement();
      ResultSet rs,rs1,rs2;
     
    
      String username=request.getParameter("uname").trim();
      String password=request.getParameter("psw").trim();
      String un=request.getParameter("username");
      String pw=request.getParameter("pwd");
     
      rs=stmt.executeQuery("select * from logins where  uname="+"'"+username+"'"+" and psw="+"'"+password+"'");
      
      String s1="",s2="";
      int found=0;
     
     while(rs.next())
      {
              out.println(found);    
              found++;

  }
 
if((username.equals("ramya") && password.equals("r123")))
            {
            session.setAttribute("username",username);
            response.sendRedirect("admin.jsp");
            }
    
    else
    
      out.println("<h3>Sorry, you are INVALID</h3>");
    
   
          
  out.println("<h2><center>Invalid login..</center></h2> ");

 


	
 


         
rs.close();

stmt.close();
connection.close();  
 
 
 
}

 catch(Exception e)
    {
     
//    out.println("Exception occured" +e);
    }



/*String user_name=request.getParameter("user_name");
String user_pwd=request.getParameter("user_pwd");


if(user_name.equals("admin") && user_pwd.equals("admin"))
{
session.setAttribute("name", name);
response.sendRedirect("adminHome.jsp?status=Login Successfull");
}
else
{
response.sendRedirect("index.jsp?status=Login Fail");
}*/
%>



    
      
        
        