<%-- 
    Document   : index.jsp
    Created on : Sep 30, 2015, 4:15:49 PM
    Author     : Ryan Coath
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tax Calculator</title>
    </head>
    <body>
        <h1>Tax Calculator</h1>
        
        <form>
        <table border="1">
            <tbody>
              <tr>
              <td>Hours Worked:</td>
              <td><input type="text" name="hours worked" value="" size="50"></td> 
              </tr>
              
              <tr>
              <td>Hourly Pay:</td>
              <td><input type="text" name="hours worked" value="" size="50"></td> 
              </tr>
              
              <tr>
              <td>Pre-tax Deduct:</td>
              <td><input type="text" name="hours worked" value="" size="50"></td> 
              </tr>
              
              <tr>
              <td>Post-tax Deduct:</td>
              <td><input type="text" name="hours worked" value="" size="50"></td> 
              </tr>
              
        </table>
        
        <input type="reset" value="Clear" id="clear">
        <input type="submit" value="Submit" id="submit">
        
        </form>
        
    </body>
</html>
