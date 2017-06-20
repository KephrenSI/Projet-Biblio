<ul class="membre">
    <?php if ( !isset( $_SESSION[ 'user' ] ) ): ?>
        <li class="membre__elt membre__elt--register">
            <a href="?a=getRegister&r=user" class="membre__elt--link">S'inscrire</a>
        </li>
        <li class="membre__elt membre__elt--connection">
            <a href="?a=getLogin&r=user" class="membre__elt--link">Connection</a>
        </li>
    <?php else: ?>
    <?php $user = json_decode( $_SESSION[ 'user' ] ); ?>
        <li class="membre__elt membre__elt--connected">
            <a href="?a=admin&r=pages&width=books,comments" class="membre__elt--link">Bonjour, <?php echo $user -> name; ?></a>
        </li>
        <li class="membre__elt membre__elt--logout">
            <a href="?a=getLogout&r=user" class="membre__elt--link">Déconnection</a>
        </li>
    <?php endif; ?>
</ul>
<!-- Permet de changer le menu de connection si l'utilisateur est connecté. -->
