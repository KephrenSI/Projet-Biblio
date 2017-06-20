<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <link rel="stylesheet" href="./assets/css/styles.css" media="screen" title="no title" charset="utf-8">
        <title><?php echo $datas[ 'page_title' ]; ?></title>
    </head>
    <body>

    	<?php include( 'partials/_header.php' ); ?>

        <?php include( $datas['view'] ); ?>

        <?php include( 'partials/_footer.php' ); ?>

    </body>
</html>
