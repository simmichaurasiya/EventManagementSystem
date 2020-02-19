<html>
     <style>
    body {
  background-image: url("img1.jpg");
  }</style>

      <%
    out.println(session.getAttribute("uid"));
%>
    <body>
          <form action ="forgetpassdbms.jsp" method="post">
            select ur security quse  <select name="select">
                  <option>pet name</option>
                  <option>first school</option>
                  <option>hometown</option>
                  <option>first gf/bf</option>

            </select>
            <br>
            enter ur ans<input type="text" name="ans" value="" /><br>
            <input type="submit" value="next" />
      
          </form>
    </body>
</html>
