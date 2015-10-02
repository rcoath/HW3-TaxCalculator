<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="style.css" />
        <title>User Information</title>
    </head>
    <%
       double hoursWorked = Double.parseDouble(request.getParameter("hoursWorked"));
       double payRate = Double.parseDouble(request.getParameter("payRate"));
       double preTaxDeduct = Double.parseDouble(request.getParameter("preTax"));
       double postTaxDeduct = Double.parseDouble(request.getParameter("postTax"));
       double regularHours = 40;
       double otHours = 0;
       double otPayRate = 0;
       double otPay = 0;
       double regularPay;
       double taxablePay;
       double grossPay;
       double taxAmount;
       double postTaxPay;
       double netPay;
            
            
         if(hoursWorked > 40)
                {
                    otPayRate = payRate * 1.5;
                    otHours = hoursWorked - 40;
                    regularHours = 40;
                    otPay = otHours * otPayRate;
                    regularPay = regularHours * payRate;
                    grossPay = regularPay + otPay;
                }
            else
                {
                    grossPay = hoursWorked * payRate;
                }
            
            taxablePay = grossPay - preTaxDeduct;
      
            if(grossPay < 500)
                {
                    taxAmount = taxablePay * .18;
                }
            else
                {
                    taxAmount = taxablePay * .22;
                }
            
            postTaxPay = taxablePay - taxAmount;
            netPay = postTaxPay - postTaxDeduct;
    %>
    
    <body>
        <h1>Salary Info</h1>
        <table border="1">
            <tbody>
                <tr>
                    <td>Total Hours Worked:</td>
                    <td><%= hoursWorked %></td>
                </tr>    
            
                <tr>
                    <td>Hourly Rate:</td>
                    <td> <%= payRate %> </td>
                </tr>  
                
                <tr>
                    <td># Hours Overtime:</td>
                    <td> <%= otHours%> </td>
                </tr> 
                
                <tr>
                    <td>Overtime Hourly Rate:</td>
                    <td><%= otPayRate%></td>
                </tr> 
                
                <tr>
                    <td>Gross Pay:</td>
                    <td><%= grossPay %></td>
                </tr> 
                
                <tr>
                    <td>Pre-tax Deduct:</td>
                    <td><%= preTaxDeduct %> </td>
                </tr> 
                
                <tr>
                    <td>Pre-tax Pay:</td>
                    <td><%= taxablePay %></td>
                </tr> 
                
                <tr>
                    <td>Tax Amount:</td>
                    <td><%= taxAmount %></td>
                </tr> 
                
                <tr>
                    <td>Post-tax Pay:</td>
                    <td><%= postTaxPay %></td>
                </tr> 
                
                <tr>
                    <td>Post-tax Deduct:</td>
                    <td><%= postTaxDeduct %></td>
                </tr> 
                
                <tr>
                    <td>Net Pay:</td>
                    <td><%= netPay %></td>
                </tr> 
            </tbody>
            
        </table>
    </body>
</html>
