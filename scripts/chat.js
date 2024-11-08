document.addEventListener('DOMContentLoaded', () => {
    const md = document.querySelector('.mdsection');
    const mdclose = document.querySelector('.mdcloseBTN');

    const ct = document.querySelector('.contactsection');
    const ctclose = document.querySelector('.ctcloseBTN');

    mdclose.addEventListener('click', () => {
        md.style.display = 'none';
    });

    ctclose.addEventListener('click', () => {
        ct.style.display = 'none';
    });

    //TEXTAREA

    const textarea = document.querySelector('#chatarea');

});
