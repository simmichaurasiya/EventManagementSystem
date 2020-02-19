
<%@include file="dbmscon.jsp"%>
<%@include file="view event.jsp"%>

<html>
    <body>
    <h1>view eventdbmsnew</h1>
       
            <%
            try
            {
                String eventname=request.getParameter("event name");
                String venue=request.getParameter("venue");
                String timing=request.getParameter("timing");
                String viewquery="";
                out.println("<br>");
                if( !eventname.equalsIgnoreCase("ALL") && !venue.equalsIgnoreCase("ALL") && !timing.equalsIgnoreCase("ALL"))
                {
                    viewquery="select * from bookevent where evntname='"+eventname+"' AND venue='"+venue+"' timing='"+timing+"'";
                }
                else if (!eventname.equalsIgnoreCase("ALL") && !venue.equalsIgnoreCase("ALL")) 
                        {
                             viewquery="select * from bookevent where evntname='"+eventname+"' AND venue='"+venue+"'";
                        }
                else if (!eventname.equalsIgnoreCase("ALL") && !timing.equalsIgnoreCase("ALL")) 
                        {
                             viewquery="select * from bookevent where evntname='"+eventname+"' AND timing='"+timing+"'";
                        }
                
                else if (!venue.equalsIgnoreCase("ALL") && !timing.equalsIgnoreCase("ALL")) 
                        {
                             viewquery="select * from bookevent where venue='"+venue+"' AND timing='"+timing+"'";
                        }
                
                else
                {
                    viewquery="select * from bookevent";
                }
                Statement stmt=con.createStatement();
                ResultSet rs=stmt.executeQuery(viewquery);
                %>
                <table border="5">
                    <%
                    while(rs.next()){
                        
                    
                    %>
                    <tr>
                        <td>
                            <% out.println(rs.getInt(1));
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
                            %>
                        </td> 
                    <td>
                            <% out.println(rs.getString(6));
                            %>
                        </td>
                        <td>
                            <% out.println(rs.getInt(7));
                            %>
                        </td>
                        <td>
                            <% out.println(rs.getString(8));
                            %>
                        </td>
                        <td>
                            <% out.println(rs.getString(9));
                            %>
                        </td>
                        </tr>
                        <%
            }
                        %>
                </table>
              
                    <%
            }
            catch(Exception ve)
            {
                out.println("data not found..");
            }
            %>
        
    </body>
</html>
