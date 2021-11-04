<?php
/**
 * The header.
 *
 * This is the template that displays all of the <head> section and everything up until main.
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package WordPress
 * @subpackage Twenty_Twenty_One
 * @since Twenty Twenty-One 1.0
 */

?>
<!doctype html>
<html <?php language_attributes(); ?> <?php twentytwentyone_the_html_classes(); ?>>

    <head>
        
        <meta content="width=device-width, initial-scale=1.0" name="viewport">

        <!-- Favicon -->
        <link href="<?php bloginfo('template_url'); ?>/img/favicon.ico" rel="icon">

        <!-- Google Font -->
        <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@300;400;600;700;800&display=swap" rel="stylesheet">

        <!-- CSS Libraries -->
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
        <link href="<?php bloginfo('template_url'); ?>/lib/animate/animate.min.css" rel="stylesheet">
        <link href="<?php bloginfo('template_url'); ?>/lib/flaticon/font/flaticon.css" rel="stylesheet"> 
        <link href="<?php bloginfo('template_url'); ?>/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
        <link href="<?php bloginfo('template_url'); ?>/lib/lightbox/css/lightbox.min.css" rel="stylesheet">        
      <?php wp_head(); ?>
    </head>

    <body> 
        <!-- Top Bar Start -->
        <div class="top-bar d-none d-md-block">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-8">
                        <div class="top-bar-left">
                            
                            <div class="text">
                                <i class="fa fa-phone-alt"></i>
                                <h2>+385 1 6195 029</h2>
                            </div>
                            <div class="text">
                                <i class="fa fa-phone-alt"></i>
                                <p>+385 91 5004 505</p>
                            </div>
                             <div class="text">
                                <p>salon@nicole-nicole.hr</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="top-bar-right">
                            <div class="social">
                                <a href=""><i class="fab fa-twitter"></i></a>
                                <a href=""><i class="fab fa-facebook-f"></i></a>
                                <a href=""><i class="fab fa-linkedin-in"></i></a>
                                <a href=""><i class="fab fa-instagram"></i></a>
                                <div class="text">
                                    <p>Family-Friendly</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Top Bar End -->

        <!-- Nav Bar Start -->
        <div class="navbar navbar-expand-lg bg-dark navbar-dark">
            <div class="container-fluid">
                <a href="http://localhost/NicoleNicole/" class="navbar-brand">Nicole <span>Nicole</span></a><br>
                <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
                    <span class="navbar-toggler-icon"></span>
                </button>


               <div class="collapse navbar-collapse justify-content-between" id="navbarCollapse">


                      <div class="navbar-nav ml-auto">
                           <?php 
                             wp_nav_menu( array(
                                'menu' => 'glavni_izbornik',
                                'menu_class' => 'navbar-nav ml-auto'
                                
                                ) );

                            ?>

                        <!--<a href="<?php bloginfo('template_url'); ?>/index.html" class="nav-item nav-link active">Početna</a>
                        <a href="<?php bloginfo('template_url'); ?>/about.html" class="nav-item nav-link">O nama</a>
                        <a href="<?php bloginfo('template_url'); ?>/service.html" class="nav-item nav-link">Usluge</a>
                        <a href="<?php bloginfo('template_url'); ?>/price.html" class="nav-item nav-link">Cjenik</a>
                        <a href="<?php bloginfo('template_url'); ?>/class.html" class="nav-item nav-link">Galerija</a>
                        <div class="nav-item dropdown">
                            <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">Savjeti</a>
                            <div class="dropdown-menu">
                                <a href="<?php bloginfo('template_url'); ?>/blog.html" class="dropdown-item">Blog Grid</a>
                                <a href="<?php bloginfo('template_url'); ?>/single.html" class="dropdown-item">Blog Detail</a>
                            </div>
                        </div>
                        <a href="<?php bloginfo('template_url'); ?>/portfolio.html" class="nav-item nav-link">Kontakt</a>-->
                    </div>  
                </div>
            </div>
        </div>
        <!-- Nav Bar End 


    