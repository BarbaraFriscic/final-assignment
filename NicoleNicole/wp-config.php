<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'nicolenicolewp' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', '' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'ftuE!|${p]Wzn-b+;BP-JP{P#bm3vmoZa9)c&}>XcT&GUl2.8n{Q1Rdk+,{$sWH4' );
define( 'SECURE_AUTH_KEY',  '[|t,@iO^DVL&+dM?#g D$v5zlM=hIeydH51@ojN8 S]yqz#5CNd5!O=h ncJD$25' );
define( 'LOGGED_IN_KEY',    'WI[dB}e+T:1r@UIh2AEY`c[~30a3^!-fm3K!e-qak4hz<&>ORMH[U+~)u>S#(FK>' );
define( 'NONCE_KEY',        '1F6:[`6MZBKO;v5A/C< %qNT6wD?%wR)/C?Xp%ouDe&/&JJwaL&*`K<B!x!2)&& ' );
define( 'AUTH_SALT',        'e.ppg~QX;$7BP09k?OuV`S2 x(T2u63.D5|PdC8nf{Z[%Q0d&oRgtZJX;nSOIt@8' );
define( 'SECURE_AUTH_SALT', '-2+3G^E$}.UfFGMKT?)h/g*K`J@vTs&*-2!I|VkxnDdEzi:0e[BuB6!4`OZ;@{[{' );
define( 'LOGGED_IN_SALT',   '-Hk%3d^EKlr4Y6g5zmzWm~s`yCQ;>D}dXEA,Ti&zQ;]+;I6SprBF0uK= w$aSRB ' );
define( 'NONCE_SALT',       '@]*W}O>k+zQ.pv{@r<CO?WbaN+wwyOf(>:h3OLuabG5,2j3/etRFzf93M*g22Sfv' );

/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
