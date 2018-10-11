<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">


        <style>
            body {font-family: Arial, Helvetica, sans-serif;
                  text-align: center;
                  margin-top: 80px;


            }
            form {border: 3px solid #f1f1f1;}

            input[type=text], input[type=password] {
                width: 30%;
                padding: 12px 20px;
                margin: 8px 0;
                display: inline-block;
                border: 1px solid #ccc;
                box-sizing: border-box;
            }

            button {
                background-color: #F75D59;
                color: white;
                padding: 14px 20px;
                margin: 8px 0;
                border: none;
                cursor: pointer;
                width: 20%;
                margin-left: 85px;
            }

            button:hover {
                opacity: 0.8;
            }

            .cancelbtn {
                width: auto;
                padding: 10px 18px;
                background-color: #f44336;
            }

            .imgcontainer {
                text-align: center;
                margin: 24px 0 12px 0;
            }

            img.avatar {
                width: 40%;
                border-radius: 50%;
            }

            .container {
                padding: 16px;

            }

            span.psw {
                float: right;
                padding-top: 16px;
            }

            /* Change styles for span and cancel button on extra small screens */
            @media screen and (max-width: 300px) {
                span.psw {
                    display: block;
                    float: none;
                }
                .cancelbtn {
                    width: 100%;
                }
            }
        </style>
        <link href="../../resources3/css/style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>

        <h1>Login Form</h1>

        <form action="<%= request.getContextPath()%>/checkLoginAdmin" method="post">


            <div class="container" style="text-align: center; background-color: #f1f1f1">

                <br/>
                <input type="radio" name="type" value="admin"> Admin
                <input type="radio" name="type" value="member"> Member<br><br>
                <label for="uname"><b>Username : </b></label>
                <input type="text" placeholder="Enter Username" name="uname" id="uname" required>
                <br>
                <label for="psw"><b>Password : </b></label>
                <input type="password" placeholder="Enter Password" name="psw" id="psw" required>

                <br/>
                <button type="submit">Login</button>

                <br>
                <br>
                <br>
                <h4>${em}</h4>
                
            </div>


        </form>


    </body>
</html>