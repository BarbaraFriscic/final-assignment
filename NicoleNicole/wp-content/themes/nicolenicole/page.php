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
                    <?php 
                    $myQuery1 = new WP_Query( array( 'post_type' => 'page', 'post__in' => array( 19 ) ) );
                    while($myQuery1->have_posts()):
                    $myQuery1->the_post();
                    ?>
                    <div class="col-12">
                        <h2><?php the_title(); ?></h2>
                    </div>
                    <div class="col-12">
                        <a href="http://localhost/NicoleNicole/">Home</a>
                        <a href="http://localhost/NicoleNicole/o-nama/">About Us</a>
                    </div><?php endwhile; ?>
                </div>
            </div>
        </div>
        <!-- Page Header End -->


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
                            <a class="btn" href="">Više o nama</a>
                        </div>
                    </div>
                    <?php endwhile; ?>
                </div>
            </div>
        </div>
        <!-- About End -->

<!-- Single Post Start-->
       <div class="single">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8">
                        <div class="single-content wow fadeInUp">
                            <img src="img/single.jpg" />
                            <h2>Lorem ipsum dolor sit amet</h2>
                            <p>
                                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer molestie, lorem eu eleifend bibendum, augue purus mollis sapien, non rhoncus eros leo in nunc. Donec a nulla vel turpis consectetur tempor ac vel justo. In hac habitasse platea dictumst. Cras nec sollicitudin eros. Nunc eu enim non turpis sagittis rhoncus consectetur id augue. Mauris dignissim neque felis. Phasellus mollis mi a pharetra cursus. Maecenas vulputate augue placerat lacus mattis, nec ornare risus sollicitudin.
                            </p>
                            <p>
                                Mauris eu pulvinar tellus, eu luctus nisl. Pellentesque suscipit mi eu varius pulvinar. Aenean vulputate, massa eget elementum finibus, ipsum arcu commodo est, ut mattis eros orci ac risus. Suspendisse ornare, massa in feugiat facilisis, eros nisl auctor lacus, laoreet tempus elit dolor eu lorem. Nunc a arcu suscipit, suscipit quam quis, semper augue.
                            </p>
                            <p>
                                Quisque arcu nulla, convallis nec orci vel, suscipit elementum odio. Curabitur volutpat velit non diam tincidunt sodales. Nullam sapien libero, bibendum nec viverra in, iaculis ut eros.
                            </p>
                            <h3>Lorem ipsum dolor sit amet</h3>
                            <p>
                                Vestibulum sit amet ullamcorper sem. Integer hendrerit elit eget purus sodales maximus. Quisque ac nulla arcu. Morbi venenatis arcu ac arcu cursus pharetra. Morbi sit amet viverra augue, ac ultricies libero. Praesent elementum lectus mi, eu elementum urna venenatis sed. Donec auctor purus ut mattis feugiat. Integer mi erat, consectetur sed tincidunt vitae, sagittis elementum libero. Vivamus a mauris consequat, hendrerit lectus in, fermentum libero. Integer mattis bibendum neque et porttitor.
                            </p>
                            <p>
                                Mauris quis arcu finibus, posuere dolor eu, viverra felis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In porta, ex vitae accumsan facilisis, nisi tellus dictum metus, quis fringilla dui tellus in tellus. Praesent pharetra orci at vehicula posuere. Sed molestie fringilla lorem, vel imperdiet tortor blandit at. Quisque non ultrices lorem, eget rhoncus orci. Fusce porttitor placerat diam et mattis. Nam laoreet, ex eu posuere sollicitudin, sem tortor pellentesque ipsum, quis mattis purus lectus ut lacus. Integer eu risus ac est interdum scelerisque.
                            </p>
                            <h4>Lorem ipsum dolor sit amet</h4>
                            <p>
                                Praesent ultricies, mauris eget vestibulum viverra, neque lorem malesuada mauris, eget rhoncus lectus enim a lorem. Vivamus at vehicula risus, eget facilisis massa. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras et posuere sapien. Fusce bibendum lorem sem, quis tincidunt felis mattis nec.
                            </p>
                            <p>
                                Proin vel nulla purus. Nunc nec eros in nisi efficitur rutrum quis sed eros. Mauris felis dolor, rhoncus eget gravida vitae, pretium vel arcu. Cras blandit tellus eget tellus dictum venenatis. Sed ultricies bibendum dictum. Etiam facilisis erat id turpis tincidunt malesuada. Duis bibendum sapien eu condimentum sagittis. Proin nunc lorem, ullamcorper vel tortor sodales, imperdiet lacinia dui. Sed congue, felis id rhoncus varius, urna lacus imperdiet nunc, ut porttitor mauris mi quis mi. Integer rutrum est finibus metus eleifend scelerisque. Morbi auctor dignissim purus in interdum. Vestibulum eu dictum enim. Suspendisse et sem vitae velit feugiat facilisis.
                            </p>
                            <p>
                                Nam sodales scelerisque nunc sed convallis. Vestibulum facilisis porta erat, sit amet pharetra tortor blandit id. Nunc velit tellus, consectetur sed convallis in, tincidunt finibus nulla. Integer vel ex in mauris tincidunt tincidunt nec sed elit. Etiam pretium lectus lectus, sed aliquet erat tristique euismod. Praesent faucibus nisl augue, ac tempus libero pellentesque malesuada. Vivamus iaculis imperdiet laoreet. Aliquam vel felis felis. Proin sed sapien erat. Etiam a quam et metus tempor rutrum. Curabitur in faucibus justo. Etiam imperdiet iaculis urna.
                            </p>
                        </div>
                        <div class="single-bio wow fadeInUp">
                            <div class="single-bio-img">
                                <img src="img/user.jpg" />
                            </div>
                            <div class="single-bio-text">
                                <h3>Author Name</h3>
                                <p>
                                    Lorem ipsum dolor sit amet elit. Integer lorem augue purus mollis sapien, non eros leo in nunc. Donec a nulla vel turpis tempor ac vel justo. In hac platea dictumst.
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Single Post End-->
<?php get_footer();