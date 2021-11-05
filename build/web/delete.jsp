<%-- 
    Document   : delete
    Created on : Jan 26, 2020, 7:07:33 PM
    Author     : Win 10
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String itemId = request.getParameter("itemId");
    try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/inventorymanagementsystem", "root", "");
        Statement st = con.createStatement();
        String query = "delete from item where itemId= '" + itemId + "'";
        int i = st.executeUpdate(query);
        if (i != 0) {
            out.println("<h1>Data Deleted Successfully! <a href='home.jsp'</h1>Go to the home page</a>");
        } else {
            out.println("<h1>Error while Delete</h1>");
        }
    } catch (Exception e) {
        out.println(e.getMessage());
    }
%>
