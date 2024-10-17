document.addEventListener('DOMContentLoaded', function() {
    const buttons = document.querySelectorAll('.solicitud-btn');

    buttons.forEach(button => {
        button.addEventListener('click', function() {
            // Obtener el ID de la persona desde el atributo data-id de la tarjeta
            const card = this.closest('.card');
            const personaId = card.getAttribute('data-id');

            // Enviar el ID a un archivo PHP mediante una solicitud fetch
            fetch('procesarSolicitud.php', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/x-www-form-urlencoded',
                },
                body: `id=${personaId}`
            })
            .then(response => response.text())
            .then(data => {
                console.log('Respuesta del servidor:', data);
                // Aquí puedes mostrar una alerta o actualizar el estado de la tarjeta
            })
            .catch(error => {
                console.error('Error:', error);
            });
        });
    });
});
