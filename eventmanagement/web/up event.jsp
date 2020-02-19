<%@include file="dbmscon.jsp"%>
<html>
    <body>
        <%out.println("new");%>
        <form action="updateeventdbms.jsp">
       <%
       try{
               
String id = request.getParameter("eventid");
String evntname = request.getParameter("evntname");
String name=request.getParameter("name");
String dob=request.getParameter("dob");
String venue=request.getParameter("venue");
String time=request.getParameter("timing");
String noc = request.getParameter("noc");
String doe=request.getParameter("doe");
String contact=request.getParameter("contact");
String viewquery="select * from bookevent where eventid='"+id+"'";
 Statement stmt=con.createStatement();
 ResultSet rs=stmt.executeQuery(viewquery);
 while(rs.next())
 {
%>
 <table border="1">
     <thead>
         <tr>
             <td>eventid</td>
             <th><input type="text" name="id" value=<%out.println(id);%> /></th>
             <th></th>
         </tr>
     </thead>
     <tbody>
         <tr>
             <td>eventname</td>
             <td><input type="text" name="eventname" value="<% out.println(rs.getString("evntname"));%>">
                            
</td>
             <td></td>
         </tr>
         <tr>
             <td>name</td>
             <td><input type="text" name="name" value="<% out.println(rs.getString("name"));%>"/></td>
             <td></td>
         </tr>
         <tr>
             <td>dob</td>
             <td><input type="text" name="dob" value="<% out.println(rs.getString("dob"));%>"/></td>
             <td></td>
         </tr>
         <tr>
             <td>venue</td>
             <td><input type="text" name="venue" value="<% out.println(rs.getString("venue"));%>"/></td>
             <td></td>
         </tr>
         <tr>
             <td>time</td>
             <td><input type="text" name="time" value="<% out.println(rs.getString("timing"));%>"/></td>
             <td></td>
             <td></td>
         </tr>
         <tr><td>noc</td>
             <td><input type="text" name="noc" value="<% out.println(rs.getString("noc"));%>"/></td>
            
             <td></td>
         </tr>
         <tr>
             <td>doe</td>
             <td><input type="text" name="doe" value="<% out.println(rs.getString("doe"));%>"/></td>
             <td></td>
         </tr>
         <tr>
             <td>contact</td>
             <td><input type="text" name="contact" value="<% out.println(rs.getString("contact"));%>"/></td>
             <td></td>
         </tr>
          <tr>
                            <td> <input type="submit" name="b1" value="submit" /></td>
                            <td>  <input type="reset" name="b2" value="reset" /></td>
                        </tr>

         
     </tbody>
<%
                     }
%>     
 </table>
<%

           

}
catch(SQLException sql)
{
//request.setAttribute("error", sql);
out.println("error" +sql);
}

%>
        </form>
    </body>
</html>
