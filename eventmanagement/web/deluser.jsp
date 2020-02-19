<html>
    <body>
        <p>delete user</p>
        
        
        <%@include file="dbmscon.jsp"%>
       <%
       try{
               
String uid = request.getParameter("id");
String usr = request.getParameter("user");
String pss=request.getParameter("pass");
String sques=request.getParameter("sques");
String ans=request.getParameter("ans");
String cntct=request.getParameter("contact");
String eml= request.getParameter("emailid");
String ad=request.getParameter("add");
String dl=request.getParameter("del");
String sql="delete * from login where id="+uid+"'";
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

   
    </body>
</html>