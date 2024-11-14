<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mi perfil</title>
    <link rel="stylesheet" href="../Styles/style.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
</head>

<body>
    <script src="../scripts/perfil.js"></script>
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
                <details id="details-tipo">
                    <summary class="tipo"><span>Tipo</span>
                    <span class="material-symbols-outlined">arrow_drop_down</span></summary>
                    <div class="summary-menu">
                        <header><span>Opciones:</span></header>
                        <label>
                            <span class="material-symbols-outlined">add</span>
                            <span class="text">Todos</span>
                        </label>
                        <label>
                            <span class="material-symbols-outlined">add</span>
                            <span class="text">Publicos</span>
                        </label>
                        <label>
                            <span class="material-symbols-outlined">add</span>
                            <span class="text">Privados</span>
                        </label>
                        <label>
                            <span class="material-symbols-outlined">add</span>
                            <span class="text">Proyectos</span>
                        </label>
                        <label>
                            <span class="material-symbols-outlined">add</span>
                            <span class="text">Compartidos</span>
                        </label>
                    </div>
                </details>
                <details id="details-lenguajes">
                    <summary class="lenguajes"><span>Lenguajes</span>
                    <span class="material-symbols-outlined">arrow_drop_down</span></summary>
                    <div class="summary-menu">
                        <header><span>Opciones:</span></header>
                        <label>
                            <span class="material-symbols-outlined">add</span>
                            <span class="text">Español</span>
                        </label>
                        <label>
                            <span class="material-symbols-outlined">add</span>
                            <span class="text">Ingles</span>
                        </label>
                        <label>
                            <span class="material-symbols-outlined">add</span>
                            <span class="text">Frances</span>
                        </label>
                        <label>
                            <span class="material-symbols-outlined">add</span>
                            <span class="text">Aleman</span>
                        </label>
                    </div>
                </details>
                <details id="details-ordenar">
                    <summary class="ordenar"><span>Ordenar</span>
                    <span class="material-symbols-outlined">arrow_drop_down</span></summary>
                    <div class="summary-menu">
                        <header><span>Opciones:</span></header>
                        <label>
                            <span class="material-symbols-outlined">add</span>
                            <span class="text">Ultima actualizacion</span>
                        </label>
                        <label>
                            <span class="material-symbols-outlined">add</span>
                            <span class="text">Nombre</span>
                        </label>
                        <label>
                            <span class="material-symbols-outlined">add</span>
                            <span class="text">Nose</span>
                        </label>
                    </div>
                </details>
                <details>
                    <summary class="crear"><span>New</span>
                        <span class="material-symbols-outlined">add</span>
                    </summary>
                </details>
            </div>
            <div class="container-trabajos">
                <div class="trabajo">
                    <a href="https://github.com/Damiansl/Bolsa-de-trabajo">
                        Bolsa-de-trabajo
                    </a>
                    <p>Publico</p>
                </div>
                <div class="info">
                    <span></span>
                    <p class="trabajos-lenguaje">PHP</p>
                    <p>Actualizado hace 3 años</p>
                </div>
            </div>
        </div>
    </main>
</body>

</html>