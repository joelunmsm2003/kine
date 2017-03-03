// Los packages que vamos a usar
var gulp  = require('gulp'),
	gutil = require('gulp-util'),
	sass = require('gulp-sass'),
	cssnano = require('gulp-cssnano'),
	autoprefixer = require('gulp-autoprefixer'),
	sourcemaps = require('gulp-sourcemaps'),
	jshint = require('gulp-jshint'),
	stylish = require('jshint-stylish'),
	uglify = require('gulp-uglify'),
	concat = require('gulp-concat'),
	rename = require('gulp-rename'),
	plumber = require('gulp-plumber'),
	bower = require('gulp-bower'),
	browserSync = require('browser-sync').create();
	modRewrite = require('connect-modrewrite');
	gettext = require('gulp-angular-gettext');


// Compilar SASS, poner auto-prefijos, minimizar
gulp.task('styles', function() {
	return gulp.src('./bootstrap.scss') // ¿Dónde están los archivos fuentes?
		.pipe(plumber(function(error) { // Así podemos ver errores en el terminal
				gutil.log(gutil.colors.red(error.message));
				this.emit('end');
		}))
		.pipe(sourcemaps.init()) // Start Sourcemaps
		.pipe(sass())
		.pipe(autoprefixer({
				browsers: ['last 2 versions'],
				cascade: false
		}))
		.pipe(gulp.dest('./build/css/'))
		//.pipe(rename({suffix: '.min'}))
		//.pipe(cssnano())
		//.pipe(sourcemaps.write('.')) // Creates sourcemaps for minified styles
		//.pipe(gulp.dest('./build/css/'))
});
		
// JSHint, concat, and minify JavaScript
gulp.task('app-js', function() {
	return gulp.src([	
		
	// Grab your custom scripts
	'app/a1/*.js',
	'app/app.js',

	'app/**/*.js',
				
	])
		.pipe(plumber())
		.pipe(sourcemaps.init())
		.pipe(jshint())
		.pipe(jshint.reporter('jshint-stylish'))
		.pipe(concat('app.js'))
		.pipe(gulp.dest('./build/js'))
		//.pipe(rename({suffix: '.min'}))
		//.pipe(uglify({mangle: false}))
		//.pipe(sourcemaps.write('.')) // Creates sourcemap for minified JS
		//.pipe(gulp.dest('./dist/js'))
});    

// JSHint, concat, and minify JavaScript
gulp.task('vendor-js', function() {
	return gulp.src([	
		
	// Grab your custom scripts

	'./bower_components/angular/angular.js',
    './bower_components/angular-ui-router/release/angular-ui-router.js',
    './bower_components/ngstorage/ngStorage.js',
    './bower_components/jquery/dist/jquery.js',
    './bower_components/form.js',
    './bower_components/bootstrap/dist/js/bootstrap.js',
    './bower_components/angular-translate/angular-translate.js',
    './bower_components/angular-animate/angular-animate.js',
    './bower_components/angular-touch/angular-touch.js',
    './bower_components/angular-bootstrap/ui-bootstrap-tpls.js',
    './bower_components/angular-route/angular-route.js',
    './bower_components/sweetalert/dist/sweetalert.min.js',
    './bower_components/angular-scroll/angular-scroll.js',
    './bower_components/ng-flow/dist/ng-flow-standalone.js',
    './bower_components/flow.js/dist/flow.js',
    './bower_components/ng-flow/dist/ng-flow.js',
    './bower_components/angular-xeditable/dist/js/xeditable.js',
    './bower_components/responsive-bootstrap-toolkit/src/bootstrap-toolkit.js',
    './bower_components/bootstrap-touchspin/src/jquery.bootstrap-touchspin.js',
    './bower_components/angular-resource/angular-resource.js',
    './bower_components/ngmap/build/scripts/ng-map.min.js',
    './bower_components/angular-gettext/dist/angular-gettext.min.js',
    './bower_components/angular-dynamic-locale/dist/tmhDynamicLocale.js',
    './bower_components/angular-un-svg/dist/un-svg.js',
    './bower_components/angularjs-slider/dist/rzslider.js',
    './bower_components/angular-input-stars-directive/angular-input-stars.js',
    './bower_components/angular-sanitize/angular-sanitize.js',
				
	])
		.pipe(plumber())
		.pipe(sourcemaps.init())
		.pipe(jshint())
		.pipe(jshint.reporter('jshint-stylish'))
		.pipe(concat('vendor.js'))
		.pipe(gulp.dest('./build/js'))
		.pipe(rename({suffix: '.min'}))
		.pipe(uglify())
		.pipe(sourcemaps.write('.')) // Creates sourcemap for minified JS
		.pipe(gulp.dest('./build/js'))
}); 

// Update Foundation with Bower and save to /vendor
gulp.task('bower', function() {
	return bower({ cmd: 'update'})
		.pipe(gulp.dest('./bower_components/'))
});  

// Browser-Sync watch files and inject changes
gulp.task('browsersync', function() {
		// Watch files
		var files = [
			'./app/css/*.css', 
			'./app/js/*.js',
			'**/*.php',
			'app/images/**/*.{png,jpg,gif,svg,webp}',
		];

		browserSync.init(files, {
			// Replace with URL of your local site
			proxy: "http://localhost:2000/",
		});
		
		gulp.watch('./app/scss/**/*.scss', ['styles']);
		gulp.watch('./app/js/scripts/*.js', ['site-js']).on('change', browserSync.reload);

});

// Watch files for changes (without Browser-Sync)
gulp.task('watch', function() {

	
	gulp.watch('./app/app.js', ['app-js']);

	gulp.watch('./app/**/*.js', ['app-js']);

	gulp.watch('./app/**/*.html', ['html']);

	gulp.watch('./app/**/*.scss', ['styles']);

	gulp.watch('./variables.scss', ['styles']);

	
}); 

// Run styles, site-js and bootstrap-js
gulp.task('default', function() {
	gulp.start('styles', 'app-js', 'vendor-js');
});


//Languages 

gulp.task('pot', function () {
    return gulp.src(['./src/component/**/*.html','src/component/**/*.js'])
        .pipe(gettext.extract('template.pot', {
            // options to pass to angular-gettext-tools...
        }))

        .pipe(gulp.dest('./po/'));
});

gulp.task('translations', function () {
    return gulp.src('./po/*.po')
        .pipe(gettext.compile({
            // options to pass to angular-gettext-tools...
            format: 'javascript'
        }))
        .pipe(gulp.dest('./dist/translations/'));
});

gulp.task('html',function(){
    gulp.src('./app/**/*.html')
    .pipe(gulp.dest('./build/html'));
});
