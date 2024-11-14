document.addEventListener('DOMContentLoaded', function() {
    // Obtener todos los <details> de la página
    const detailsElements = document.querySelectorAll('details');
  
    // Función para manejar la apertura de los <details>
    function handleDetailsClick(event) {
      // Si se hace clic en un <details>, cerramos los demás
      detailsElements.forEach(details => {
        // Si el <details> no es el que ha sido clickeado y está abierto, lo cerramos
        if (details !== event.target && details.open) {
          details.removeAttribute('open');
        }
      });
    }
  
    // Función para manejar clics fuera de los <details>
    function closeDetailsOutside(event) {
      detailsElements.forEach(details => {
        // Si el clic ocurrió fuera de este <details>, lo cerramos
        if (!details.contains(event.target) && details.open) {
          details.removeAttribute('open');
        }
      });
    }
  
    // Añadir event listener para detectar clics fuera de los <details>
    document.addEventListener('click', closeDetailsOutside);
  
    // Añadir event listener para manejar clics dentro de los <details>
    detailsElements.forEach(details => {
      details.addEventListener('click', handleDetailsClick);
    });
  });
  