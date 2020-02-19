<%@include file="dbmscon.jsp"%>
<html>

    <body>
        <h1>view event dbms</h1>
        <%
            try
            {
                String viewquery="select * from bookevent";
                Statement stmt=con.createStatement();
                ResultSet rs=stmt.executeQuery(viewquery);
                while(rs.next()){
                    out.println(rs.getInt(1));
                    out.println(rs.getString(2));
                     out.println(rs.getString(3));
                      out.println(rs.getString(4));
                       out.println(rs.getString(5));
                        out.println(rs.getString(6));
                         out.println(rs.getInt(7));
                         
                          out.println(rs.getString(8));
                           out.println(rs.getString(9));
                }
                
                
            }
            catch(Exception ve)
            {
                out.println("data not found"+ve);
            }
        %>
    </body>
</html>
