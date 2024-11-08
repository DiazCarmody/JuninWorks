document.addEventListener('DOMContentLoaded', () => {
    const accountnav = document.querySelector('#accountnav');
    const button = document.querySelector('#accountbutton');
    const phonebutton = document.querySelector('#phoneaccountbutton');
    const closebutton = document.querySelector('#closeaccountnav');

    button.addEventListener('click', () => {
        const currentWidth = accountnav.style.width;
        accountnav.style.width = '288px';
        accountnav.style.borderLeft = "1px solid var(--border-color)";
    });
    phonebutton.addEventListener('click', () => {
        const currentWidth = accountnav.style.width;
        accountnav.style.width = '288px';
        accountnav.style.borderLeft = "1px solid var(--border-color)";
    });
    closebutton.addEventListener('click', () => {
        const currentWidth = accountnav.style.width;
        accountnav.style.width = '0px';
        accountnav.style.border = 'none';
    });

});