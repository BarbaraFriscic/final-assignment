<?php
/**
 * The template for displaying the footer
 *
 * Contains the closing of the #content div and all content after.
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package WordPress
 * @subpackage Twenty_Twenty_One
 * @since Twenty Twenty-One 1.0
 */

?>
	 <!-- Footer Start -->
        <div class="footer wow fadeIn" data-wow-delay="0.3s">
            <div class="container-fluid">
                <div class="container">
                    <div class="footer-info">
                        <a href="<?php bloginfo('template_url'); ?>/index.html" class="footer-logo">Nicole <span>Nicole</span></a>
                        <h3>Cvjetna cesta 5, 10 000 Zagreb</h3>
                        <div class="footer-menu">
                            <p>+385 1 6195 029</p>
                            <p>+385 91 5004 505</p>
                            <p>salon@nicole-nicole.hr</p>
                        </div>
                        <div class="footer-social">
                            <a href=""><i class="fab fa-twitter"></i></a>
                            <a href=""><i class="fab fa-facebook-f"></i></a>
                            <a href=""><i class="fab fa-youtube"></i></a>
                            <a href=""><i class="fab fa-instagram"></i></a>
                            <a href=""><i class="fab fa-linkedin-in"></i></a>
                        </div>
                    </div>
                </div>
                <div class="container copyright">
                    <div class="row">
                        <div class="col-md-6">
                            <p>&copy; <a href="#">Nicole Nicole</a>, All Right Reserved.</p>
                        </div>
                        <div class="col-md-6">
                            <p>Designed By Barbara</a></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Footer End -->

        <a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>

        <!-- JavaScript Libraries -->
        <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
        <script src="<?php bloginfo('template_url'); ?>/lib/easing/easing.min.js"></script>
        <script src="<?php bloginfo('template_url'); ?>/lib/wow/wow.min.js"></script>
        <script src="<?php bloginfo('template_url'); ?>/lib/owlcarousel/owl.carousel.min.js"></script>
        <script src="<?php bloginfo('template_url'); ?>/lib/isotope/isotope.pkgd.min.js"></script>
        <script src="<?php bloginfo('template_url'); ?>/lib/lightbox/js/lightbox.min.js"></script>
        
        <!-- Contact Javascript File -->
        <script src="<?php bloginfo('template_url'); ?>/mail/jqBootstrapValidation.min.js"></script>
        <script src="<?php bloginfo('template_url'); ?>/mail/contact.js"></script>

        <!-- Template Javascript -->
        <script src="<?php bloginfo('template_url'); ?>/js/main.js"></script>
<?php wp_footer(); ?>

</body>
</html>
