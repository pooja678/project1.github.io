<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
       <%@ include file="header.jsp" %>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Gym Template">
    <meta name="keywords" content="Gym, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Gym</title>

    </head>

<body>
        <!-- Breadcrumb Section Begin -->
    <section class="breadcrumb-section set-bg" data-setbg="<c:url value="/assets/img/breadcrumb-bg.jpg"/>">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="breadcrumb-text">
                        <h2>Timetable</h2>
                        <div class="bt-option">
                            <a href="<c:url value="/index.jsp"/>">Home</a>
                            <a href="#">Pages</a>
                            <span>Services</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb Section End -->

    <!-- Class Timetable Section Begin -->
    <section class="class-timetable-section spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <div class="section-title">
                        <span>Find Your Time</span>
                        <h2>Find Your Time</h2>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="table-controls">
                        <ul>
                            <li class="active" data-tsfilter="all">All event</li>
                            <li data-tsfilter="fitness">Fitness tips</li>
                            <li data-tsfilter="motivation">Motivation</li>
                            <li data-tsfilter="workout">Workout</li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="class-timetable">
                        <table>
                            <thead>
                                <tr>
                                    <th></th>
                                    <th>Monday</th>
                                    <th>Tuesday</th>
                                    <th>Wednesday</th>
                                    <th>Thursday</th>
                                    <th>Friday</th>
                                    <th>Saturday</th>
                                    <th>Sunday</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td class="class-time">6.00am - 8.00am</td>
                                    <td class="dark-bg hover-bg ts-meta" data-tsmeta="workout">
                                        <h5>WEIGHT LOOSE</h5>
                                        <span>RLefew D. Loee</span>
                                    </td>
                                    <td class="hover-bg ts-meta" data-tsmeta="fitness">
                                        <h5>Cardio</h5>
                                        <span>RLefew D. Loee</span>
                                    </td>
                                    <td class="dark-bg hover-bg ts-meta" data-tsmeta="workout">
                                        <h5>Yoga</h5>
                                        <span>Keaf Shen</span>
                                    </td>
                                    <td class="hover-bg ts-meta" data-tsmeta="fitness">
                                        <h5>Fitness</h5>
                                        <span>Kimberly Stone</span>
                                    </td>
                                    <td class="dark-bg blank-td"></td>
                                    <td class="hover-bg ts-meta" data-tsmeta="motivation">
                                        <h5>Boxing</h5>
                                        <span>Rachel Adam</span>
                                    </td>
                                    <td class="dark-bg hover-bg ts-meta" data-tsmeta="workout">
                                        <h5>Body Building</h5>
                                        <span>Robert Cage</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="class-time">10.00am - 12.00am</td>
                                    <td class="blank-td"></td>
                                    <td class="dark-bg hover-bg ts-meta" data-tsmeta="fitness">
                                        <h5>Fitness</h5>
                                        <span>Kimberly Stone</span>
                                    </td>
                                    <td class="hover-bg ts-meta" data-tsmeta="workout">
                                        <h5>WEIGHT LOOSE</h5>
                                        <span>RLefew D. Loee</span>
                                    </td>
                                    <td class="dark-bg hover-bg ts-meta" data-tsmeta="motivation">
                                        <h5>Cardio</h5>
                                        <span>RLefew D. Loee</span>
                                    </td>
                                    <td class="hover-bg ts-meta" data-tsmeta="workout">
                                        <h5>Body Building</h5>
                                        <span>Robert Cage</span>
                                    </td>
                                    <td class="dark-bg hover-bg ts-meta" data-tsmeta="motivation">
                                        <h5>Karate</h5>
                                        <span>Donald Grey</span>
                                    </td>
                                    <td class="blank-td"></td>
                                </tr>
                                <tr>
                                    <td class="class-time">5.00pm - 7.00pm</td>
                                    <td class="dark-bg hover-bg ts-meta" data-tsmeta="fitness">
                                        <h5>Boxing</h5>
                                        <span>Rachel Adam</span>
                                    </td>
                                    <td class="hover-bg ts-meta" data-tsmeta="motivation">
                                        <h5>Karate</h5>
                                        <span>Donald Grey</span>
                                    </td>
                                    <td class="dark-bg hover-bg ts-meta" data-tsmeta="workout">
                                        <h5>Body Building</h5>
                                        <span>Robert Cage</span>
                                    </td>
                                    <td class="blank-td"></td>
                                    <td class="dark-bg hover-bg ts-meta" data-tsmeta="workout">
                                        <h5>Yoga</h5>
                                        <span>Keaf Shen</span>
                                    </td>
                                    <td class="hover-bg ts-meta" data-tsmeta="motivation">
                                        <h5>Cardio</h5>
                                        <span>RLefew D. Loee</span>
                                    </td>
                                    <td class="dark-bg hover-bg ts-meta" data-tsmeta="fitness">
                                        <h5>Fitness</h5>
                                        <span>Kimberly Stone</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="class-time">7.00pm - 9.00pm</td>
                                    <td class="hover-bg ts-meta" data-tsmeta="motivation">
                                        <h5>Cardio</h5>
                                        <span>RLefew D. Loee</span>
                                    </td>
                                    <td class="dark-bg blank-td"></td>
                                    <td class="hover-bg ts-meta" data-tsmeta="fitness">
                                        <h5>Boxing</h5>
                                        <span>Rachel Adam</span>
                                    </td>
                                    <td class="dark-bg hover-bg ts-meta" data-tsmeta="workout">
                                        <h5>Yoga</h5>
                                        <span>Keaf Shen</span>
                                    </td>
                                    <td class="hover-bg ts-meta" data-tsmeta="motivation">
                                        <h5>Karate</h5>
                                        <span>Donald Grey</span>
                                    </td>
                                    <td class="dark-bg hover-bg ts-meta" data-tsmeta="fitness">
                                        <h5>Boxing</h5>
                                        <span>Rachel Adam</span>
                                    </td>
                                    <td class="hover-bg ts-meta" data-tsmeta="workout">
                                        <h5>WEIGHT LOOSE</h5>
                                        <span>RLefew D. Loee</span>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Class Timetable Section End -->

   
    <!-- Search model Begin -->
    <div class="search-model">
        <div class="h-100 d-flex align-items-center justify-content-center">
            <div class="search-close-switch">+</div>
            <form class="search-model-form">
                <input type="text" id="search-input" placeholder="Search here.....">
            </form>
        </div>
    </div>
    <!-- Search model end -->
   <%@ include file="footer.jsp" %>

</body>

</html>