<main class="main">
    <section class="banner">
        <h2 role="heading" aria-level="2" class="singlebanner__heading2 singlebanner__heading"><?php echo $datas[ 'author' ] -> name; ?></h2>
    </section>
    <section class="auteur">
        <h2 class="main__heading2 main__heading" role="heading" aria-level="2">Fiche technique</h2>
        <div class="auteur__bloc">
            <img src="<?php echo $datas[ 'author' ] -> photo; ?>" width="400" height="400" alt="Photo de <?php echo $datas[ 'author' ] -> name; ?>" class="auteur__bloc--img">
        </div>
        <div class="auteur__preamble">
            <h3 class="main__heading3 main__heading" role="heading" aria-level="3">Résumé</h3>
            <p class="auteur__preamble--txt">
                <?php echo $datas[ 'author' ] -> bio; ?>
            </p>
        </div>
        <div class="auteur__infos">
            <ul class="list">
                <li class="list__elt list__elt--birthdate">
                    <p class="list__elt--txt"><span>Date de Naissance: </span><?php echo $datas[ 'author' ] -> birth_date; ?></p>
                </li>
                <li class="list__elt list__elt--deathdate">
                    <p class="list__elt--txt"><span>Date de décès: </span><?php echo $datas[ 'author' ] -> death_date; ?></p>
                </li>
                <?php if( $datas[ 'editors' ] ): ?>
                <li class="list__elt list__elt--editeur">
                    <ul class="sublist"><span>Editeurs: </span>
                        <?php foreach( $datas[ 'editors' ] as $editor ): ?>
                            <li class="subist__elt">
                                <a class="sublist__elt--link" href="?a=show&r=editors&id=<?php echo $editor -> id; ?>&with=authors,books"><?php echo $editor -> name; ?></a>
                            </li>
                        <?php endforeach; ?>
                    </ul>
                </li>
                <?php endif; ?>
                <?php if( $datas[ 'books' ] ): ?>
                <li class="list__elt list__elt--book">
                    <ul class="sublist"><span>Livres: </span>
                        <?php foreach( $datas[ 'books' ] as $book ): ?>
                            <li class="subist__elt">
                                <a class="sublist__elt--link" href="?a=show&r=books&id=<?php echo $book -> id; ?>&with=authors,editors"><?php echo $book -> title; ?></a>
                            </li>
                        <?php endforeach; ?>
                    </ul>
                </li>
                <?php endif; ?>
            </ul>
        </div>
    </section>
</main>