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
                        <h2>Blog</h2>
                    </div>
                    <div class="col-12">
                        <a href="http://localhost/NicoleNicole/">Početna</a>
                        <a href="http://localhost/NicoleNicole/savjeti/">Savjeti</a>
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
                    while(have_posts()):
						the_post();
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

<?php get_footer(); ?>
