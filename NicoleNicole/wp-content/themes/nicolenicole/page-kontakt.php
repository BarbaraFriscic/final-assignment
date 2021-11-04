<?php
/**
 * The template for displaying all single posts
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/#single-post
 *
 * @package WordPress
 * @subpackage Twenty_Twenty_One
 * @since Twenty Twenty-One 1.0
 */

get_header(); ?>

  <!-- Page Header Start -->
        <div class="page-header">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <h2>Kontakt</h2>
                    </div>
                    <div class="col-12">
                        <a href="http://localhost/NicoleNicole/">Početna</a>
                        <a href="http://localhost/NicoleNicole/kontakt/">Kontakt</a>
                    </div>
                </div>
            </div>
        </div>
        <!-- Page Header End -->

 <!-- Contact Start -->
        <div class="contact">
            <div class="container">
                <div class="section-header text-center wow zoomIn" data-wow-delay="0.1s">
                    <p>Obratite nam se</p>
                    <h2>Za sve Vaše upite</h2>
                </div>
                <div class="row">
                    <div class="col-12">
                        <div class="row">
                            <div class="col-md-4 contact-item wow zoomIn" data-wow-delay="0.2s">
                                <i class="fa fa-map-marker-alt"></i>
                                <div class="contact-text">
                                    <h2>Adresa</h2>
                                    <p>Cvjetna cesta 5, 10 000 Zagreb</p>
                                </div>
                            </div>
                            <div class="col-md-4 contact-item wow zoomIn" data-wow-delay="0.4s">
                                <i class="fa fa-phone-alt"></i>
                                <div class="contact-text">
                                    <h2>Telefon</h2>
                                    <p>+385 1 6195 029</p>
                                    <p>+385 91 5004 505</p>
                                </div>
                            </div>
                            <div class="col-md-4 contact-item wow zoomIn" data-wow-delay="0.6s">
                                <i class="far fa-envelope"></i>
                                <div class="contact-text">
                                    <h2>Email</h2>
                                    <p>salon@nicole-nicole.hr</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 wow fadeInUp" data-wow-delay="0.1s">
                        <div class="contact-form">
                            <div id="success"></div>
                            <form name="sentMessage" id="contactForm" novalidate="novalidate">
                                <div class="control-group">
                                    <input type="text" class="form-control" id="name" placeholder="Vaše ime" required="required" data-validation-required-message="Molimo unesite vaše ime" />
                                    <p class="help-block text-danger"></p>
                                </div>
                                <div class="control-group">
                                    <input type="email" class="form-control" id="email" placeholder="Vaš Email" required="required" data-validation-required-message="Molimo unesite vaš Email" />
                                    <p class="help-block text-danger"></p>
                                </div>
                                <div class="control-group">
                                    <input type="text" class="form-control" id="subject" placeholder="Naslov" required="required" data-validation-required-message="Molimo unesite naslov vašeg upita" />
                                    <p class="help-block text-danger"></p>
                                </div>
                                <div class="control-group">
                                    <textarea class="form-control" id="message" placeholder="Vaša upit" required="required" data-validation-required-message="Molimo unesite vaš upit"></textarea>
                                    <p class="help-block text-danger"></p>
                                </div>
                                <div>
                                    <button class="btn" type="submit" id="sendMessageButton">Pošaljite upit</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Contact End -->
<?php get_footer();