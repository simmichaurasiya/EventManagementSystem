<%@ include file="dbmscon.jsp"%>
<html>
       <body>
           <%
           String id=(String)session.getAttribute("uid");
          
               try
               {
                    int evntid=Integer.parseInt(request.getParameter("evntid"));
                String eventnam=request.getParameter("evntname");
                String nam=request.getParameter("name");
                  String Dob=request.getParameter("dob");
                    String venu=request.getParameter("venue");
                      String timng=request.getParameter("time");
                        int nocn=Integer.parseInt(request.getParameter("noc"));
                          String Doe=request.getParameter("doe");
                            String contct=request.getParameter("contact");
                            String userid=request.getParameter("id");
                         /*  out.println(evntid);
                            out.println(eventnam);
                            out.println(nam);
                            out.println(Dob);
                            out.println(venu);
                            out.println(timng);
                            out.println(nocn);
                            out.println(Doe);
                            out.println(contct);
                              out.println("userid");*/
 String updatequery="update bookevent set  name='"+nam+"',dob='"+Dob+"',venue='"+venu+"',timing='"+timng+"',noc='"+nocn+"',doe='"+Doe+"',contact='"+contct+"' where eventid='"+evntid+"' ";  
            PreparedStatement pst=con.prepareStatement(updatequery);
            pst.executeUpdate();
            out.println("<br>data updated");
                           
               }
               catch(Exception e)
               {
                   out.println("data not found"+e);
               }
           %>
           <br><a href="update.jsp">update more?</a>

            </body>
</html>
