<%@ include file="dbmscon.jsp"%>
<html>
    <style>
 body {
  background-image: url("img1.jpg");
  }   </style>
    <body>
       <form action="del.jsp" method="post">
        <%
            String id=request.getParameter("id");
         String user=request.getParameter("user");
         String pass=request.getParameter("pass");
         String query="select * from login";
         Statement stmt=con.createStatement();
         ResultSet rs=stmt.executeQuery(query);
         
        session.setAttribute("uid", id);
        session.setAttribute("name", user);
        
         session.setAttribute("upass",pass);
         int count=0;
         while(rs.next())
         {
             if(id.equalsIgnoreCase(rs.getString(1)) && user.equalsIgnoreCase(rs.getString(2)) && pass.equalsIgnoreCase(rs.getString(3)))
             {
              count++;
              break;
             }
         }
         if(count>0)
         {
             if(id.equalsIgnoreCase("admin@event.com"))
             {
                 out.println("<br>admin login sucess");
                 response.sendRedirect("admin login page.jsp");
             }
             else
             {
                 out.println("<br>user login success");
                  response.sendRedirect("user login page.jsp");
                               
             }
             out.println("<br><a href=changepass.jsp>change password</a>");
                   }
         else
         {
             RequestDispatcher disp=request.getRequestDispatcher("login.jsp");
             disp.include(request, response);
             out.println("<br>login failed");
            out.println("<a href=forgetpass.jsp>forgetpass</a>");
         }
                    %>
                    </form>
    </body>
</html>
