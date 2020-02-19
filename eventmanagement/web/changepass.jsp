<html>
    <style>
    body {
  background-image: url("img1.jpg");
  }</style>
        <body>
        
        <%
    out.println(session.getAttribute("uid"));
%>
        <form action ="changepassdbms.jsp" method="post">
            enter old password  <input type="text" name="oldpass" value="" /><br>
            enter new password <input type="text" name="nwpass" value="" /><br>
                enter confirm password <input type="text" name="cnpass" value="" /><br>
            <input type="submit" name="b1" value="change" />
        </form>
        </body>
</html>

