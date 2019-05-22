<%-- 
    Document   : newLogin
    Created on : May 21, 2019, 11:19:11 AM
    Author     : syntel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="s"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
    </head>
    <body>
        <s:form commandName="user"> 
        <Table>
            <tr>
                <td> Username: </td>
                 <td> <input type="text" name="userName"/> </td>
             </tr>
             <tr>
                <td> Password: </td>
                 <td> <input type="password" name="password"/> </td>
             </tr>
             <tr>
                <td> <input type="submit" value="Login"/> </td>
                 <td> <input type="reset" name="clearform"/> </td>
             </tr>
         </Table>
        </s:form>
        <a href ="register.htm" >Not a registered user? </a>
    </body>
</html>
