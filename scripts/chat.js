document.addEventListener('DOMContentLoaded', () => {
    const chatsection = document.querySelector('.chatsection');
    const closebutton = document.querySelector('.closeBTN');

    closebutton.addEventListener('click', () => {
        chatsection.style.display = 'none';
    });

});