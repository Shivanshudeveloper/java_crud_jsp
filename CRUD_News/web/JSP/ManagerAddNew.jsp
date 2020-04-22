<%-- 
    Document   : ManagerAddNew
    Created on : 21 Apr, 2020, 11:30:29 PM
    Author     : aicte
--%>

<%@page import="dao.DataAccess"%>
<%@page import="Models.News"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String title = request.getParameter("title");
       
            Date dateTemp = new Date(System.currentTimeMillis());
            SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd");
            String date = dateFormat.format(dateTemp.getTime());
            
            String description = request.getParameter("description");
            String detail = request.getParameter("detail");
            String category = request.getParameter("category");
            String image = request.getParameter("image");
            
            News n = new News(0, title, date, description, detail, category, image);
            DataAccess da = new DataAccess();
            da.addNew(n);
            
            response.sendRedirect("/CRUD_News/AllPost");
        %>
    </body>
</html>
