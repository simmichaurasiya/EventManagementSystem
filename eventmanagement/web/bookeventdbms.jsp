<%@ include file="dbmscon.jsp"%>
<html>

    <body>
        <h1>book event dbms</h1>
        <%
        session.getAttribute("uid");
            try
            {
                int evntid=Integer.parseInt(request.getParameter("Event id"));
                String evntname=request.getParameter("Event name");
                String name=request.getParameter("name");
                  String dob=request.getParameter("dob");
                    String venue=request.getParameter("venue");
                      String timing=request.getParameter("timing");
                        int nocan=Integer.parseInt(request.getParameter("noc"));
                          String doe=request.getParameter("doe");
                            String contact=request.getParameter("contact");
                            String userid=request.getParameter("userid");
                             session.setAttribute("cntct",contact);
                           /* out.println(evntid);
                            out.println(evntname);
                            out.println(name);
                            out.println(dob);
                            out.println(venue);
                            out.println(timing);
                            out.println(nocan);
                            out.println(doe);
                            out.println(contact);*/
                            String insertquery="insert into bookevent values(?,?,?,?,?,?,?,?,?,?)";
                            PreparedStatement pst=con.prepareStatement(insertquery);
                         pst.setInt(1,evntid);
                           pst.setString(2,evntname);
                           pst.setString(3,name);
                            pst.setString(4,dob);
                            pst.setString(5,venue);
                            pst.setString(6,timing);
                           pst.setInt(7,nocan);
                            pst.setString(8,doe);
                          pst.setString(9,contact);
                          pst.setString(10,userid);
                          pst.executeUpdate();
                          
                          out.println("congrat! event booked");





                            
            }
            catch(Exception ie)
            {
                out.println("event book failed"+ie);
            }
            %>
            <br>
            <a href="book event.jsp"> book new event</a>
    </body>
</html>
