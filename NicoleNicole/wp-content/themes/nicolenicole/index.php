<?php
/**
 * The main template file
 *
 * This is the most generic template file in a WordPress theme
 * and one of the two required files for a theme (the other being style.css).
 * It is used to display a page when nothing more specific matches a query.
 * E.g., it puts together the home page when no home.php file exists.
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/
 *
 * @package WordPress
 * @subpackage Twenty_Twenty_One
 * @since Twenty Twenty-One 1.0
 */

get_header(); ?>
<Hero Start --> 
        <div class="hero">
            <div class="container-fluid">
                <div class="row align-items-center">
                    <div class="col-sm-12 col-md-6">
                        <?php 
                    $myQuery1 = new WP_Query( array( 'post_type' => 'post', 'post__in' => array( 38 ) ) );
                    while($myQuery1->have_posts()):
                    $myQuery1->the_post();
                    ?>
                        <div class="hero-text">
                            <h1><?php the_title(); ?></h1>
                            <div>
                                <?php the_content(); ?>
                            </div>
                            <div class="hero-btn">
                                <a class="btn" href="http://localhost/NicoleNicole/kontakt/">Zakažite termin</a>
                            </div>
                        </div>
                    </div>
                    <?php endwhile; ?>
                    <div class="col-sm-12 col-md-6 d-none d-md-block">
                        <div class="hero-image">
                            <img src="<?php bloginfo('template_url'); ?>/img/hero.png" alt="Hero Image">
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Hero End -->

 <!-- About Start -->
        <div class="about wow fadeInUp" data-wow-delay="0.1s">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-lg-5 col-md-6">
                        <div class="about-img">
                            <img src="<?php bloginfo('template_url'); ?>/img/about1.png" alt="Image">
                        </div>
                    </div>
                    <?php 
                    $myQuery1 = new WP_Query( array( 'post_type' => 'post', 'post__in' => array( 43 ) ) );
                    while($myQuery1->have_posts()):
                    $myQuery1->the_post();
                    ?>
                    <div class="col-lg-7 col-md-6">
                        <div class="section-header text-left">
                            <p><?php the_field('podnaslov'); ?></p>
                            <h2><?php the_title(); ?></h2>
                        </div>
                        <div class="about-text">
                            <div>
                                <?php the_content(); ?>
                            </div>
                            <a class="btn" href="http://localhost/NicoleNicole/o-nama/">Više o nama</a>
                        </div>
                    </div>
                    <?php endwhile; ?>
                </div>
            </div>
        </div>
        <!-- About End -->


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
        
        <!-- Discount Start -->
        <div class="discount wow zoomIn" data-wow-delay="0.1s">
            <div class="container">
            	<?php 
                    $myQuery1 = new WP_Query( array( 'post_type' => 'post', 'post__in' => array( 74 )) );
                    while($myQuery1->have_posts()):
                    $myQuery1->the_post();
                    ?>
                <div class="section-header text-center">
                    <p>Ugrabi popust</p>
                    <h2><span><?php the_field('span'); ?></span><?php the_title(); ?></h2>
                </div>
                <div class="container discount-text">
                    <div>
                        <?php the_content(); ?>
                    </div>
                    <a class="btn" href="http://localhost/NicoleNicole/kontakt/">Zakažite termin</a>
                </div>
                <?php endwhile; ?>
            </div>
        </div>
        <!-- Discount End -->
        
        <!-- Paketi Start -->
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
                                    <a class="btn" href="http://localhost/NicoleNicole/kontakt/">Pošaljite upit</a>
                                </div>
                            </div>
                        </div>
                    </div><?php $counter++; endwhile; ?>
                </div>
            </div>
        </div>
        <!-- Paketi End -->
        
        
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

        <!-- savjeti Start -->
        <div class="blog">
            <div class="container">
                <div class="section-header text-center wow zoomIn" data-wow-delay="0.1s">
                    <p>Savjeti</p>
                    <h2>Savjeti za njegu kose i lica</h2>
                </div>
                <div class="owl-carousel blog-carousel wow fadeInUp" data-wow-delay="0.1s">
                    <?php 
                    $myQuery1 = new WP_Query( array( 'post_type' => 'savjeti-naslovna') );
                    while($myQuery1->have_posts()):
                    $myQuery1->the_post();
                    ?>
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
                    <?php endwhile; ?>
                </div>
            </div>
        </div>
        <!-- Blog End -->
<?php get_footer(); ?>
