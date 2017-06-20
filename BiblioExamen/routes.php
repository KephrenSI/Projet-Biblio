<?php

$routes = [
    'default' => 'GET/home/pages',
    'books' => 'GET/index/books',
    'authors' => 'GET/index/authors',
    'editors' => 'GET/index/editors',
    'book' => 'GET/show/books',
    'author' => 'GET/show/authors',
    'editor' => 'GET/show/editors',
    'post_comments' => 'POST/postComment/comments',
    'delete_comments' => 'POST/deleteComment/comments',
    'protected_page' => 'GET/admin/pages',
    'get_register' => 'GET/getRegister/user',
    'post_register' => 'POST/postRegister/user',
    'get_login' => 'GET/getLogin/user',
    'post_login' => 'POST/postLogin/user',
    'get_logout' => 'GET/getLogout/user'
];
