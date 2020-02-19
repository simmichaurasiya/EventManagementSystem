
<html>

    <body>
      <% session.getAttribute("uid");%>
      <% session.getAttribute("name");%>
     
        
        <h1>user login page</h1>
       
        <link href="bootstrap.min.css" rel="stylesheet">
        <script>
            function func1()
            {
                document.getElementById("a1").style.display="block";
                document.getElementById("a2").style.display="none";
                document.getElementById("a3").style.display="none";
                document.getElementById("a4").style.display="none";
                  
            }
             function func2()
            {
              document.getElementById("a1").style.display="none";
                document.getElementById("a2").style.display="block";
                 document.getElementById("a3").style.display="none";
                  document.getElementById("a4").style.display="none";
            }
             function func3()
            {
              document.getElementById("a1").style.display="none";
                document.getElementById("a2").style.display="none";
                 document.getElementById("a3").style.display="block";
                  document.getElementById("a4").style.display="none";
            }
             function func4()
            {
             document.getElementById("a1").style.display="none";
                document.getElementById("a2").style.display="none";
                 document.getElementById("a3").style.display="none";
                  document.getElementById("a4").style.display="block";
            }
            </script>

        
        <div class="container">
            <div class="col-lg-4 col-md-4" style="height:400px; border: solid 1px;">
                <p><button id="abc" onclick="func1()" class="alert alert-success">book event</button></p>
                <p><button id="def" onclick="func2()" class="alert alert-success">view event</button></p>
                <p><button id="xyz" onclick="func3()" class="alert alert-success">user info</button></p>
                
        </div>
             <div class="col-lg-8 col-md-8" id="a1" style="height:400px; border: solid 1px; background-color:red;">
                <jsp:include page="book event.jsp"/>
            </div>
            <div class="col-lg-8 col-md-8" id="a2" style="height:400px; border: solid 1px; display:none; background-color:yellow;">
                <jsp:include page="vieweventuser.jsp"/>
            </div>
            <div class="col-lg-8 col-md-8" id="a3" style="height:400px; border: solid 1px; display:none; background-color:green;">
                <jsp:include page="userinfo.jsp"/>
            </div>
            
            </div>
        
        <!----
        <div id="a1"><%--<jsp:include page="RED.jsp"/>--%> </div>
        <div id="a2" style="display:none"><%--<jsp:include page="YELLOW.jsp"/>--%></div>
        <div id="a3" style="display:none"><%--<jsp:include page="GREEN.jsp"/>--%></div>
        <div id="a4" style="display:none"><%--<jsp:include page="BLUE.jsp"/>--%></div>--->
    </body>
</html>

    </body>
</html>
