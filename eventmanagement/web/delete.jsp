<%@include file="dbmscon.jsp"%>
<html>
    <body>
        <form action="deleventdbms.jsp" method="post">
           
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
                            <%out.println(rs.getInt("eventid"));
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
                        <td><a href="deleventdbms.jsp?eventid=<%=rs.getString("eventid")%>">Delete</a></td>
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
           