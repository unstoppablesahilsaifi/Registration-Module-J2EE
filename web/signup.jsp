<%-- 
    Document   : signup
    Created on : 19-Dec-2022, 4:08:56 pm
    Author     : saifi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <!-- Compiled and minified CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">

    <!-- Compiled and minified JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
            
    </head>
    <body>
        <div class="container">
            <div class="row">
                <div class="col m6 offset-m3">
                    <div class="card">
                        <div class="card-content">
                            <h3>Register here !!</h3>
                            <div class="form center-align">
                                 <!--//creating form-->
                                <form action="Register" method="post">
                                    <input type="text" name="user_name" placeholder="Enter user name"/>
                                    <input type="password" name="user_password" placeholder="Enter user password"/>
                                    <input type="email" name="user_email" placeholder="Enter user email"/>
                                    <button type="submit" class="btn red">Submit</button>
                                </form>
                            </div>
                            <div class="loader">
                               
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
