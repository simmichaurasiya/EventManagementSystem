
<%@include file="dbmscon.jsp"%>
<%@include file="view event.jsp"%>

<html>
    <body>
    <h1>view event dbms1</h1>
       
            <%
            try
            {
                String vop=request.getParameter("view option");
                String viewquery="";
                out.println("<br>");
                if(vop.equalsIgnoreCase("id"))
                {
                    int s1=Integer.parseInt(request.getParameter("search"));
                    
                    viewquery="select * from bookevent where eventid="+s1;
                    
                    
                }
                else if(vop.equalsIgnoreCase("event name"))
                {
                    String ename=request.getParameter("search");
                    
                    viewquery="select * from bookevent where evntname='"+ename+"'";
                    
                    
                }
                else if(vop.equalsIgnoreCase("date"))
                {
                    String dat=request.getParameter("search");
                    
                    viewquery="select * from bookevent where doe='"+dat+"'";
                    
                    
                }
                else if(vop.equalsIgnoreCase("venue"))
                {
                    String venu=request.getParameter("search");
                    
                    viewquery="select * from bookevent where venue='"+venu+"'";
                    
                    
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
