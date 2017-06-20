/* Képhren/Projet
*
* /gulpfile.js - Gupl tasks
*
* coded by Képhren SIMONIS
* started at 09/02/2017
*/

var gulp = require ( "gulp" ),
	image = require ( "gulp-image" ),
	// htmlmin = require('gulp-htmlmin'),
	cleanCSS = require('gulp-clean-css'),
	sass = require ( "gulp-sass" ),
	autoprefixer = require ( "gulp-autoprefixer" ),
	csso = require ( "gulp-csso" ),
	babel = require ( "gulp-babel" ),
	sourcemaps = require( "gulp-sourcemaps" ),
	browserSync = require("browser-sync").create(),
	scss_files = [
				'src/sass/base/*.scss',
				'src/sass/components/*.scss',
				'src/sass/generic/*.scss',
				'src/sass/objects/*.scss',
				'src/sass/settings/*.scss',
				'src/sass/tools/*.scss',
				'src/sass/*.scss'
	];

// --- Task for browser sync

gulp.task('serve', ['css'], function() {

    browserSync.init({
        server: "./"
    });

});

// --- Task for images
gulp.task( "img", function() {
    gulp.src( "src/img/**" )
        .pipe( image( { 
        			"mozjpeg": false,
					"jpegoptim": false
				} ) )
        .pipe( gulp.dest( "assets/img" ) );
} );

// --- Task for pug

// --- Task for html
// gulp.task( 'minify', function() {
// 	gulp.src( 'src/html/*.html' )
//     	.pipe( htmlmin( {
//     				collapseWhitespace: true
//     			} ) )
//     	.pipe( gulp.dest( "assets/html" ) )
// });

// gulp.task( 'minifyIndex', function() {
// 	gulp.src( 'src/html/index/index.html' )
//     	.pipe( htmlmin( {
//     				collapseWhitespace: true
//     			} ) )
//     	.pipe( gulp.dest( "./" ) );
// });

// --- Task for styles
gulp.task( "css", function() {
	gulp.src( 'src/sass/*.scss' )
		.pipe( sass().on( "error", sass.logError ) )
		.pipe( autoprefixer() )
		.pipe( csso() )
		.pipe( cleanCSS() )
		.pipe( gulp.dest( "assets/css" ) )
		.pipe( browserSync.stream() );
} );

// --- Task for js
// gulp.task ( "js", function() {
// 	gulp.src( "src/js/**/*.js" )
// 		.pipe( sourcemaps.init() )
// 		.pipe( babel() )
// 		.on( "error", function(){
// 			console.error( oError );
// 			this.emit( "end" );
// 		} )
// 		.pipe( sourcemaps.write() )
// 		.pipe( gulp.dest( "assets/js" ) );
// } );

// --- Watch tasks
gulp.task( "watch", function() {
	gulp.watch( "src/img/**", [ "img" ] );
	gulp.watch( scss_files, [ "css" ] );
	// gulp.watch( "src/js/**/*.js", [ "js" ] );
	// gulp.watch( "src/html/*.html", [ "minify" ] );
	// gulp.watch( "src/html/index/index.html", [ "minifyIndex" ] );
	// gulp.watch( "src/html/**/*.html" ).on('change', browserSync.reload );
} );

// --- Aliases

gulp.task( "default", [ "serve", "img", "css" ] );
gulp.task( "work", [ "default", "watch" ] );