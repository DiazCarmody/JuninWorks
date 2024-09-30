<main>
    <link rel="stylesheet" href="../estilo/registro.css">
    <div>
    <form autocomplete="off" action="./logica/signin.php" method="POST">
            <img src="./imgs/page_icon.png">
            <h1>Tienda Sport</h1>
            <div></div>
                <input type="text" name="usuario_nombre" placeholder="Nombre" required>

                <input type="text" name="usuario_apellido" placeholder="Apellido" required>

                <input type="email" name="email" placeholder="Correo electrónico" required> 

                <input type="password" name="usuario_clave" placeholder="Contraseña" required> 
        
                <input type="password" name="usuario_clave_confirm" placeholder="Confirmar Contraseña" required>    
            <?php 
            if(isset($_SESSION['cargo']) && $_SESSION['cargo']==1):?>
            <label for="usuario_cargo">Cargo</label>
                <input list="rango" name ="usuario_cargo" placeholder="Rango" required>
                <datalist id="rango" name="rango-usuario" >
                    <option value="3" >Genérico</option>
                    <option value="1" >Administrador</option>
                </datalist>
            <?php endif; ?>
            <button type="submit">Registrar</button>
            <p>¿Ya posees una cuenta? <a href="index.php?vista=iniciarSesion">Inicia sesión</a></p>

    </form>
    </div>
    <br><br>
</main>
</body>
</html>