<%@ include file="dbmscon.jsp"%>

<html>
       <body>
           <h1>update user info</h1>
           <%
          
               try
               {
                    String usreid=(String)session.getAttribute("uid");
                    out.println(usreid);
                    
                   String usr=request.getParameter("name");
                   String sques=request.getParameter("sque");
                   String Ans=request.getParameter("ans");
                   String contct=request.getParameter("contact");
                   String email=request.getParameter("email id");
                   String add=request.getParameter("add.");
                   
                   
                   String updatequery = "update login set  user='"+ usr +"',sques='"+ sques +"',sans='"+Ans+"',contact='"+contct+"',emailid='"+email+"',address='"+add+"' where id='"+usreid+"' ";  
                   PreparedStatement pst=con.prepareStatement(updatequery);
                   pst.executeUpdate();
                   out.println("<br>data updated");

           %>
            <a href="vieweventuser.jsp">update more info?</a>
            <%
                 
                }          
               catch(Exception e)
               {
                   out.println("data not found"+e);
               }
           %>
      
    </body>
</html>
