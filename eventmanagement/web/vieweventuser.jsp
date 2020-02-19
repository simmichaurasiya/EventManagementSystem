<%@include file="dbmscon.jsp"%>
<html>

    <body>
         <form action="upeventuser.jsp" method="post">

        <h1>event<br></h1>
        
    <%
        String userid=(String) session.getAttribute("uid"); 

out.println(userid);

    
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
                            <td>userid</td>
                            <td>select  </td>
                        </tr>
                        <%
                        try{
                            
                        
                        String viewquery="select * from bookevent where userid='"+userid+"'";
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
                        <td><a href="upeventuser.jsp?eventid=<%=rs.getString("eventid")%>">update</a></td>
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
    
</html>
    </body>
</html>
