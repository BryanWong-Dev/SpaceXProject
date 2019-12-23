<%-- 
    Document   : index
    Created on : Dec 24, 2019, 6:44:48 AM
    Author     : zilam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <title>Space X Rocket Booking System</title>

        <link rel="shortcut icon" href="media/favicon.ico" type="image/x-icon">
        <link rel="stylesheet" href="css/fontawesome-free-5.12.0-web/css/all.css">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/jquery-ui.css">
        <link rel="stylesheet" href="css/style.css">

        <script src="js/jquery-3.4.1.min.js"></script>
        <script src="js/jquery-ui.min.js"></script>
        <script src="js/main.js"></script>
        <script src="js/popper.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <!--<script src="js/number.js"></script>-->
        <script>

        </script>
    </head>
    <body>
        <!--         <a class="navbar-brand mx-auto" href="">
                        <img src="media/spacex_logo_white.png" alt=""></a>-->
        <nav class="navbar navbar-expand-md  navbar-dark fixed-top ">
            <div class="container-fluid"> 
                <a class="navbar-brand mx-auto" href="#">
                    <img src="media/spacex_logo_white.png" alt=""></a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="collapsibleNavbar">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item">
                            <a class="nav-link" href="#">Book Now</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Manage Booking</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Manage Flight</a>
                        </li>    
                    </ul>
                </div>  
            </div>
        </nav>

        <div class="video-background container-fluid">
            <div class="video-wrap">
                <div id="video">
                    <video id="bgvid" autoplay loop muted>
                        <source src="media/StarshipEarth2Earth_1.mp4" type="video/mp4">
                    </video>
                </div>
            </div>
        </div>

        <div class="d-flex justify-content-between bg-secondary mb-3">
            <div class="p-2 left-panel text-center ">
                <div class="flight-form">
                    <h2>Flight Booking </h2>
                    <form action="#" method="GET" >
                        <div class="d-flex mb-3 internal-flight-form form-group inputWithPlane">
                            <label for="from" class="p-2 title">From</label>
                            <label for="from" class="p-2 ">:</label>
                            <!--<input class="p-2 flex-grow-1 form-control input-sm" placeholder="Malaysia" type ="text" name="from" id="from" required/>-->
                            <select class="form-control p-2 flex-grow-1 form-control input-sm" name="from" id="from" required>
                                <%
                                    String[] locations = { "Algeria" , "Argentina" , "Australia" , "Austria" , "Bangladesh" , "Belgium" , "Brazil" , "Canada" , "Chile" , "China" , "Colombia" , "Czech Republic" , "Denmark" , "Egypt" , "Finland" , "France" , "Germany" , "Hong Kong SAR" , "India" , "Indonesia" , "Iraq" , "Ireland" , "Islamic Republic of Iran" , "Israel" , "Italy" , "Japan" , "Kazakhstan" , "Korea" , "Malaysia" , "Mexico" , "Netherlands" , "Nigeria" , "Norway" , "Pakistan" , "Peru" , "Philippines" , "Poland" , "Portugal" , "Romania" , "Russia" , "Saudi Arabia" , "Singapore" , "South Africa" , "Spain" , "Sweden" , "Switzerland" , "Taiwan Province of China" , "Thailand" , "Turkey" , "Ukraine" , "United Arab Emirates" , "United Kingdom" , "United States" , "Vietnam"
};
//TODOOOOOO LINK DATABASE GET LOCATIONS
                                    for (int i = 0; i < locations.length; i++) {
                                %>
                                <option><%= locations[i]%></option> 
                                <%
                                    }
                                %>
                            </select>
                            <i class="fas fa-plane-departure"></i>
                        </div>
                        <div class="d-flex mb-3 internal-flight-form form-group inputWithPlane">
                            <label for="destination" class="p-2 title">Destination</label>
                            <label for="destination" class="p-2 ">:</label>
                            <!--<input class="p-2 flex-grow-1 form-control input-sm" type ="text" name="destination" id="destination" required/>-->
                            <select class="form-control p-2 flex-grow-1 form-control input-sm" name="from" id="from" required>
                               <%
//TODOOO LINK DATABASE GET LOCATIONS
                                    for (int i = 0; i < locations.length; i++) {
                                %>
                                <option><%= locations[i]%></option> 
                                <%
                                    }
                                %>
                            </select>
                            <i class="fas fa-plane-arrival"></i>
                        </div>
                        <div class="d-flex mb-3 internal-flight-form form-group inputWithCalendar">
                            <label for="departDate" class="p-2 title">Depart Date</label>
                            <label for="departDate" class="p-2 ">:</label>
                            <input class="p-2 flex-grow-1 form-control input-sm" type ="text" name="departDate" id="departDate" required/>
                            <i class="far fa-calendar-alt"></i>
                        </div>
                        <div class="d-flex mb-3 internal-flight-form form-group inputWithCalendar">
                            <label for="returnDate" class="p-2 title ">Return Date</label>
                            <label for="returnDate" class="p-2 ">:</label>
                            <input class="p-2 flex-grow-1 form-control input-sm " type="text" name="returnDate" id="returnDate" />
                            <i class="far fa-calendar-alt"></i>

                        </div>
                        <div  class="d-flex mb-3 internal-flight-form adult">
                            <label for="quantity" class="p-2 adultTitle">Adult</label>
                            <label for="quantity" class="p-2 ">:</label>
                            <div class="numberbox p-2 flex-grow-1 ">
                                <input  placeholder="1" name="quantity" id="quantity" required type="number" value="" min="1" max="20"/>
                            </div>
                        </div>

                        <div > 
                            <input type="submit" name="button" value="Submit" class="btn btn-primary">
                            <input type="reset" name="button" value="Reset" class="btn btn-primary">
                        </div>
                    </form>
                </div>
            </div>
            <div class="p-2 right text-center">Flex item 2</div>
            <div class="p-2 bottom text-center">Flex item 2</div>
        </div>








        <!--- Start Course Section -->
        <div id="section" class="row justify-content-center">
            <div class="col-md-8 text-center">
                <h1>section1</h1>
                <p class="lead">blablabla</p>
                <a class="btn btn-secondary btn-sm" href="#section2" target="_blank">go next</a>
            </div>
        </div>
        <!--- End Course Section -->
        <div id="section2" class="row justify-content-center">
            <div class="col-md-8 text-center">
                <h1>section2</h1>
                <p class="lead">lalallaa</p>
                <a class="btn btn-secondary btn-sm" href="#" target="_blank">go next</a>
            </div>
        </div>

        <!--- Script Source Files -->

        <!--- End of Script Source Files -->

    </body>
</html>

