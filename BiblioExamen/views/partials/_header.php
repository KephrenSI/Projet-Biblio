<header class="header">
    <h1 aria-level="1" role="heading" class="header__heading1 header__heading hidden">Bibliothèque</h1>
    <nav class="menu">
        <h2 role="heading" aria-level="2" class="header__heading2 header__heading hidden">Menu</h2>
        <?php include( "_connect.php" ); ?>
        <ul class="list">
            <li class="list__elt">
                <a href=".?a=home&r=pages" class="list__elt--link">Accueil</a>
            </li>
            <li class="list__elt">
                <a href="?a=index&r=books" class="list__elt--link">Livres</a>
            </li>
            <li class="list__elt">
                <a href="?a=index&r=authors" class="list__elt--link">Auteurs</a>
            </li>
            <li class="list__elt">
                <a href="?a=index&r=editors" class="list__elt--link">Éditeurs</a>
            </li>
        </ul>
    </nav>
</header>