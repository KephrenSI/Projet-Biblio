<?php
namespace Controller;

use Model\Editors;
use Model\Books;
use Model\Authors;

class EditorsController
{
    private $editors_model = null;

    public function __construct()
    {
        $this -> editors_model = new Editors();
        $this -> books_model = new Books();
        $this -> authors_model = new Authors();
    }

    public function index()
    {
        $allEditors = $this -> editors_model -> getEditorsOrderById();
        $view = 'indexEditors.php';

        return [
            'page_title' => 'Editors | Bibliothèque',
            'allEditors' => $allEditors,
            'view' => $view,
        ];
    }

    public function show( ) {
        if ( !isset( $_GET[ 'id' ] ) ) {
            die( 'Il manque l\'identifiant de votre livre' );
        }
        $id = intval( $_GET[ 'id' ] );
        $view = 'showEditors.php';
        $editor = $this -> editors_model -> find( $id );
        $books = null;
        $authors = null;

        if ( isset($_GET[ 'with' ] ) ) {
            $with = explode( ',', $_GET[ 'with' ] );
            if ( in_array( 'books', $with ) ) {
                $books_model = new Books();
                $books = $books_model -> getBooksByEditorId( $editor -> id );
            }
            if ( in_array( 'authors', $with ) ) {
                $authors_model = new Authors();
                $authors = $authors_model -> getAuthorsByEditorId( $editor -> id );
            }
        }
        return [
            'page_title' => $editor -> name . ' | Bibliothèque',
            'editor' => $editor,
            'view' => $view,
            'books' => $books,
            'authors' => $authors
        ];
    }
}
