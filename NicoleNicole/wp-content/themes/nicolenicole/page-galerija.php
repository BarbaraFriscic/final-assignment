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
                        <h2>Galerija</h2>
                    </div>
                    <div class="col-12">
                        <a href="http://localhost/NicoleNicole/">Početna</a>
                        <a href="http://localhost/NicoleNicole/galerija/">Galerija</a>
                    </div>
                </div>
            </div>
        </div>
        <!-- Page Header End -->

<!-- Single Post Start-->
       <div class="container-gallery"> 
                    <?php 
                    $myQuery1 = new WP_Query( array( 'post_type' => 'page', 'post_in' => 25) );
                    while($myQuery1->have_posts()):
                    $myQuery1->the_post();
                    ?>
                    
                                <?php the_content(); ?>
                            
                                
                    <?php endwhile; ?>
                
        </div>
        <!-- Single Post End-->


<?php get_footer();