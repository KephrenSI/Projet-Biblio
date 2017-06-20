<main class="main">
    <section class="banner">
        <h2 role="heading" aria-level="2" class="singlebanner__heading2 singlebanner__heading"><?php echo $datas[ 'book' ] -> title; ?></h2>
    </section>
    <section class="livre">
        <h2 class="main__heading2" role="heading" aria-level="2">Fiche technique</h2>
        <div class="livre__bloc">
            <img src="<?php echo $datas[ 'book' ] -> cover; ?>" width="300" height="477" alt="Couverture du livre <?php echo $datas[ 'book' ] -> title; ?>" class="livre__bloc--img">
        </div>
        <div class="livre__preamble">
            <h3 class="main__heading3" role="heading" aria-level="3">Résumé</h3>
            <p class="auteur__preamble--txt">
                <?php echo $datas[ 'book' ] -> summary; ?>
            </p>
        </div>
        <div class="livre__infos">
            <ul class="list">
                <li class="list__elt list__elt--auteur">
                    <ul class="sublist"><span>Auteurs: </span>
                    <?php foreach( $datas[ 'authors' ] as $author ): ?>
                        <li class="sublist__elt">
                            <a class="sublist__elt--link" href="?a=show&e=authors&id=<?php echo $author -> id; ?>&with=books,editors"><?php echo $author -> name; ?></a>
                        </li>
                    <?php endforeach; ?>
                    </ul>
                </li>
                <li class="list__elt list__elt--editeur">
                    <ul class="sublist"><span>Editeurs: </span>
                    <?php foreach( $datas[ 'editors' ] as $editor ): ?>
                        <li class="sublist__elt">
                            <a class="sublist__elt--link" href="?a=show&e=editors&id=<?php echo $editor -> id; ?>&with=books,authors"><?php echo $editor -> name; ?></a>
                        </li>
                    <?php endforeach; ?>
                    </ul>
                </li>
                <li class="list__elt list__elt--page">
                    <p class="pages">
                        <span>Pages: </span><?php echo $datas[ 'book' ] -> pages_num; ?>
                    </p>
                </li>
            </ul>
        </div>
    </section>
    <section class="comment">
        <h2 class="main__heading2" role="heading" aria-level="2">Commentaires</h2>
        <?php if ( $datas[ 'comments' ] ): ?>
        <div class="commentaires">
            <h3 class="main__heading3" role="heading" aria-level="3">Tous les commentaires</h3>
            <?php foreach( $datas[ 'comments' ] as $comment ): ?>
            <div class="commentaires__bloc">
                <p class="name"><?php echo $comment -> author; ?></p>
                <p class="date"><?php echo $comment -> created_at; ?></p>
                <div class="commentaire">
                    <p class="commentaire__txt"><?php echo $comment -> comment; ?></p>
                </div>
            </div>
            <?php endforeach; ?>
        </div>
        <?php endif; ?>
        <div class="ecrire">
            <h3 class="main__heading3" role="heading" aria-level="3">Écrivez un commentaire</h3>
            <?php if ( !isset( $_SESSION[ 'user' ] ) ): ?>
                <p class="txt">Connectez-vous pour commenter ce livre</p>
                <a class="link" href="?a=getLogin&r=user">Se connecter</a>
            <?php else: ?>
            <?php $user = json_decode($_SESSION['user']); ?>
            <form action="index.php" method="post">
                <label class="label label--name" for="author">Votre nom</label>
                <?php if ( isset( $_SESSION[ 'errors' ][ 'author' ] ) ): ?>
                    <div class="avertissement">
                        <p><?php echo $_SESSION[ 'errors' ][ 'author' ]; ?></p>
                    </div>
                <?php endif; ?>
                <input class="input input--name" type="text" id="author" name="author" value="<?php echo $user -> name; ?>">

                <label class="label label--txt" for="comment">Message</label>
                <?php if ( isset( $_SESSION[ 'errors' ][ 'comment' ] ) ): ?>
                    <div class="avertissement">
                        <p><?php echo $_SESSION[ 'errors' ][ 'comment' ]; ?></p>
                    </div>
                <?php endif; ?>
                <textarea class="input input--txt" id="comment" name="comment" placeholder="Que pensez-vous de ce livre?"></textarea>

                <input class="input input--send" type="submit" value="Envoyer">

                <input type="hidden" name="id" value="<?php echo $datas[ 'book' ] -> id; ?>">
                <input type="hidden" name="a" value="postComment">
                <input type="hidden" name="r" value="comments">
            </form>
            <?php endif; ?>
        </div>
    </section>
</main>
