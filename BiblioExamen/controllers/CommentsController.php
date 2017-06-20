<?php
namespace Controller;

use Model\Comments;

class CommentsController extends Controller
{
    private $comments_model = null;

    public function __construct() {

        $this -> comments_model = new Comments;

    }

    public function postComment() {
        $errors = [];
        $view = header( 'Location: ?a=show&r=books&id=' . $_POST[ 'id' ] . '&with=authors,editors' );;

        if ( empty( $_POST[ 'author' ] ) ) {
            $errors[ 'author' ] = 'Entrez votre nom s\'il vous plait';
        }

        if ( empty( $_POST[ 'comment' ] ) ) {
            $errors[ 'comment' ] = 'Le champs texte est vide';
        }

        if ( count( $errors ) ) {
            $_SESSION[ 'errors' ] = $errors;
            $_SESSION[ 'old_datas' ] = $_POST;
            header( 'Location: ?a=show&r=books&id=' . $_POST[ 'id' ] . '&with=authors,editors' );
            return;
        }

        $user = json_decode($_SESSION['user']);

        if ( $this -> comments_model -> save( [
                'author' => $_POST[ 'author' ],
                'comment' => $_POST[ 'comment' ],
                'book_id' => $_POST[ 'id' ],
                'user_id' => $user -> id
                ] ) ) {

            return [
                'view' => $view,
            ];

        } else {
            $_SESSION[ 'errors' ] = [ 'error' => 'Impossible d\'enregistrer vos informations' ];
            $_SESSION[ 'old_datas' ] = $_POST;
            header( 'Location: index.php?a=getLogin&r=user' );
        }
    }

    public function deleteComment() {
        $idComment= $_POST['id'];

        $this -> comments_model -> deleteCommentById($idComment);
        header( 'Location: index.php?a=admin&r=pages&with=books,comments' );
    }

}
