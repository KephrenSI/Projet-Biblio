<main class="main">
    <section class="inscription">
        <div class="inscription__bloc">
            <h2 class="main__heading2 main__heading" aria-level="2" role="heading">S'inscrire</h2>
            <form class="form" method="post" action="index.php">
                <label for="username" class="form__label">Nom d'utilisateur</label>
                <?php if ( isset( $_SESSION[ 'errors' ][ 'username' ] ) ): ?>
                    <div class="avertissement">
                        <p><?php echo $_SESSION[ 'errors' ][ 'username' ]; ?></p>
                    </div>
                <?php endif; ?>
                <input class="form__input" type="text" name="username" value="<?php echo isset( $_SESSION['old_datas']['name'] ) ? $_SESSION['old_datas']['name'] : ''; ?>" id="username" placeholder="Nom d'utilisateur">

                <label for="email" class="form__label">Email</label>
                <?php if ( isset( $_SESSION[ 'errors' ][ 'email' ] ) ): ?>
                    <div class="avertissement">
                        <p><?php echo $_SESSION[ 'errors' ][ 'email' ]; ?></p>
                    </div>
                <?php endif; ?>
                <input class="form__input" type="email" name="email" value="<?php echo isset( $_SESSION['old_datas']['email'] ) ? $_SESSION['old_datas']['email'] : ''; ?>" id="email" placeholder="exemple@email.be">

                <label for="password" class="form__label">Mot de passe</label>
                <?php if ( isset( $_SESSION[ 'errors' ][ 'password' ] ) ): ?>
                    <div class="avertissement">
                        <p><?php echo $_SESSION[ 'errors' ][ 'password' ]; ?></p>
                    </div>
                <?php endif; ?>
                <input class="form__input" type="password" name="password" value="<?php echo isset( $_SESSION['old_datas']['password'] ) ? $_SESSION['old_datas']['password'] : ''; ?>" id="password" placeholder="Mot de passe">

                <input type="submit" class="form__submit" value="s'inscrire">

                <input type="hidden" name="a" value="postRegister">
                <input type="hidden" name="r" value="user">
            </form>
            <?php if ( isset( $_SESSION[ 'errors' ] ) ): ?>
                <?php unset( $_SESSION[ 'errors' ] ); ?>
                <?php unset( $_SESSION[ 'old_datas' ] ); ?>
            <?php endif; ?>
        </div>
    </section>
</main>
