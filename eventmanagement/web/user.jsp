
<%@include file="dbmscon.jsp"%>
<html>
     <style>
    body {
  background-image: url("img1.jpg");
  }</style>

    <body>
         <form action="deluser.jsp" method="post">
        
                <table border="5">   
                        <tr>
                            <td>id</td>
                              <td>user</td>
                                <td>pass</td>
                                  <td>sques</td>
                                    <td>ans</td>
                                      <td>contact</td>
                                        <td>emailid</td>
                                          <td>add</td>
                                         
                                          <%
            try{
            
                 String viewquery="select * from login";
                
                Statement stmt=con.createStatement();
                ResultSet rs=stmt.executeQuery(viewquery);
                while(rs.next()){
                        
                    
                    %>
                   
                    <tr>
                        
                        <td>
                            <% out.println(rs.getString(1));
                            %>
                        </td>
                        
                        <td>
                            <% out.println(rs.getString(2));
                            %>
                        </td>
                        
                        <td>
                            <% out.println(rs.getString(3));
                            %>
                        </td>
                         
                        <td>
                            <% out.println(rs.getString(4));
                            %>
                        </td>
                        

<td>
                            <% out.println(rs.getString(5));
                            %></td>
                            
                        
                    <td>
                            <% out.println(rs.getString(6));
                            %>
                        </td>
                        
                        <td>
                            <% out.println(rs.getString(7));
                            %>
                        </td>
                         
                        <td>
                            <% out.println(rs.getString(8));
                            %>
                        </td>
     

                  

                          
                     
        <%
                        }
                    %>  </tr></table> 
                    <%
                        } 
                        catch(Exception e)
                        {
                        out.println("data not found"+e);
                        }
                      
        %>
         </form>
    </body>
</html>