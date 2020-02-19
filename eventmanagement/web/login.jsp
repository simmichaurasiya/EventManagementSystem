
<html>
    <style>
        h1
{
color:white;
}
div.a{
  font-size: 30px;
 text-align: center;
    color:white;
}
table{
    table-layout: auto;
background-color:whitesmoke;  
width: 180px; 
}

body {
  background-image: url("img1.jpg");
  }</style>
    <body>
        <form action="check.jsp" method="post">
            <div class="a">
            <h1 align="center">LOGIN</h1>
            <table  align="center" border="4" >
                <tbody>
                    <tr>
                        <td>ID</td>
                        <td><input type="text" name="id" value="" /></td>
                    </tr>
                    <tr>
                        <td>User</td>
                        <td><input type="text" name="user" value="" /></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><input type="text" name="pass" value="" /></td>
                    </tr>
                    <tr>
                        
                        <td><input type="submit"  name="submit" value="Submit" /></td>
                        <td>  <input type="reset" name="Reset" ></td>
                      
                    </tr>
                </tbody>
            </table>
            <a href ="signup.jsp">New User</a>
            <div>
        </form>
    </body>
</html>
