<%@include file="dbmscon.jsp"%>
<html>
    <body>
        <form action="up event.jsp" method="post">
            <%
           String eventid=request.getParameter("eventid");
           String userid=(String)session.getAttribute("uid");
           %> 
                
            <table border="5">
                        <tr>
                            <td>eventid</td>
                    <td>event name</td>
 <td>name</td>
 <td>dob</td>
 <td>venue</td>
 <td>timing</td>
 <td>noc</td>
 <td>doe</td>
 
                            <td>contact   </td>
                            <td>uid  </td>
                            <td>select  </td>
                        </tr>
                        <%
                        try{
                            
                        
                        String viewquery="select * from bookevent";
                        Statement stmt=con.createStatement();
                        ResultSet rs=stmt.executeQuery(viewquery);
                        
                 while(rs.next()){
                        
                    
                    %>
                    <tr>
                        <td>
                            <% out.println(rs.getString("eventid"));
                            %>
                        </td>
                        <td>
                            <% out.println(rs.getString("evntname"));
                            %>
                        </td>
                        <td>
                            <% out.println(rs.getString("name"));
                            %>
                        </td>
                        <td>
                            <% out.println(rs.getString("dob"));
                            %>
                        </td>

<td>
                            <% out.println(rs.getString("venue"));
                            %>
                        </td> 
                    <td>
                            <% out.println(rs.getString("timing"));
                            %>
                        </td>
                        <td>
                            <% out.println(rs.getString("noc"));
                            %>
                        </td>
                        <td>
                            <% out.println(rs.getString("doe"));
                            %>
                        </td>
                        <td>
                            <% out.println(rs.getString("contact"));
                            %>
                        </td>
                        <td>
                            <% out.println(rs.getString("userid"));
                            %>
                        </td>
                        <td><a href="upeventadmin.jsp?eventid=<%=rs.getString("eventid")%>">update</a></td>
                        </tr>
                                           <%
                    }
                        
                        %>
            </table>
                        <%
                        }
                                
                   
                            catch(Exception ve)
                                    {
                                    out.println(ve);
                                    }
                            %>
        </form>
    </body>
</html>
           