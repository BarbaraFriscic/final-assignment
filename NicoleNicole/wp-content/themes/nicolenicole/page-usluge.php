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
                        <h2>Usluge</h2>
                    </div>
                    <div class="col-12">
                        <a href="http://localhost/NicoleNicole/">Početna</a>
                        <a href="http://localhost/NicoleNicole/usluge/">Usluge</a>
                    </div>
                </div>
            </div>
        </div>
        <!-- Page Header End -->


         <!-- Service Start -->
        <div class="service">
            <div class="container">
                <div class="section-header text-center wow zoomIn" data-wow-delay="0.1s">
                    <p>Istaknute usluge</p>
                    <h2>Za zdravlje Vaše kose</h2>
                </div>
                <div class="row">
                    <?php
                    $counter = 1;
                    $tretmani = new WP_Query( array( 'post_type' => 'tretmani' ) );
                    while($tretmani->have_posts()):
                    $tretmani->the_post();
                    ?>
                    <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="<?php
                        for ($i = 0; $i <= 10; $i+=0.1) {
                        print "$i\r\n";
                        }
                        ?>s">
                        <div class="service-item <?php if ($counter%3==0) echo 'active'; ?>">
                            <div class="service-icon">
                                <img src="<?php the_field('slika'); ?>" class="flaticon-workout icon">
                            </div>
                            <h3><?php the_title(); ?></h3>
                            <div><?php the_content(); ?></div>                        
                        </div>
                    </div><?php $counter++; endwhile; ?>
                </div>
            </div>
        </div>
        <!-- Service End -->  
<?php get_footer();