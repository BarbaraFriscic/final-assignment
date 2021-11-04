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
                        <h2>Cjenik</h2>
                    </div>
                    <div class="col-12">
                        <a href="http://localhost/NicoleNicole/">Početna</a>
                        <a href="http://localhost/NicoleNicole/cjenik/">Cjenik</a>
                    </div>
                </div>
            </div>
        </div>
        <!-- Page Header End -->

<!-- Paketi start -->
        <div class="price">
            <div class="container">
                <div class="section-header text-center wow zoomIn" data-wow-delay="0.1s">
                    <p>Cjenik izdvojenih tretmana</p>
                    <h2>Paketi tretmana</h2>
                </div>
                <div class="row">
                    <?php
                    $counter = 1;
                    $tretmani = new WP_Query( array( 'post_type' => 'cjenik_naslovna' ) );
                    while($tretmani->have_posts()):
                    $tretmani->the_post();
                    ?>
                    <div class="col-md-4 wow fadeInUp" data-wow-delay="0.0s"> <!-- delay za 0.1 -->
                        
                        <div class="price-item <?php if ($counter%2==0) echo 'featured-item'; ?>">
                            <div class="price-header">
                                <div class="price-title">
                                    <h2><?php the_title(); ?></h2>
                                </div>
                                <div class="price-prices">
                                    <h2><small><?php the_field('ispred_cijene'); ?></small><?php the_field('cijena'); ?><span> <?php the_field('valuta'); ?></span></h2>
                                </div> 
                            </div>
                            <div class="price-body">
                                <div class="price-description">
                                    <ul>
                                        <li><?php the_field('tretman_1'); ?></li>
                                        <li><?php the_field('tretman_2'); ?></li>
                                        <li><?php the_field('tretman_3'); ?></li>
                                        <li><?php the_field('tretman_4'); ?></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="price-footer">
                                <div class="price-action">
                                    <a class="btn" href="">Izaberi paket</a>
                                </div>
                            </div>
                        </div>
                    </div><?php $counter++; endwhile; ?>
                </div>
            </div>
        </div>
        <!-- Paketi End -->

        <!-- Cjenici start -->
        <div class="price">
            <div class="container">
                <div class="section-header text-center wow zoomIn" data-wow-delay="0.1s">
                    <p>Naša ponuda</p>
                    <h2>Cjenik</h2>
                </div>
                <div class="row">
                    <?php
                    $counter = 1;
                    $tretmani = new WP_Query( array( 'post_type' => 'sve_cijene' ) );
                    while($tretmani->have_posts()):
                    $tretmani->the_post();
                    ?>
                    <div class="col-md-4 wow fadeInUp" data-wow-delay="0.0s"> <!-- delay za 0.1 -->
                        
                        <div class="price-item <?php if ($counter%2==0) echo 'featured-item'; ?>">
                            <div class="price-header">
                                <div class="price-title">
                                    <h2><?php the_title(); ?></h2>
                                </div>
                            </div>
                            <div class="price-body">
                                <div class="price-description">
                                    <ul>
                                        <li><?php the_field('usluga_1'); ?><span><?php the_field('cijena_1'); ?></span></li>
                                        <li><?php the_field('usluga_2'); ?><span><?php the_field('cijena_2'); ?></span></li>
                                        <li><?php the_field('usluga_3'); ?><span><?php the_field('cijena_3'); ?></span></li>
                                        <li><?php the_field('usluga_4'); ?><span><?php the_field('cijena_4'); ?></span></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="price-footer">
                                <div class="price-action">
                                    
                                </div>
                            </div>
                        </div>
                    </div><?php $counter++; endwhile; ?>
                </div>
            </div>
        </div>
        <!-- Cjenici End -->
         
<?php get_footer();