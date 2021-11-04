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
                        <h2>Savjeti</h2>
                    </div>
                    <div class="col-12">
                        <a href="http://localhost/NicoleNicole/">Početna</a>
                        <a href="http://localhost/NicoleNicole/savjeti/">Savjeti</a>
                    </div>
                </div>
            </div>
        </div>
        <!-- Page Header End -->
<!-- Blog Start -->
        <div class="blog">
            <div class="container">
                <div class="section-header text-center wow zoomIn" data-wow-delay="0.1s">
                    <p>S našeg bloga</p>
                    <h2>Savjeti za zdravlje i ljepotu</h2>
                </div>
                <div class="row blog-page">
                    <?php 
                    $myQuery1 = new WP_Query( array( 'post_type' => 'savjeti-naslovna') );
                    while($myQuery1->have_posts()):
                    $myQuery1->the_post();
                    ?>
                    <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.0s"> <!-- ovdje ide delay za 0.2s -->
                        
                        <div class="blog-item">
                            <div class="blog-img">
                                <img src="<?php the_field('slika'); ?>" alt="Blog">
                            </div>
                            <div class="blog-text">
                                <h2><?php the_title(); ?></h2>
                                <div class="blog-meta">
                                    
                                    <p><i class="far fa-calendar-alt"></i><?php
                                    $time = strtotime(get_the_date('Y-m-d') );
                                     ?>
                                    <?php echo date('d', $time ); // the_date( 'd'); ?>
                                    <?php echo date( 'M', $time); ?>
                                    <?php echo date( 'Y', $time); ?></p>
                                </div>
                                <p>
                                   <?php the_excerpt(); ?>
                                </p>
                                <a class="btn" href="<?php the_permalink(); ?>">Pročitajte više <i class="fa fa-angle-right"></i></a>
                            </div>
                        </div>
                    </div><?php endwhile; ?>
                </div>
                <div class="row">
                    <div class="col-12">
                        <ul class="pagination justify-content-center">
                            <li class="page-item disabled"><a class="page-link" href="#">Prethodno</a></li>
                            <li class="page-item"><a class="page-link" href="#">1</a></li>
                            <li class="page-item active"><a class="page-link" href="#">2</a></li>
                            <li class="page-item"><a class="page-link" href="#">3</a></li>
                            <li class="page-item"><a class="page-link" href="#">Sljedeće</a></li>
                        </ul> 
                    </div>
                </div> 
            </div>
        </div>
        <!-- Blog End -->
<?php get_footer();