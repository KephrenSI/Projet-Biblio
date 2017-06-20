<main class="main">
    <section class="banner">
        <h2 role="heading" aria-level="2" class="banner__heading2 banner__heading">Liste des éditeurs</h2>
    </section>
    <section class="editeurs">
        <h2 role="heading" aria-level="2" class="main__heading2 main__heading">Tous les éditeurs</h2>
        <?php foreach ( $datas[ 'allEditors' ] as $editor ) :?>
        <div class="editeurs__infos">
            <h3 class="main__heading3 main__heading" role="heading" aria-level="3"><?php echo $editor -> name; ?></h3>
            <div class="editeurs__bloc">
                <img src="<?php echo $editor -> logo; ?>" width="400" height="400" alt="Logo de l'éditeur" class="editeurs__bloc--img">
            </div>
            <p class="editeurs__preamble">
                <span>À propos: </span><?php echo $editor -> summary; ?>
            </p>
            <a class="editeurs__link"  href="?a=show&r=editors&id=<?php echo $editor -> id; ?>&with=books,authors">Vers la fiche de l'éditeur</a>
        </div>
        <?php endforeach; ?>
    </section>
</main>
