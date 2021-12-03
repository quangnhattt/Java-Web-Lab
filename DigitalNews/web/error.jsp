

<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="resources/css/style.css" rel="stylesheet" type="text/css"/>
        <title>My Digital News</title>
    </head>
    <body>
        <%@include file="components/header.jsp" %>
        <div class="page-body">
            <div class="container">
                <div class="left">${requestScope.error}</div>
                <%@include file="components/right.jsp" %>
            </div>
        </div>
        <%@include file="components/footer.jsp" %>
    </body>
</html>
