<?php
namespace Model;


// Model\Comments
class Comments extends Model
{
    protected $table = 'comments';

    public function getCommentsByBookId( $id ) {
        $sql = 'SELECT * FROM ' . $this -> table . ' where book_id = :id ORDER BY created_at DESC';

        $stmnt = $this -> cn -> prepare( $sql );
        $stmnt -> execute( [ ':id' => $id ] );

        return $stmnt -> fetchAll();
    }

    public function getCommentsByUserId( $id ) {
        $sql = 'SELECT comments.* 
	        FROM comments 
	        JOIN users 
	        ON comments.user_id = users.id 
	        WHERE users.id = :id';

        $stmnt = $this -> cn -> prepare( $sql );
        $stmnt -> execute( [ ':id' => $id ] );

        return $stmnt -> fetchAll();
    }

    public function deleteCommentById( $id ){
        $sql = 'DELETE FROM comments WHERE id = :id';
        
        $stmnt = $this -> cn -> prepare( $sql );
        $stmnt -> execute( [ ':id' => $id ] );
        
    }
}
