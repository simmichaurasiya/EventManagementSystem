
<%@include file="dbmscon.jsp" %>
<html>
    <style>
        body {
  background-image: url("img1.jpg");

  }
    h2{
 font-size: 40px;   
   text-align: center;
}
    </style>
        <body>
            <%
            try
            {
                String oldpass=request.getParameter("oldpass");
                String newpass=request.getParameter("nwpass");
                String cnfmpass=request.getParameter("cnpass");
                String uid=(String)session.getAttribute("uid");
                String upass=(String)session.getAttribute("upass");
              //  out.println(oldpass);
                //out.println(newpass);
               // out.println(cnfmpass);
                if(!upass.equals(oldpass))
                {
               %><h2><%     out.println("Old password doesnot match");%></h2><%
                }
                else if(!newpass.equals(cnfmpass))
                        {
                            %><h2><%       out.println("New password nd confirm passward are not same");%></h2><%
                    
                }
            
            else
            {
                  String updatequery="update login set password='"+newpass+"' where id='"+uid+"'";  
            PreparedStatement pst=con.prepareStatement(updatequery);
            pst.executeUpdate();
            out.println("<br><h2>password change success</h2>");
            }
            }            catch(Exception ce)
            {
                out.println("<h2>password not change</h2>"+ce);
            }
            %>
            </body>
</html>
