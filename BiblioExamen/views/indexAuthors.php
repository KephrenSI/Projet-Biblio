<main class="main">
    <section class="banner">
        <h2 role="heading" aria-level="2" class="banner__heading2 banner__heading">Liste des auteurs</h2>
    </section>
    <section class="auteurs">
        <h2 role="heading" aria-level="2" class="main__heading2 main__heading">Tous les auteurs</h2>
        <?php foreach ( $datas[ 'allAuthors' ] as $author ) :?>
        <div class="auteurs__infos">
            <h3 class="main__heading3 main__heading" role="heading" aria-level="3"><?php echo $author -> name; ?></h3>
            <div class="auteurs__bloc">
                <img src="<?php echo $author -> photo; ?>" width="400" height="400" alt="Photo de <?php echo $author -> name; ?>" class="auteurs__bloc--img">
            </div>
            <p class="auteurs__preamble">
                <span>Biographie: </span><?php echo $author -> bio; ?>
            </p>
            <a class="auteurs__link"  href="?a=show&r=authors&id=<?php echo $author -> id; ?>&with=books,editors">Vers la fiche de l'auteur</a>
        </div>
        <?php endforeach; ?>
    </section>
</main>
