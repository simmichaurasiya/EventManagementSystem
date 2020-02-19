<%@include file="dbmscon.jsp" %>
<html>
    <body>
        <%
        try
        {
          String sques=request.getParameter("select");
           String sans=request.getParameter("ans");
  String viewquery="select * from login";
   Statement stmt=con.createStatement();
  ResultSet rs=stmt.executeQuery(viewquery);
  int count=0;
  while(rs.next())
  {
      if(sques.equals(rs.getString(4)) && sans.equals(rs.getString(5)))
      {
          count++;
          break;
      }
  }
  if(count>0)
  {          
  
   out.println(" <html>");
        
   out.println("<body>");
            
   out.println("<form action=forgetpassdbms2.jsp method=\"post\">");
   
   out.println("enter new password<input type=\"text\" name=\"nwpass\"  /><br>");
     out.println("enter cnfrm password<input type=\"text\" name=\"cnpass\" /><br>");
     out.println("<input type=\"submit\" name=\"b1\" value=\"reset password\">");
      
   out.println("</body>");
    
   out.println("</html>");
 
  }
  else
  {
      out.println("securiity ques r not ri8<br>");
      out.println("<a href=changepass.jsp> change password</a>");
  }

                
        }
        catch(Exception ce)
                {
            out.println(ce);
        }
        %>
   </body>
</html>
