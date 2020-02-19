<%@ include file="dbmscon.jsp"%>
<html>
       <body>
           <form action="updateuserinfo.jsp" method="post">       
           user   info
           <%
           try{
           String user=(String)session.getAttribute("uid");
     String viewquery="select * from login where id='"+user+"'";
                Statement stmt=con.createStatement();
                ResultSet rs=stmt.executeQuery(viewquery);
                while(rs.next()){%>
                <table border=5>
                    <tr>
                        <td>user id</td> 
                        <td>   <% out.println(rs.getString(1));%></td></tr>
                   <tr>
                       <td>name</td>
                       <td> <input type="text" name="name" value="<%out.println(rs.getString(2));%>"></td></tr>
                   <tr> <td>password</td><td>   <% out.println(rs.getString(3));%><a href=changepass.jsp>change password</a></td>
                       </tr>
                       <tr> <td>s ques</td><td><input type="text" name="sque" value="<% out.println(rs.getString(4));%>"></td></tr>
                       <tr> <td>ans</td><td> <input type="text" name="ans" value="<% out.println(rs.getString(5));%>"></td></tr>
                       <tr> <td>contact</td><td>   <input type="text" name="contact" value="<%out.println(rs.getString(6));%>"></td></tr>
                       <tr> <td>emailid</td><td><input type="text" name="email id" value="<% out.println(rs.getString(7));%>"></td></tr>
                         
                       <tr> <td>address</td><td> <input type="text" name="add." value=" <%out.println(rs.getString(8));%>"></td></tr>
                       <tr>
                           <td><input type="submit" value="update" name="b1" /><input type="reset" value="reset" name="b2" /></td>
                       </tr>
 
                </table>
                         <%               }
           }
           catch(Exception e)
           {
               out.println("data not found"+e);
           }
                
           %>
      
           </form>  
    </body>
</html>
