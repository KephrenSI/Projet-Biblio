<?php
namespace Controller;

use Model\Books;
use Model\Authors;
use Model\Editors;
use Model\Comments;
use Model\User;

class PagesController extends Controller
{
    public function __construct()
    {
        $this -> books_model = new Books;
        $this -> authors_model = new Authors;
        $this -> editors_model = new Editors;
        $this -> comments_model = new Comments;
        $this -> user_model = new User;
    }

    public function home(){

        $lastBooks = $this -> books_model -> getLastThreeBooks();
        $alphaAuthors = $this -> authors_model -> getLastThreeAuthorsOrderByName();
        $randomEditors = $this -> editors_model -> all();

        return[
            'page_title' => 'Home | Bibliothèque',
            'view' => 'home.php',
            'lastBooks' => $lastBooks,
            'alphaAuthors' => $alphaAuthors,
            'randomEditors' => $randomEditors
        ];
    }

    public function admin(){
        $user = json_decode( $_SESSION['user'] ); 
        $comments_count = $this -> user_model -> getCountCommentsByUserId( $user -> id );
        $comments = $this -> comments_model -> getCommentsByUserId( $user -> id );

        if ( !isset( $_SESSION[ 'user' ] ) ) {
            header( 'Location: ?a=getLogin&r=user' );
        }

        return [
            'page_title' => 'Home | Bibliothèque',
            'view' => 'admin.php',
            'comments' => $comments,
            'comments_count' => $comments_count
        ];
    }
}
