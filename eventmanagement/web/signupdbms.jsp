<%@ include file="dbmscon.jsp"%>

<html>
     <style>
    body {
  background-image: url("img1.jpg");
  }
   div.a{
    font-size: 60px;
 text-align: center;
   
    
}
h1{
    font-size: 60px;
 text-align: center;
   
}
a:link{
    text-decoration: none;
    color: white;
    font-weight: 800;
    alignment-adjust: central;
}
        </style>
  
     
    

    <body>
        <form action="userinfo.jsp" method="post">
        <%
        try{
            String id=request.getParameter("id");
        
         String user=request.getParameter("user");
         String pass=request.getParameter("pass");
         String cpass=request.getParameter("cpass");

         String sques=request.getParameter("sques");
         String ans=request.getParameter("ans");
         String contact=request.getParameter("cntct");
         String emailid=request.getParameter("emlid");
         String address=request.getParameter("add.");
      /* out.println(" "+id);
         out.println(" "+user);
         out.println(" "+pass);
         out.println(" "+cpass);
         out.println(" "+sques);
         out.println(" "+ans);
           out.println(" "+contact);
             out.println(" "+emailid);
               out.println(" "+address);*/
         String insertquery="insert into login values(?,?,?,?,?,?,?,?)";
         PreparedStatement pst=con.prepareStatement(insertquery);
         session.setAttribute("name",user);
         pst.setString(1,id);
         pst.setString(2,user);
         pst.setString(3,pass);
         pst.setString(4,sques);
         pst.setString(5,ans);
         pst.setString(6,contact);
         pst.setString(7,emailid);
         pst.setString(8,address);
         pst.executeUpdate();
         %><h1> <%out.println("Congrat!  Registration Successfull");%></h1>
         
         %><br><div class="a">Login Again<a href="login.jsp">click here</a></div>
<%
        }
        catch(Exception e)
        {
            out.println("user not registered"+e);
            
        }
        
         %>
        

        </form>
    </body>
</html>
