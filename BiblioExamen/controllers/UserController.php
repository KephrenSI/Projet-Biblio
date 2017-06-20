<?php

namespace Controller;

use Model\User;

class UserController extends Controller
{
    private $user_model = null;

    public function __construct() {

        $this -> user_model = new User;

    }

    public function getLogin() {

        return ['view' => 'login.php', 'page_title' => 'Login | Bibliothèque'];

    }

    public function getRegister() {

        return [ 'view' => 'register.php', 'page_title' => 'Register | Bibliothèque' ];
    }

    public function postRegister() {
        $errors=[];

        if ( empty( $_POST[ 'email' ] ) ) {
            $errors[ 'email' ] = 'Veuillez entrer un email';
        } elseif ( strpos( $_POST[ 'email' ], '@', 1 ) === false ) {
            $errors[ 'email' ] = 'Veuillez entrer un email valide';
        }

        if ( empty( $_POST[ 'password' ] ) ) {
            $errors[ 'password' ] = 'Veuillez entrer un password';
        } elseif ( strlen( $_POST[ 'password' ] ) < 7 ) {
            $errors[ 'password' ] = 'Veuillez entrer au moins 7 caractères';
        }

        if ( empty( $_POST[ 'username' ] ) ) {
            $errors[ 'username' ] = 'Veuillez entrer un nom d\'utilisateur';
        }

        if ( count( $errors ) ) {
            $_SESSION[ 'errors' ] = $errors;
            $_SESSION[ 'old_datas' ] = $_POST;
            header( 'Location: index.php?a=getRegister&r=user' );
            return;
        }
        
        if ($this -> user_model -> save([
            'password' => sha1( $_POST[ 'password' ] ),
            'email' => $_POST[ 'email' ],
            'name' => $_POST[ 'username' ]
        ] )
        ) {
            return [ 'view' => 'login.php', 'page_title' => 'Login | Bibliothèque' ];
        } else {
            $_SESSION[ 'errors' ] = [ 'error' => 'Impossible d\'enregistrer vos informations' ];
            $_SESSION[ 'old_datas' ] = $_POST;
            header( 'Location: index.php?a=getRegister&r=user' );
        }

        return [ 'view' => 'login.php', 'page_title' => 'Register | Bibliothèque' ];


    }

    public function postLogin() {

        if( $user = $this -> user_model -> check( [
            'email' => $_POST[ 'email' ],
            'password' => sha1( $_POST[ 'password' ] )
            ] )
        ) {
            $_SESSION[ 'user' ] = json_encode( $user );
            header( 'Location: ?a=admin&r=pages&width=books,comments' );
        } else {
            $_SESSION[ 'errors' ] = [ 'error' => 'Email ou mot de passe invalide, veuillez verifier vos informations' ];
            $_SESSION[ 'old_datas' ] = $_POST;
            header( 'Location: index.php?a=getLogin&r=user' );
        }

    }

    public function getLogout() {
        if ( isset( $_SESSION[ 'user' ] ) ) {
            unset( $_SESSION[ 'user' ] );
            session_destroy();
            setcookie( session_name(), '', time()-100 );
        }
        header( 'Location: index.php' );
    }

}
