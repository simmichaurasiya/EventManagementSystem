

<%@page import="java.sql.*" %>

<html>
    <body>
        <%!Connection con;%>
        <%
            try
            {
               String connectionUrl="jdbc:mysql://localhost:3306/event";
               Class.forName("com.mysql.jdbc.Driver");
                con=DriverManager.getConnection(connectionUrl,"root","root");
            out.println("connection success");
            }
            catch(Exception e)
            {
            out.println("connection failed "+e);    
            }
            %>
    </body>    
   </html>
