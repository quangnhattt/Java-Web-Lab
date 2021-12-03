<%-- 
    Document   : contact
    Created on : Sep 8, 2021, 9:52:21 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/contact.css" rel="stylesheet" type="text/css"/>
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        <title>Contact</title>
    </head>
    <body>
        <jsp:include page="components/header.jsp"/>
        <!--main content-->
        <div class="main-content">            
            <div class="content-and-share">
                <!--content-->
                <div class="content-panel">                    
                    <div class="title-content">Contact</div>
                    <div class="info-title">PHOTOGRAPHER</div>                    
                    <div class="info">
                        <div class="address">
                            <ul>
                                <li>Address:&nbsp; ${photographerInfor.address}</li>
                                <li>City:&nbsp; ${photographerInfor.city}</li>
                                <li>Country:&nbsp; ${photographerInfor.country}</li>
                            </ul>
                        </div>
                        <div class="contact-way">
                            <p>Tel: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ${photographerInfor.phone}</p>
                            <p>Email:&nbsp;&nbsp; ${photographerInfor.email}</p>
                        </div>
                    </div>
                        <div class="map">
                            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3724.458650859533!2d105.52420231540215!3d21.014326593645716!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31345b465a4e65fb%3A0xaae6040cfabe8fe!2zxJDhuqFpIGjhu41jIEZQVA!5e0!3m2!1svi!2s!4v1585369141317!5m2!1svi!2s" width="600" height="450" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
                        </div>
<!--                    <div class="image-map">
                      
                        <img src="${photographerInfor.map}" alt=""/>
                    </div>-->
                </div>
                <!--end content-->
                <!--share-->
                <jsp:include page="components/right.jsp"/>
                <!--end share-->
            </div>         
        </div>
        <!-- end main content -->
        <jsp:include page="components/footer.jsp"/>
          <script>
            $(document).ready(function () {
                $('#toggle').click(function () {
                   
                    $('.item').slideToggle();
                });
            });
        </script>
    </body>
</html>
