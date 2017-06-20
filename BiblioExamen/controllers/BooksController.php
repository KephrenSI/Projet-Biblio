<?php
namespace Controller;

use Model\Books;
use Model\Authors;
use Model\Editors;
use Model\Comments;

class BooksController extends Controller
{
    private $books_model = null;

    public function __construct()
    {
        $this -> books_model = new Books;
        $this -> comments_model = new Comments;
    }

    public function index()
    {
        $books = $this -> books_model -> all();
        $view = 'views/' . $GLOBALS[ 'a' ] . $GLOBALS[ 'r' ] . '.php';

        return [
            'page_title' => 'Books | Bibliothèque',
            'view' => $view,
            'books' => $books,
        ];
    }

    public function show() {

        if ( !isset( $_GET[ 'id' ] ) ) {
            die( 'Il manque l\'identifiant de votre livre' );
        }
        $id = intval( $_GET[ 'id' ] );
        $view = 'showBooks.php';
        $book = $this -> books_model -> find( $id );
        $comments = $this -> comments_model -> getCommentsByBookId( $id );
        $authors = null;
        $editors = null;

        if ( isset( $_GET[ 'with' ] ) ) {
            $with = explode( ',', $_GET[ 'with' ] );
            if ( in_array( 'authors', $with ) ) {
                $authors_model = new Authors();
                $authors = $authors_model -> getAuthorsByBookId( $book -> id );
            }
            if ( in_array( 'editors', $with ) ) {
                $editors_model = new Editors();
                $editors = $editors_model -> getEditorsByBookId( $book -> id );
            }
        }

        return [
            'page_title' => $book -> title . ' | Bibliothèque',
            'book' => $book,
            'view' => $view,
            'authors' => $authors,
            'editors' => $editors,
            'comments' => $comments
        ];
    }
}
