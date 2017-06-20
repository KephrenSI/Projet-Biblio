<?php
require 'vendor/autoload.php';
include( 'routes.php' );
session_start();
if (!file_exists('db.ini') ) {
    die('Le fichier db.ini n´existe pas !');
}

$default_route = $routes['default'];
$route_parts = explode('/', $default_route);

$method = $_SERVER[ 'REQUEST_METHOD' ];
$a = isset( $_REQUEST[ 'a' ] ) ? $_REQUEST[ 'a' ] : 'home';
$r = isset( $_REQUEST[ 'r' ] ) ? $_REQUEST[ 'r' ] : 'pages';

if ( !in_array( $method.'/'.$a.'/'.$r, $routes ) ){
	die(header('Location:views/404.php'));
}

$controller_name = '\Controller\\'.ucfirst( $r ).'Controller';

$container = new \Illuminate\Container\container();
$controller = $container -> make( $controller_name );

$datas = call_user_func( [ $controller, $a ] );

include( 'views/layout.php' );
