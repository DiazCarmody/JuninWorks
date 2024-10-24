document.addEventListener('DOMContentLoaded', ()=> {
    const toggler = document.querySelector('.toggler');
    const root = document.documentElement;


    if (root.getAttribute('data-theme') === 'dark'){
        toggler.checked = true;
    }
    toggler.addEventListener('click', toggleTheme);


    function toggleTheme(){
        const setTheme = toggler.checked ? 'dark' : 'light';


        root.setAttribute('data-theme', setTheme);
        localStorage.setItem('theme', setTheme);
    }
})
