<%@ include file="dbmscon.jsp"%>
<html>
       <body>
           <%
               try
               {
                    int evntid=Integer.parseInt(request.getParameter("id"));
                String eventnam=request.getParameter("eventname");
                String nam=request.getParameter("name");
                  String Dob=request.getParameter("dob");
                    String venu=request.getParameter("venue");
                      String timng=request.getParameter("time");
                        int nocn=Integer.parseInt(request.getParameter("noc"));
                          String Doe=request.getParameter("doe");
                            String contct=request.getParameter("contact");
                            String userid=request.getParameter("userid");
                           /*  out.println(evntid);
                            out.println(evntname);
                            out.println(name);
                            out.println(dob);
                            out.println(venue);
                            out.println(timing);
                            out.println(nocan);
                            out.println(doe);
                            out.println(contact);
                                   */
 String updatequery="update bookevent set  name='"+nam+"',dob='"+Dob+"',timing='"+timng+"',noc='"+nocn+"',contact='"+contct+"' where userid='"+userid+"' ";  
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
