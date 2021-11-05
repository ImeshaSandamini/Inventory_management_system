<%-- 
    Document   : item
    Created on : Jan 25, 2020, 3:14:20 PM
    Author     : imesha
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inventory Management System</title>
    </head>
    <body>
        <h1>Stock_Items</h1>

        <%
            String itemId = request.getParameter("itemId");
            String itemName = request.getParameter("itemName");            
            String purchasePrice = request.getParameter("purchasePrice");
            String sellingPrice = request.getParameter("sellingPrice");
            int quantity = Integer.parseInt(request.getParameter("quantity"));
            String category = request.getParameter("category");

            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/inventorymanagementsystem", "root", "");
                Statement stmt=con.createStatement();
                String query="insert into item(itemId,itemName,purchasePrice,sellingPrice,quantity,category)values('"+itemId+"','"+itemName+"','"+purchasePrice+"','"+sellingPrice+"',"+quantity+",'"+category+"')";
                int a=stmt.executeUpdate(query);
                
                if(a>0){
                    out.println("<p> Successfully Entered the items.See Available Items <a href='productReport.jsp'>Here</a></p>");
                    
                }
                
                
                
            } catch (Exception e) {
                out.println("<p> ERROR: "+e.getMessage()+"</p>");
            }

        %>
            
        </form>
        </table>
    </body>
</html>
