<main class="main">
    <section class="banner">
        <h2 role="heading" aria-level="2" class="adminbanner__heading2 adminbanner__heading">Profil utilisateur de <?php echo $user -> name; ?></h2>
    </section>
    <section class="admin">
        <h2 role="heading" aria-level="2" class="main__heading2 main__heading">Vos commentaires</h2>
        <?php if( $datas['comments_count']->nb_comments<1 ): ?>
            
        <?php elseif( $datas['comments_count']->nb_comments==1 ): ?>
            <p class="count">Vous avez déjà rédigé <?php echo $datas['comments_count']->nb_comments; ?> commentaire</p>
        <?php elseif( $datas['comments_count']->nb_comments>1 ): ?>
            <p class="count">Vous avez déjà rédigé <?php echo $datas['comments_count']->nb_comments; ?> commentaires</p>
        <?php endif; ?>
        <!-- Permet de gérer le singulier/pluriel suivant le nombre de commentaire ajouté. -->

        <?php if( $datas['comments'] ): ?>
        <?php foreach ( $datas[ 'comments' ] as $comment ) :?>
            <div class="admin__bloc">
                <p class="name"><?php echo $comment -> author; ?></p>
                <p class="date"><?php echo $comment -> created_at; ?></p>
                <div class="commentaire">
                    <p class="commentaire__txt"><?php echo $comment -> comment; ?></p>
                </div>
            </div>
            <a class="single" href="?a=show&r=books&id=<?php echo $comment->book_id; ?>&with=authors,editors,comments">Revoir le livre</a>
            <div class="deleteComment">
                <form action="index.php?a=deleteComment&r=comments" method="post">
                    <button type="submit" class="btn btn-danger">supprimer</button>
                    <input type="hidden" name="id" value="<?php echo $comment->id;?>">
                </form>
            </div>
        <?php endforeach; ?>
        <?php else: ?>
            <p class="nothing">
                Vous n'avez commenté aucun livre.
            </p>
        <?php endif; ?>
        <!-- Permet de vérifier si nous avous déjà ajouté un commentaire sur un livre -->
        <div class="alllivres">
            <a class="all" href="?a=index&r=books">Voir tous les livres</a>
        </div>
    </section>
</main>
