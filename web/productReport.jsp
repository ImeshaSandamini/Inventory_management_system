<%-- 
    Document   : total
    Created on : Jan 26, 2020, 12:42:37 PM
    Author     : imesha
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    String itemId = request.getParameter("itemId");

    String driver = "com.mysql.jdbc.Driver";
    String connectionUrl = "jdbc:mysql://localhost:3306/";
    String database = "inventorymanagementsystem";
    String userid = "root";
    String password = "";
    try {
        Class.forName(driver);
    } catch (ClassNotFoundException e) {
        e.printStackTrace();
    }
    Connection connection = null;
    Statement statement = null;
    ResultSet resultSet = null;
%>

<html>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <head>
        <title>Inventory Management System</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <style>
            table {
                font-family: arial, sans-serif;
                border-collapse: collapse;
                width: 100%;
            }

            td, th {
                border: 1px solid #dddddd;
                text-align: left;
                padding: 8px;
            }

            tr:nth-child(even) {
                background-color: #dddddd;
            }
        </style>
    </head>
    <body>

        <h2>Product Report</h2>

        <table>

            <tr>
                <th>Item ID</th>
                <th>Item Name</th>
                <th>Purchase Price</th>
                <th>Selling Price</th>
                <th>Quantity</th>
                <th>Category</th>
                <th>Action</th>
            </tr>
        <%
            try {
                connection = DriverManager.getConnection(connectionUrl + database, userid, password);
                statement = connection.createStatement();
                String sql = "select * from item";
                resultSet = statement.executeQuery(sql);
                int i=0;  
                while (resultSet.next()) {                                 
        %>
        <tr>
            <td><%=resultSet.getString("itemId")%></td>
            <td><%=resultSet.getString("itemName")%></td>
            <td><%=resultSet.getString("purchasePrice")%></td>
            <td><%=resultSet.getString("sellingPrice")%></td>
            <td><%=resultSet.getString("quantity")%></td>
            <td><%=resultSet.getString("category")%></td>
            <td><a href="delete.jsp?itemId=<%=resultSet.getString("itemId") %>"><button type="button" class="delete">Delete</button></a>
                
                <a href="update.jsp?itemId=<%=resultSet.getString("itemId")%>">Update</a>
            </td>
        </tr>
        
        <%
                }
                connection.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        %>
    </table>

</body>
</html>

</html>