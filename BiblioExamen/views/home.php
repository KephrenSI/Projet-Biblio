<main class="main">
    <section class="banner">
        <h2 role="heading" aria-level="2" class="mainbanner__heading2 mainbanner__heading">Bibliothèque en ligne</h2>
    </section>

    <section class="lastlivres">
        <h2 role="heading" aria-level="2" class="main__heading2 main__heading">Livres récement ajouté</h2>
        <?php foreach ( $datas[ 'lastBooks' ] as $book ) :?>
        <div class="lastlivres__infos">
            <h3 class="main__heading3" role="heading" aria-level="3"><?php echo $book -> title; ?></h3>
            <div class="lastlivres__bloc">
                <img src="<?php echo $book -> cover; ?>" width="327" height="477" alt="Photo de <?php echo $book -> title; ?>" class="lastlivres__bloc--img">
            </div>
            <p class="lastlivres__preamble">
                <span>Synopsis: </span><?php echo $book -> summary; ?>
            </p>
            <a class="lastlivres__link"  href="index.php?a=show&r=books&id=<?php echo $book -> id; ?>">Vers la fiche du livre</a>
        </div>
        <?php endforeach; ?>
        <div class="alllivres">
            <a class="all" href="?a=index&r=books">Voir tous les livres</a>
        </div>
    </section>

    <section class="lastauteurs">
        <h2 role="heading" aria-level="2" class="main__heading2 main__heading">L'alphabet des auteurs</h2>
        <?php foreach ( $datas[ 'alphaAuthors' ] as $author ) :?>
        <div class="lastauteurs__infos">
            <h3 class="main__heading3 main__heading" role="heading" aria-level="3"><?php echo $author -> name; ?></h3>
            <div class="lastauteurs__bloc">
                <img src="<?php echo $author -> photo; ?>" width="400" height="400" alt="Photo de <?php echo $author -> name; ?>" class="lastauteurs__bloc--img">
            </div>
            <p class="lastauteurs__preamble">
                <span>Biographie: </span><?php echo $author -> bio; ?>
            </p>
            <a class="lastauteurs__link"  href="index.php?a=show&r=authors&id=<?php echo $author -> id; ?>">Vers la fiche de l'auteur</a>
        </div>
        <?php endforeach; ?>
        <div class="allauteurs">
            <a class="all" href="?a=index&r=authors">Voir tous les auteurs</a>
        </div>
    </section>

    <section class="lastediteurs">
        <h2 role="heading" aria-level="2" class="main__heading2 main__heading">Éditeurs à découvrir</h2>
        <?php shuffle( $datas[ 'randomEditors' ] ); ?>
        <?php foreach ( array_slice($datas[ 'randomEditors' ], 0 ,3 ) as $editor ) :?>
        <!-- Afficher les éditeur de manière aléatoire -->
        <div class="lastediteurs__infos">
            <h3 class="main__heading3 main__heading" role="heading" aria-level="3"><?php echo $editor -> name; ?></h3>
            <div class="lastediteurs__bloc">
                <img src="<?php echo $editor -> logo; ?>" width="400" height="400" alt="Photo de <?php echo $editor -> name; ?>" class="lastediteurs__bloc--img">
            </div>
            <p class="lastediteurs__preamble">
                <span>À propos: </span><?php echo $editor -> summary; ?>
            </p>
            <a class="lastediteurs__link"  href="index.php?a=show&r=editors&id=<?php echo $editor -> id; ?>">Vers la fiche de l'éditeur</a>
        </div>
        <?php endforeach; ?>
        <div class="allediteurs">
            <a class="all" href="?a=index&r=editors">Voir tous les éditeurs</a>
        </div>
    </section>
</main>
