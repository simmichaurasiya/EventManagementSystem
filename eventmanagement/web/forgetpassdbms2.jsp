<%@include file="dbmscon.jsp" %>
<html>
       <body>
      <%
      try{
       String Str1=request.getParameter("nwpass");
       String Str2=request.getParameter("cnpass");
       if(!Str1.equals(Str2))
       {
           out.println("ur nwpass nd cnfrm r not same");
       }
       else
       {
            String Resetquery="update login set password='"+Str1+"' where id='"+session.getAttribute("uid")+"'";
       PreparedStatement pst=con.prepareStatement(Resetquery);
       pst.executeUpdate();
       out.println("password update succedss");
       out.println("<br> login again<a href=changepass.jsp>click hare</a>");

       }
           
          
      }
      catch(Exception e)
      {
          out.println("password not reset");
      }
      %>
    </body>
</html>
