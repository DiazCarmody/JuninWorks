document.addEventListener('DOMContentLoaded', () => {
    const darkmodebutton = document.querySelector('.darkmodebutton');
    const root = document.documentElement;

    // Establecer el tema inicial basado en el almacenamiento local
    const savedTheme = localStorage.getItem('theme') || 'light';
    root.setAttribute('data-theme', savedTheme);

    darkmodebutton.addEventListener('click', toggleTheme);

    function toggleTheme() {
        // Obtener el tema actual y alternarlo
        const currentTheme = root.getAttribute('data-theme');
        const newTheme = currentTheme === 'dark' ? 'light' : 'dark';

        // Cambiar el atributo data-theme y guardar en localStorage
        root.setAttribute('data-theme', newTheme);
        localStorage.setItem('theme', newTheme);
    }
});

