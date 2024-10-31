<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mi perfil</title>
    <link rel="stylesheet" href="../Styles/style.css">
</head>

<body>
    <nav>
    <?php include("../inc/navbar.html"); ?>
    </nav>
    <main>
        <section class="perfil-datos">
            <img src="./images/perfil-foto.jpg" alt="imagen de tu perfil">
            <h2>Damián Sala</h2>
            <p>Hola soy el dami y soy un crack</p>
            <button>Editar perfil</button>
        </section>
        <div class="perfil-trabajos">
            <div class="search-sort">
                <input type="text" name="" id="search" placeholder="Ingrese su busqueda">
                <button class="tipo">Tipo</button>
                <button class="lenguajes">Lenguajes</button>
                <button class="ordenar">Ordenar</button>
                <button class="crear">New</button>
            </div>
            <div class="container-trabajos">
                <a href="https://github.com/Damiansl/Bolsa-de-trabajo">
                    Bolsa-de-trabajo
                </a>
                <p>Publico</p>
            </div>
        </div>
    </main>
</body>

</html>