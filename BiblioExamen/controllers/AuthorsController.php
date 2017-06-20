<?php
namespace Controller;

use Model\Authors;
use Model\Books;
use Model\Editors;

class AuthorsController
{
    private $authors_model = null;

    public function __construct()
    {
        $this -> authors_model = new Authors();
        $this -> books_model = new Books();
        $this -> editors_model = new Editors();
    }

    public function index() {

        $allAuthors = $this -> authors_model -> getAuthorsOrderByName();
        $view = 'views/' . $GLOBALS[ 'a' ] . $GLOBALS[ 'r' ] . '.php';

        return [
            'page_title' => 'Authors | Bibliothèque',
            'view' => $view,
            'allAuthors' => $allAuthors
        ];
    }

    public function show() {

        if ( !isset( $_GET[ 'id' ] ) ) {
            die( 'Il manque l\'identifiant de votre livre' );
        }
        $id = intval( $_GET[ 'id' ] );
        $view = 'showAuthors.php';
        $author = $this -> authors_model -> find( $id );
        $allAuthors = $this -> authors_model -> getAuthorsOrderByName();
        $books = null;
        $editors = null;

        if ( isset( $_GET[ 'with' ] ) ) {
            $with = explode( ',', $_GET[ 'with' ] );
            if ( in_array( 'books', $with ) ) {
                $books_model = new Books();
                $books = $books_model -> getBooksByAuthorId( $author -> id );
            }
            if ( in_array( 'editors', $with ) ) {
                $editors_model = new Editors();
                $editors = $editors_model -> getEditorsByAuthorId( $author -> id );
            }
        }

        return [
            'page_title' => $author -> name . ' | Bibliothèque',
            'author' => $author,
            'allAuthors' => $allAuthors,
            'view' => $view,
            'books' => $books,
            'editors' => $editors
        ];
    }
}
