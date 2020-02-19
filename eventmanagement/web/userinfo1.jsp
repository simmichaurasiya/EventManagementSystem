
<html>

    <body>
        
        
        <h1>User info</h1><table border="1">
            <thead>
                <tr>
                    <th><%
              out.print("userid");%></th>
                    <th> <% out.print(session.getAttribute("uid"));
%>
                    </th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td><%
              out.print("name");%></td>
                    <td><input type="text" name="nam" value="<% out.print(session.getAttribute("name"));
%>" /></td>
                </tr>
                <tr>
                     <tr>
                    <td><%
              out.print("contact no.");%></td>
                    <td><input type="text" name="contct" value="" /></td>
                </tr>
                    <td><%
              out.print("event booked");%></td>
                    <td></td>
                </tr>
               
                
            </tbody>
        </table>

          
        <a href ="changepass.jsp"><br>change password</a>
    </body>
</html>
