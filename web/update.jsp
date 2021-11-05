<%-- 
    Document   : update
    Created on : Jan 26, 2020, 8:33:21 PM
    Author     : imesha
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
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
    Connection con = null;
    Statement statement = null;
    ResultSet resultSet = null;
%>
<%
    try {
        con = DriverManager.getConnection(connectionUrl + database, userid, password);
        statement = con.createStatement();
        String sql = "select * from item where itemId=" + itemId;
        resultSet = statement.executeQuery(sql);
        while (resultSet.next()) {
%>
<!DOCTYPE html>
    <html>
        <head>
            <title>Update</title>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <style>

                body{
                    padding: 15px 15px;
                    background-color:lightblue;
                    background-image :linear-gradient(rgba(0,0,0,0.2),rgba(0,0,0,0.2)),url(ka.png);
                }

                .login input[type="text"]
                {
                    width:330px;
                    padding: 10px 10px;
                    margin: 8px 1px;
                    border-bottom:1px solid #fff;
                    background:transparent;
                    outline:none;
                    height:10px;
                    color:solid black;
                    font-size:16px;
                    border-radius:20px;


                }




                h1{
                    color:green;
                }



                .login input[type="submit"]
                {

                    outline:none;
                    height:30px;
                    background:#fb2525;
                    color:#fff;
                    font-size:18px;
                    border-radius:20px;

                }
                .login input[type="text"]
                {
                    width:438px;
                    padding: 8px 8px;
                    margin: 8px 1px;
                    border-bottom:1px solid #fff;
                    background:transparent;
                    outline:none;
                    height:10px;
                    color:white;
                    font-size:16px;
                    border-radius:20px;

                }

                .login input[type="password"]
                {
                    width:438px;
                    padding: 8px 8px;
                    margin: 8px 1px;
                    border-bottom:1px solid #fff;
                    background:transparent;
                    outline:none;
                    height:10px;
                    color:white;
                    font-size:16px;
                    border-radius:20px;

                }
                .login{
                    width:500px;
                    height:400px;
                    background:rgba(0,0,0,0.7);
                    color:#fff;
                    top:50%;
                    left:50%; 
                    position:absolute;
                    transform:translate(-50%,-50%);
                    box-sizing:border-box;
                    padding:70px 30px;
                }


                .topnav{
                    float:right;
                    list-style:none;
                    margin-top:30px;
                }

                .topnav li{
                    display:inline-block;
                }

                .topnav li a{
                    color:white;
                    text-decoration:none;
                    padding:5px 20px;
                    font-family:"Roboto",sans-serif;
                    font-size:15px;
                }

                .topnav li.active a{
                    border:2px solid white;
                }

                .topnav li a:hover{
                    border:2px solid white;
                }      

            </style>
        </head>
        <body>               
                <div class="login">
                    <form name="form2" action="updateProcess.jsp" method="POST">
                        
                <input type="hidden" name="id" value="<%=resultSet.getString("itemId")%>">
                <input type="text" name="id" value="<%=resultSet.getString("itemId")%>">
                        <table border="0">
                            <tr>
                                <td>Item Id</td>
                                <td><input type="text" name="itemId" value="" placeholder="Item ID" /></td>
                            </tr>
                            <tr>
                                <td>Item Name</td>
                                <td><input type="text" name="itemName" value="" placeholder="Item Name" /></td>
                            </tr>
                            <tr>
                                <td>Purchasing Price</td>
                                <td><input type="text" name="purchasePrice" value="" placeholder="Purchasing Unit Price" /></td>
                            </tr>
                            <tr>
                                <td>Selling Price</td>
                                <td><input type="text" name="sellingPrice" value="" placeholder="Selling Unit Price" /></td>
                            </tr>
                            <tr>
                                <td>Quantity</td>
                                <td><input type="number" name="quantity" value="" placeholder="Quantity" /></td>
                            </tr>
                            <tr>
                                <td>Category</td>
                                <td><input type="text" name="category" value="" placeholder="Category" /></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td style="text-align: right"><input type="submit" value="Update" name="btn1" /></td>
                            </tr>
                        </table>
                    </form>
                        <%
                        }
                        con.close();
                        } catch (Exception e) {
                        e.printStackTrace();
                        }
                        %>
                        </body>
                        </html>
