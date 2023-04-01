<?php

//if (session_status() !== PHP_SESSION_ACTIVE) {session_start();}
if(session_id() == '' || !isset($_SESSION)){session_start();}

include 'config.php';

?>

<!DOCTYPE html>
<html>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">


    <title>Contact Us || CENTRAL ASIA CASING</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="include/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="include/style.css">
</head>

<body id="contactus">

<!-- Header Nav ============================================================== -->
    <div class="header-blue">
    <nav class="navbar navbar-default navigation-clean-search">
      <div class="container">
        <div class="navbar-header"><a class="navbar-brand navbar-link" href="index.php"><img src="assets/img/logo.jpg" width="200px" height="50px"></a>
                    <button class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button>
        </div>
        <div class="collapse navbar-collapse" id="navcol-1">
          <ul class="nav navbar-nav">
            <li class="active" role="presentation"><a href="index.php">Home</a></li>
          </ul>
          <form class="navbar-form navbar-left" target="_self" method="GET" action="search.php">
            <div class="form-group">
              <label class="control-label" for="search-field"><i class="glyphicon glyphicon-search"></i></label>
                <input class="form-control search-field" type="search" name="search" id="search-field">
            </div>
          </form>
          <p class="navbar-text navbar-right">
            <?php
              if(isset($_SESSION['username'])){
                echo '<a  class="navbar-link login" href="cart.php"><i class="glyphicon glyphicon-shopping-cart"></i> Cart</a>';
                echo '<a class="navbar-link login" href="logout.php"><i class="glyphicon glyphicon -log-out"></i> Log Out</a>';
                echo '<a class="btn btn-default action-button" href="account.php"><i class="glyphicon glyphicon-user"></i> My Account</a>';
              }
              else {
                echo '<a class="navbar-link login" href="login.php"><i class="glyphicon glyphicon glyphicon-user"></i> Log In</a>';
                echo '<a class="btn btn-default action-button" href="signup.php"><i class="glyphicon glyphicon-log-in"></i> Sign Up</a>';
              }
            ?>

          </p>
        </div>
      </div>
        </nav>
    </div>
<!-- Header Nav End --><br>

    <!-- Contact -->
        <section class="contack" id="contack">
      <div class="container">
        <div class="row">
          <div class="col-md-12 text-center">
            <h2>KONTAK</h2>
            <hr>
            <h4>Untuk info pembelian, keluhan, kritik, dan saran bisa langsung menghubungi custumer service kami.</h4>
          </div>
        </div>

        <br>

        <div class="row">

          <div class="col-md-4 text-center">
            <div class="contack-address">
              <i class="fas fa-map-marker-alt fa-2x"></i>
              <h3>Alamat</h3>
              <address>Jl.Panjang No.33 Jakarta Utara</address>
            </div>
          </div>

          <div class="col-md-4 text-center">
            <div class="contact-phone">
              <i class="fas fa-phone fa-2x"></i>
              <h3>Telepon</h3>
              <p>0819-08464036 atau 021-4527745</p>
            </div>  
          </div>

          <div class="col-md-4 text-center">
            <div class="contact-email">
              <i class="fas fa-envelope fa-2x"></i>
              <h3>Email</h3>
              <p>centralasiacasing@gmail.com</p>
            </div>
          </div>
        </div>

        <div class="container mb-4">
        <iframe src="https://www.google.com/maps/d/u/0/embed?mid=1fCPPKWQIUOZ-FPEUG6IxthTDg3q-M3dE" width="100%" height="380" frameborder="0" style="border:0" allowfullscreen></iframe>
      </div>

      </div>
    </section>
    <!-- Contact End -->

    <!-- Include footer.php -->
    <footer id="myFooter">
        <div class="container">
            <div class="row">
                <div class="col-sm-6 myCols">
                    <h5>Get started</h5>
                    <ul>
                        <li><a href="index.php">Home</a></li>
                        <li><a href="signup.php">Sign up</a></li>
                        <li><a href="login.php">Log In</a></li>
                    </ul>
                </div>
                <div class="col-sm-6 myCols">
                    <h5>About us</h5>
                        <ul>
                            <li><a href="about.php">Company Information</a></li>
                            <li><a href="contact.php">Contact us</a></li>
                            <li><a href="rev.php">Reviews</a></li>
                        </ul>
            </div>
        </div><hr>      
        <div class="footer-copyright">
            <center>
      <p><a href="admin_login.php">©2019 CentralAsiaCasing.com All rights reserved</a></p>
        </div></center>
    </footer>
<!-- Footer End -->

    <script src="include/bootstrap/js/jquery-3.2.1.min.js"></script>
    <script src="include/bootstrap/js/bootstrap.min.js"></script>
    <script src="include/bootstrap/js/validator.js"></script>
    <script src="include/bootstrap/js/contact.js"></script>
</body>
</html>
