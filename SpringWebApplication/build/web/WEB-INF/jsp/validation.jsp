

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
          
        <h1> I am in the validation page to display the details of the registered user</h1>
        <!--SHOULD BE IN CURLY BRACES -->
        <h1> User name ${registerUser.name} </h1>        
        <hr>
            UserName   : ${registerUser.name} <br/>
            Phone      : ${registerUser.phone} <br/>
            Email     : ${registerUser.email} <br/>
            Password   : ${registerUser.password} <br/>
            Hobby   : ${registerUser.hobby[0]}  ${registerUser.hobby[1]} ${registerUser.hobby[2]}<br/>
            Country : ${registerUser.country} <br/>
            Gender: ${registerUser.gender}<br/>
            Feedback: ${registerUser.feedback}<br/>
    </body>
</html>
