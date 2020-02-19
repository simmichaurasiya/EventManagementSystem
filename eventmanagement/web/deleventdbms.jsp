<%@include file="dbmscon.jsp"%>
<html>
    <body>
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


String sql="Delete from bookevent where eventid='"+id+"'";
PreparedStatement ps = con.prepareStatement(sql);

ps.executeUpdate();

out.println("Record Delete Successfully");
}
catch(SQLException sql)
{
//request.setAttribute("error", sql);
out.println("error" +sql);
}

%>
<br><a href="delete.jsp">Delete more?</a>
    </body>
</html>
