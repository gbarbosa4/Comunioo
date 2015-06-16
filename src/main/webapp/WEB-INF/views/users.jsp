<%@ page contentType="text/html;charset=UTF-8" language="java" isErrorPage="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
    <link rel="stylesheet" href="/css/application.css">


</head>
<body>
<h2>Users List</h2>

<div id="main">
    <div id="header">
        <div id="banner">
            <div id="welcome">
                <h1>${user.username}</h1>
            </div><!--close welcome-->

        </div><!--close banner-->
    </div><!--close header-->

    <div id="menubar">
        <ul id="menu">
            <li><a href="/mainPage">Home</a></li>
            <li class="current"><a href="/users">Ranking</a></li>
            <li><a href="/teamSquads">currentRunking</a></li>
            <li><a href="/teamSquad/${user.username}">teamSquad</a></li>
            <li><a href="/market/${user.username}">Market</a></li>
        </ul>
    </div><!--close menubar-->

    <div id="site_content">

        <div id="content">
            <div class="row">
                <div class="col-sm-6 col-sm-offset-3">
                    <table class="table table-striped" style="width:100%; text-align:center;">
                        <thead>
                        <tr>
                            <th style="width:20%;"><h2>UserName</h2></th>
                            <th style="width:10%;"><h2>Email</h2></th>
                            <th style="width:20%;"><h2>TeamSquad</h2></th>
                            <th style="width:20%;"><h2>Points</h2></th>

                            <th style="width:10%;"></th>
                        </tr>
                        </thead>
                        <c:forEach var="user" items="${users}">
                            <tbody>
                            <tr>
                                <td><a href="/teamSquad/${user.getUsername()}">${user.getUsername()}</a></td>
                                <td>${user.getEmail()}</td>
                                <td>${user.getTeamSquad()}</td>
                                <td>${user.getPoints()}</td>

                            </tr>
                            </tbody>
                        </c:forEach>
                    </table>
                    <br/><br/><br/>
                    <hr/>

                </div>
            </div>
        </div><!--close content-->
    </div><!--close site_content-->



</div><!--close main-->
</body>
</html>
