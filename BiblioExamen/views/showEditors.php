<main class="main">
    <section class="banner">
        <h2 role="heading" aria-level="2" class="singlebanner__heading2 singlebanner__heading"><?php echo $datas[ 'editor' ] -> name; ?></h2>
    </section>
    <section class="editeur">
        <h2 class="main__heading2 main__heading" role="heading" aria-level="2">Fiche technique</h2>
        <div class="editeur__bloc">
            <img src="<?php echo $datas[ 'editor' ] -> logo; ?>" width="400" height="400" alt="Logo de <?php echo $datas[ 'editor' ] -> name; ?>" class="editeur__img">
        </div>
        <div class="editeur__preamble">
            <h3 class="main__heading3 main__heading" role="heading" aria-level="3">Résumé</h3>
            <p class="auteur__preamble--txt">
                <?php echo $datas[ 'editor' ] -> summary; ?>
            </p>
        </div>
        <div class="editeur__infos">
            <ul class="list">
                <li class="list__elt list__elt--editeur">
                    <p class="list__elt--txt">
                        <a class="link" href="<?php echo $data[ 'editor' ] -> url; ?>" class="list__elt--link" title="Aller sur le site officiel de <?php echo $datas[ 'editor' ] -> name; ?>"><span>Site officiel</span></a>
                    </p>
                </li>
                <li class="list__elt list__elt--auteur">
                    <ul class="sublist"><span>Auteurs: </span>
                        <?php foreach( $datas[ 'authors' ] as $author ): ?>
                            <li class="sublist__elt">
                                <a class="sublist__elt--link" href="?a=show&r=authors&id=<?php echo $author -> id; ?>&with=editors,books"><?php echo $author -> name; ?></a>
                            </li>                        
                        <?php endforeach; ?>
                    </ul>
                </li>
                <li class="list__elt list__elt--book">
                    <ul class="sublist"><span>Livres: </span>
                        <?php foreach( $datas[ 'books' ] as $book ): ?>
                            <li class="sublist__elt">
                                <a class="sublist__elt--link" href="?a=show&r=books&id=<?php echo $book -> id; ?>&with=authors,editors"><?php echo $book -> title; ?></a>
                            </li>                        
                        <?php endforeach; ?>
                    </ul>
                </li>
            </ul>
        </div>
    </section>
</main>
