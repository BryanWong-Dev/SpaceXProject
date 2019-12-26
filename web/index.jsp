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
    <body data-spy="scroll" data-target=".navbar" data-offset="50">
        <!-------------------------start of section2-------------------------------------------------->
        <!--- Start Course Section -->
        <nav class="navbar navbar-expand-md  navbar-dark fixed-top ">
            <div class="container-fluid"> 
                <a class="navbar-brand mx-auto" href="#section1">
                    <img src="media/spacex_logo_white.png" alt="">
                </a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse menulist" id="collapsibleNavbar">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item">
                            <a class="nav-link" href="#section1">Section1</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#section2">Section2</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#section3">Section3</a>
                        </li>    
                        <li class="nav-item">
                            <a class="nav-link" href="#">Register</a>
                        </li>    
                        <li class="nav-item">
                            <a class="nav-link" href="#">Log In</a>
                        </li>    
                    </ul>
                </div>  
            </div>
        </nav>

        <div id="section1" class="video-background container-fluid">
            <div class="video-wrap">
                <div id="video">
                    <video id="bgvid" autoplay loop muted>
                        <source src="media/StarshipEarth2Earth_1.mp4" type="video/mp4">
                    </video>
                </div>
            </div>
        </div>

        <div  class="container-fluid d-flex justify-content-between bg-secondary mb-3">
            <div class="p-2 left-panel text-center ">
                <div class="flight-form">
                    <h2>Flight Booking </h2>
                    <form action="#" method="GET" >
                        <div class="d-flex mb-3 internal-flight-form form-group inputWithPlane">
                            <label for="from" class="p-2 title">From</label>
                            <label for="from" class="p-2 ">:</label>
                            <!--<input class="p-2 flex-grow-1 form-control " placeholder="Malaysia" type ="text" name="from" id="from" required/>-->
                            <select class="form-control p-2 flex-grow-1 form-control " name="from" id="from" required>
                                <%
                                    String[] locations = {"Algeria", "Argentina", "Australia", "Austria", "Bangladesh", "Belgium", "Brazil", "Canada", "Chile", "China", "Colombia", "Czech Republic", "Denmark", "Egypt", "Finland", "France", "Germany", "Hong Kong SAR", "India", "Indonesia", "Iraq", "Ireland", "Islamic Republic of Iran", "Israel", "Italy", "Japan", "Kazakhstan", "Korea", "Malaysia", "Mexico", "Netherlands", "Nigeria", "Norway", "Pakistan", "Peru", "Philippines", "Poland", "Portugal", "Romania", "Russia", "Saudi Arabia", "Singapore", "South Africa", "Spain", "Sweden", "Switzerland", "Taiwan Province of China", "Thailand", "Turkey", "Ukraine", "United Arab Emirates", "United Kingdom", "United States", "Vietnam"
                                    };
//TODOOOOOO LINK DATABASE GET LOCATIONS
                                    for (int i = 0; i < locations.length; i++) {
                                %>
                                <option><%= locations[i]%></option> 
                                <%
                                    }
                                %>
                            </select>
                            <!--<i class="fas fa-plane-departure"></i>-->
                           <i class="fas fa-rocket"></i>
                        </div>

                        <div class="d-flex mb-3 internal-flight-form form-group inputWithPlane">
                            <label for="destination" class="p-2 title">Destination</label>
                            <label for="destination" class="p-2 ">:</label>
                            <!--<input class="p-2 flex-grow-1 form-control " type ="text" name="destination" id="destination" required/>-->
                            <select class="form-control p-2 flex-grow-1 form-control "  name="from" id="from" required>
                                <%
                                    //TODOOO LINK DATABASE GET LOCATIONS
                                    for (int i = 0; i < locations.length; i++) {
                                %>
                                <option><%= locations[i]%></option> 
                                <%
                                    }
                                %>
                            </select>
                            <!--<i class="fas fa-plane-arrival"></i>-->
                            <i class="fas fa-rocket" style="transform: rotate(90deg);"></i>
                        </div>

                        <div class="d-flex mb-3 internal-flight-form form-group inputWithCalendar">
                            <label for="departDate" class="p-2 title">Depart Date</label>
                            <label for="departDate" class="p-2 ">:</label>
                            <input class="p-2 flex-grow-1 form-control " placeholder="dd/mm/yy     " type ="text" name="departDate" id="departDate" required/>
                            <i class="far fa-calendar-alt"></i>
                        </div>

                        <div class="d-flex mb-3 internal-flight-form form-group inputWithCalendar">
                            <label for="returnDate" class="p-2 title ">Return Date</label>
                            <label for="returnDate" class="p-2 ">:</label>
                            <input class="p-2 flex-grow-1 form-control  " placeholder="Ignore for One Way Trip          " type="text" name="returnDate" id="returnDate" />
                            <i class="far fa-calendar-alt"></i>
                        </div>

                        <div  class="d-flex mb-3 internal-flight-form adult">
                            <label for="quantity" class="p-2 title">Adult</label>
                            <label for="quantity" class="p-2 ">:</label>
                            <div class="numberbox  ">
                                <input  class="p-2 flex-grow-1 form-control  " placeholder="1" name="quantity" id="quantity" required type="number" value="" min="1" max="20"/>
                            </div>
                        </div>

                        <div class="d-flex justify-content-center mb-3"> 
                            <button type="submit" value="Submit" class="btn btn-secondary">Book Now</button>
                            <button type="reset" value="Reset" class="fas fa-redo btn-secondary" aria-hidden="true"></button>
                        </div>
                    </form>
                </div>
            </div>

            <div class="p-2 right text-center">
                
                Flex item 2
            
            
            
            </div>

            <div class="p-2 bottom text-center justify-content-center">
                <div class="box" >
                    <a href="#section2" name="next">
                        <span></span>
                        <span></span>
                        <span></span>
                    </a>
                </div>
            </div>
        </div>


       
<!--------------------------end of section1-------------------------------------------------->






<!-------------------------start of section2-------------------------------------------------->
     
        <div id="section2" class="container-fluid row justify-content-center">
            <div class="col-md-8 text-center">
                <h1>section2</h1>
                <p class="lead">blablabla</p>
                <a class="btn btn-secondary btn-sm" href="#section3" >go next</a>
            </div>
        </div>
      
<!--------------------------end of section2-------------------------------------------------->

<!--------------------------start of section3-------------------------------------------------->
        
        <div id="section3" class="container-fluid row justify-content-center">
            <div class="col-md-8 text-center">
                <h1>section3</h1>
                <p class="lead">lalallaa</p>
                <a class="btn btn-secondary btn-sm" href="#" >go next</a>
            </div>
        </div>
        
<!--------------------------end of section3-------------------------------------------------->


    </body>
</html>

