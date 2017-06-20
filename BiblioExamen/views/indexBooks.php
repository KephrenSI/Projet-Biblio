<main class="main">
    <section class="banner">
        <h2 role="heading" aria-level="2" class="banner__heading2 banner__heading">Liste des livres</h2>
    </section>
    <section class="livres">
        <h2 role="heading" aria-level="2" class="main__heading2 main__heading">Tous les livres</h2>
        <?php foreach ( $datas[ 'books' ] as $book ) :?>
        <div class="livres__infos">
            <h3 class="main__heading3" role="heading" aria-level="3"><?php echo $book -> title; ?></h3>
            <div class="livres__bloc">
                <img src="<?php echo $book -> cover; ?>" width="327" height="477" alt="Photo de l'auteur" class="livres__bloc--img">
            </div>
            <p class="livres__preamble">
                <span>Synopsis: </span><?php echo $book -> summary; ?>
            </p>
            <a class="livres__link"  href="?a=show&r=books&id=<?php echo $book -> id; ?>&with=authors,editors">Vers la fiche du livre</a>
        </div>
        <?php endforeach; ?>
    </section>
</main>
