<?php
namespace Model;

class User extends Model
{
    protected $table = 'users';

    public function check( $credentials ) {
        $sql = 'SELECT * FROM users WHERE email = :email AND password = :password';
        $stmnt = $this -> cn -> prepare( $sql );
        $stmnt -> execute( [
            'email' => $credentials[ 'email' ],
            'password' => $credentials[ 'password' ]
        ] );

        return $stmnt -> fetch();
    }
    public function getCountCommentsByUserId( $id ){
        $sql = 'SELECT COUNT(comments.id) 
                AS nb_comments 
                FROM comments 
                JOIN users 
                ON comments.user_id = users.id 
                WHERE users.id = :id';
        $stmnt = $this -> cn -> prepare( $sql );
        $stmnt -> execute( [
            'id' => $id
        ] );

        return $stmnt -> fetch();
    }
}
