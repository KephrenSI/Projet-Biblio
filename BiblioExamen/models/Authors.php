<?php
namespace Model;


// Model\Authors
class Authors extends Model
{
    protected $table = 'authors';

    public function getLastThreeAuthorsOrderByName() {
        $sql = 'SELECT * FROM ' . $this -> table . ' ORDER BY name LIMIT 3';
        $stmnt = $this -> cn -> query( $sql );

        return $stmnt -> fetchAll();
    }

    public function getAuthorsByBookId( $id )
    {
        $sql = 'SELECT authors.*
                FROM authors
                JOIN author_book on authors.id = author_book.author_id
                JOIN books on author_book.book_id = books.id
                WHERE books.id = :id';

        $stmnt = $this -> cn -> prepare( $sql );
        $stmnt -> execute( [ ':id' => $id ] );

        return $stmnt -> fetchAll();
    }

    public function getAuthorsByEditorId( $id ) {
        $sql = 'SELECT DISTINCT authors.*
                FROM authors
                JOIN author_book on authors.id = author_id
                JOIN books on books.editor_id = book_id
                JOIN editors on books.editor_id = editors.id
                WHERE editors.id = :id';

        $stmnt = $this -> cn -> prepare( $sql );
        $stmnt -> execute( [ ':id' => $id ] );

        return $stmnt -> fetchAll();
    }

    public function getAuthorsOrderByName() {
        $sql = 'SELECT * FROM ' . $this -> table . ' ORDER BY name';
        $stmnt = $this -> cn -> query( $sql );

        return $stmnt -> fetchAll();
    }

}
