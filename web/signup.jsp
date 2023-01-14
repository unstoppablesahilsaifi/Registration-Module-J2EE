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
    <body style="background: url(img/bg_main.jpg); background-size:cover; background-attachment:fixed;">
        <div class="container">
            <div class="row">
                <div class="col m6 offset-m3">
                    <div class="card">
                        <div class="card-content">
                            <h3 style="margin-top:10px;" class="center-align">Register here !!</h3>
                            <h5 id="msg"class="center-align"></h5>
                            <div class="form center-align">
                                <!--//creating form-->
                                <form action="Register" method="post" id="myform">
                                    <input type="text" name="user_name" placeholder="Enter user name" required/>
                                      <input type="email" name="user_email" placeholder="Enter user email" required/>
                                    <input type="password" name="user_password" placeholder="Enter user password" required/>
                                  
                                    <div class="file-field input-field">
                                        <div class="btn">
                                            <span>File</span>
                                            <input name="image" type="file" required>
                                        </div>
                                        <div class="file-path-wrapper">
                                            <input class="file-path validate" type="text">
                                        </div>
                                    </div>
                                    <button type="submit" class="btn blue">Submit</button>
                                </form>
                            </div>

                            <div class="loader center-align" style="margin-top:10px;display:none;">
                                <div class="preloader-wrapper big active">
                                    <div class="spinner-layer spinner-blue">
                                        <div class="circle-clipper left">
                                            <div class="circle"></div>
                                        </div><div class="gap-patch">
                                            <div class="circle"></div>
                                        </div><div class="circle-clipper right">
                                            <div class="circle"></div>
                                        </div>
                                    </div>

                                    <div class="spinner-layer spinner-red">
                                        <div class="circle-clipper left">
                                            <div class="circle"></div>
                                        </div><div class="gap-patch">
                                            <div class="circle"></div>
                                        </div><div class="circle-clipper right">
                                            <div class="circle"></div>
                                        </div>
                                    </div>

                                    <div class="spinner-layer spinner-yellow">
                                        <div class="circle-clipper left">
                                            <div class="circle"></div>
                                        </div><div class="gap-patch">
                                            <div class="circle"></div>
                                        </div><div class="circle-clipper right">
                                            <div class="circle"></div>
                                        </div>
                                    </div>

                                    <div class="spinner-layer spinner-green">
                                        <div class="circle-clipper left">
                                            <div class="circle"></div>
                                        </div><div class="gap-patch">
                                            <div class="circle"></div>
                                        </div><div class="circle-clipper right">
                                            <div class="circle"></div>
                                        </div>
                                    </div>

                                </div>
                                <h5>Please wait.......</h5>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <script
            src="https://code.jquery.com/jquery-3.4.1.min.js"
            integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
        crossorigin="anonymous"></script>

        <script>
            $(document).ready(function () {
                console.log("page is ready....")
                $("#myform").on('submit', function (event) {
                    event.preventDefault();
                    //var f = $(this).serialize();
                    // If we have imgae or something in from other than string, so serialize will not work.
                    let f=new FormData(this);
                    console.log(f);
                    $(".loader").show();
                    $(".form").hide();
                    $.ajax({
                        url: "Register",
                        data: f,
                        type: 'POST',
                        success: function (data, textStatus, jqXHR) {
                            console.log(data);
                            console.log("Success.......");
                            $(".loader").hide();
                            $(".form").show();
                            if (data.trim() === 'Done') {
                                $('#msg').html("Successfully Registered !!");
                                $('#msg').addClass('green-text')
                            } else {
                                $('#msg').html("Something went wrong.... !!");
                                $('#msg').addClass('red-text')
                            }
                        },
                        error: function (jqXHR, textStatus, errorThrown) {
                            console.log(data);
                            console.log("Error.......");
                            $(".loader").hide();
                            $(".form").show();
                            $('#msg').html("Something went wrong... !!");
                            $('#msg').addClass('red-text')
                        },
                        processData:false,
                        contentType:false
                        
                    })
                })
            })
        </script>
    </body>
</html>
