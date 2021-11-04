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
                        <h2>O Nama</h2>
                    </div>
                    <div class="col-12">
                        <a href="http://localhost/NicoleNicole/">Početna</a>
                        <a href="http://localhost/NicoleNicole/o-nama/">O Nama</a>
                    </div>
                </div>
            </div>
        </div>
        <!-- Page Header End -->

<!-- Single Post Start-->
       <div class="single">
            <div class="container">
                <div class="row">
                    <?php 
                    $myQuery1 = new WP_Query( array( 'cat' => 4) );
                    while($myQuery1->have_posts()):
                    $myQuery1->the_post();
                    ?>
                    <div class="col-lg-8">
                        <div class="single-content wow fadeInUp">
                            <img src="<?php the_field('slika'); ?>" />
                            <h2><?php the_title(); ?></h2>
                            <div>
                                <?php the_content(); ?>
                            </div>
                        </div>
                        <div class="single-bio wow fadeInUp">
                            <div class="">
                                <img src="<?php the_field('slika_autora'); ?>" />
                            </div>
                            <div class="single-bio-text">
                                <h3><?php the_field('ime_autora'); ?></h3>
                                <div>
                                    <?php the_field('o_autoru'); ?>
                                </div>
                            </div>
                        </div>
                    </div><?php endwhile; ?>
                </div>
            </div>
        </div>
        <!-- Single Post End-->

        <!-- Testimonial Start -->
        <div class="testimonial wow fadeInUp" data-wow-delay="0.1s"> <!-- delay za 0.1 -->
            <div class="container">
            	
                <div class="section-header text-center">
                    <p>Osvrti</p>
                    <h2>Što kažu naši klijenti</h2>
                </div>
                <div class="owl-carousel testimonials-carousel">
                    <?php 
                    $myQuery1 = new WP_Query( array( 'post_type' => 'osvrti') );
                    while($myQuery1->have_posts()):
                    $myQuery1->the_post();
                    ?>
                    <div class="testimonial-item">

                        <div class="testimonial-img">

                            <img src="<?php the_field('slika'); ?>" alt="Image">
                        </div>
                        <div class="testimonial-text">
                            <p>
                                <?php the_content(); ?>
                            </p>
                            <h3><?php the_title(); ?></h3>
                        </div>
                    </div>
                    <?php endwhile; ?>
                </div>
            </div>
        </div>
        <!-- Testimonial End -->
<?php get_footer();
