<main class="main">
    <section class="connexion">
        <div class="connexion__bloc">
            <h2 class="main__heading2 main__heading" aria-level="2" role="heading">Connection</h2>
            <form class="form" method="post" action="index.php">

                <label for="mail" class="form__label">Email</label>
                <input class="form__input" type="text"  name="email" id="mail" placeholder="example@email.com">

                <label for="password" class="form__label">Mot de passe</label>
                <input class="form__input" type="password" name="password" value="" id="password" placeholder="Mot de passe">
                
                <input type="submit" class="form__submit" value="Connection">
                
                <input type="hidden" name="a" value="postLogin">
                <input type="hidden" name="r" value="user">

                <?php if ( isset( $_SESSION[ 'errors' ] ) ): ?>
                    <?php unset( $_SESSION[ 'errors' ] ); ?>
                    <?php unset( $_SESSION[ 'old_datas' ] ); ?>
                    <p class="avertissement"><?php echo 'Email ou mot de passe invalide, veuillez verifier vos informations'; ?></p>
                <?php endif; ?>
            </form>
        </div>
    </section>
</main>
