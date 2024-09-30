<main>
    <div>
        <form action="" method="POST">
            <img src="./imgs/page_icon.png">
            <h1>Junín Works</h1>
                <div></div>
                <input type="email" name="email_usuario" placeholder="Ingrese su Email..." required>

                <input type="password" name="clave_usuario" placeholder="Ingrese su contraseña..." required> 

                <button type="submit">Ingresar</button>
                <p>¿No posees una cuenta? <a href="index.php?vista=registroDeUsuario">Regístrate</a></p>
        <?php 
        if (isset($_POST['email_usuario']) && isset($_POST['clave_usuario'])){
            require_once('./backend/login.php');
        }
        ?>
        </form>
    </div>
</main>