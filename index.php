<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);

require_once ('./inc/session.php'); 
require_once ('./backend/main.php');//se incluye para iniciar sesión
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">	
    <title>Junin Works</title>
</head>
<body id="body">
	<?php
    $vista = limpiarString(isset($_GET['vista'])) ? limpiarString($_GET['vista']) : 'iniciarSesion';

    switch ($vista) {
        case 'iniciarSesion':
            include("./views/iniciarSesion.php");
            break;
        default:
            if (is_file("./views/$vista.php")) {
                if (isset($_SESSION['id']) && isset($_SESSION['email'])) {
                    if (isset($_SESSION['estadoSesion']) && $_SESSION['estadoSesion'] == true) {
                        include("./inc/navbar.php");
                        include("./views/$vista.php");
                    } else {
                        include("./inc/navbar.php");
                        include("./views/$vista.php");
                    }
                } else {
                    include("./views/cerrarSesion.php");
                }
            } else {
                include("./views/404.php");
            }
            break;
    }
	?>
</body>
</html>