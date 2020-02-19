<html>
    <style>
    body {
  background-image: url("img1.jpg");
  }
    h1
    {
        text-align: center;
        
    }
    </style>
 
    <%
        String userid=(String) session.getAttribute("uid"); 
%>
<h1><%out.println(userid);%></h1>
    <form action="bookeventdbms.jsp" method="post">
  
        <h1 align="center">Book Event</h1>
        <table border="1" bgcolor="blue" align="center">
                <thead>
                    <tr>
                        <td>1</td>
                        <td>event id</td>
                        <td><input type="text" name="Event id" value="" /></td>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>2</td>
                        <td>event</td>
                        <td><select name="Event name">
                                <option>birthday</option>
                                <option>marriage</option>
                                <option>anniversary</option>
                                <option>retirement</option>
                                <option>death ceremony</option>
                              
                            </select></td>
                    </tr>
                    <tr>
                        <td>3</td>
                        <td>name</td>
                        <td><input type="text" name="name" value="" /></td>
                    </tr>
                    <tr>
                        <td>4</td>
                        <td>DOB</td>
                        <td><input type="text" name="dob" value="" /></td>
                    </tr>
                    <tr>
                        <td>5</td>
                        <td>venue</td>
                        <td><select name="venue">
                                <option>delhi</option>
                                <option>gurgaon</option>
                                <option>noida</option>
                                <option>goa</option>
                                <option>mumbai</option>
                                <option>shimla</option>
                            </select></td>
                    </tr>
                    
                    <tr>
                        <td>6</td>
                        <td>timing</td>
                        <td><select name="timing">
                                <option>day</option>
                                <option>night</option>
                                <option>evening</option>
                                <option>day-night</option>
                            </select></td>
                    </tr>
                    <tr>
                        <td>7</td>
                        <td>NOC</td>
                        <td><select name="noc">
                                <option>50</option>
                                <option>100</option>
                                <option>200</option>
                                <option>500</option>
                                <option>1000</option>
                            </select></td>
                    </tr>
                    <tr>
                        <td>8</td>
                        <td>date of event</td>
                        <td><input type="text" name="doe" value="" /></td>
                    </tr>
                    <tr>
                        <td>9</td>
                        <td>contact no.</td>
                        <td><input type="text" name="contact" value="" /></td>
                    </tr>
                    <td>10</td>
                        <td>userid</td>
                        <td><input type="text" name="userid" value="">
 </td>
                    </tr>
                    <tr>
                        
                        
                        <td><input type="submit" name="b1" value="submit"  /></td>
                        <td><input type="submit" name="b1" value="reset" /></td>
                        <td><input type="submit" name="b1" value="cancel" /></td>
                 
             
                    </tr>
                </tbody>
            </table>
    </form>
    </body>
</html>
