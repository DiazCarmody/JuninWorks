let modal = document.getElementById("modalIntereses");

// Obtener el botón que abre el modal
let openModalBtn = document.getElementById("openModalBtn");

// Obtener el elemento <span> que cierra el modal
let closeBtn = document.getElementsByClassName("close")[0];

let saveBtn = document.getElementById("saveBtn");
saveBtn.disabled = true;
// Cuando el usuario haga clic en <span> (x), se cerrará el modal
closeBtn.onclick = function() {
    modal.style.display = "none";
}

// Cuando el usuario haga clic fuera del contenido del modal, se cerrará el modal
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}

function checkSelection() {
    let selectedCheckboxes = document.querySelectorAll('input[name="intereses"]:checked');
    if (selectedCheckboxes.length >= 3) {
        saveBtn.disabled = false; // Habilitar el botón si hay al menos 3 seleccionados
    } else {
        saveBtn.disabled = true; // Deshabilitar el botón si hay menos de 3
    }
}

// Escuchar los cambios en los checkboxes
let checkboxes = document.querySelectorAll('input[name="intereses"]');
checkboxes.forEach(function(checkbox) {
    checkbox.addEventListener('change', checkSelection); // Llamar a checkSelection cuando se seleccionen o deseleccionen
});

// Guardar los intereses seleccionados y enviarlos a PHP
saveBtn.onclick = function() {
    let selectedInterests = [];
    let checkboxes = document.querySelectorAll('input[name="intereses"]:checked');

    // Recorrer los checkboxes seleccionados y obtener sus valores
    checkboxes.forEach((checkbox) => {
        selectedInterests.push(checkbox.value);
    });

    // Enviar los datos a un archivo PHP mediante fetch
    fetch('procesar_intereses.php', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json' // Enviar como JSON
        },
        body: JSON.stringify({
            intereses: selectedInterests
        })
    })
    .then(response => response.json())
    .then(data => {
        console.log("Intereses guardados:", data);
        alert("Intereses guardados correctamente.");
        modal.style.display = "none"; // Cerrar el modal
    })
    .catch((error) => {
        console.error('Error:', error);
        alert("Hubo un error al guardar los intereses.");
    });
}