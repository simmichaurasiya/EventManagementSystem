<html>
       
     <style>
    body {
  background-image: url("img1.jpg");
  }</style>
<body>
            <%
                
            %>
        <h1 align="center">Sign up</h1>
        <form action="signupdbms.jsp" method="post">
            
            <table align="center" border="1">
                <thead>
                    <tr>
                        <td>Id</td>
                        <th><input type="text" name="id" value="" /></th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>username</td>
                        <td><input type="text" name="user" value="" /></td>
                    </tr>
                    <tr>
                        <td>password</td>
                        <td><input type="text" name="pass" value="" /></td>
                    </tr>
                    <tr>
                        <td>confirm password</td>
                        <td><input type="text" name="cpass" value="" /></td>
                    </tr>
                    <tr>
                        <td>security question</td>
                        <td><select name="sques">
                                <option>pet name</option>
                                <option>hometown</option>
                                <option>first school</option>
                                <option>first bf/gf</option>
                            </select></td>
                    </tr>
                    <tr>
                        <td>answer</td>
                        <td><input type="text" name="ans" value="" /></td>
                    </tr>
                    <tr>
                    <tr>
                        <td>contact no.</td>
                        <td><input type="text" name="cntct" value="" /></td>
                    </tr>
                     <tr>
                        <td>email id</td>
                        <td><input type="text" name="emlid" value="" /></td>
                    </tr>
                     <tr>
                        <td>address.</td>
                        <td><input type="text" name="add." value="" /></td>
                    </tr>
                   
                   
                        <td><input type="submit" name="b1" value="register" /></td>
                        <td><input type="reset" name="b2" value="RESET" /></td>
                    </tr>
                    
                </tbody>
            </table>

            
        </form>
    </body>
</html>
