document.addEventListener('DOMContentLoaded', () => {

    //MD CLOSE

    const md = document.querySelector('.mdsection');
    const mdclose = document.querySelector('.mdcloseBTN');

    mdclose.addEventListener('click', () => {
        md.style.display = 'none';
    });

    //CONTACT CLOSE

    const ct = document.querySelector('.contactsection');
    const ctclose = document.querySelector('.ctcloseBTN');

    ctclose.addEventListener('click', () => {
        ct.style.display = 'none';
    });

    //CLOSE MD

    const damimd = document.querySelector('#damisala');

    damimd.addEventListener('click', () => {
        md.style.display = 'flex';
    });

    //CONTACT SEARCH

    const searchct = document.querySelector('.searchct');
    const searchcticon = document.querySelector('.searchcticon');
    const ctsearchform = document.querySelector('.ctsearchform');
    const searchctinput = document.querySelector('.searchctinput');
    const chatstitle = document.querySelector('.chatstitle');

    searchct.addEventListener('click', () => {

        if(searchcticon.textContent == 'search'){
        ctclose.style.display = 'none';
        chatstitle.style.display = 'none';
        searchcticon.textContent = 'close';
    
        ctsearchform.style.display = 'flex';
        }

        else{
            ctclose.style.display = 'flex';
            chatstitle.style.display = 'flex';
            searchcticon.textContent = 'search';
            searchctinput.value = '';
        
            ctsearchform.style.display = 'none';
        }

    });

        //MD SEARCH

        const searchmd = document.querySelector('.searchmd');
        const searchmdicon = document.querySelector('.searchmdicon');
        const searchmdform = document.querySelector('.mdsearchform');
        const searchmdinput = document.querySelector('.searchmdinput');
        const mdname = document.querySelector('#mdname');
    
        searchmd.addEventListener('click', () => {
    
            if(searchmdicon.textContent == 'search'){
            mdclose.style.display = 'none';
            mdname.style.display = 'none';
            searchmdicon.textContent = 'close';
        
            searchmdform.style.display = 'flex';
            }
    
            else{
                mdclose.style.display = 'flex';
                mdname.style.display = 'flex';
                searchmdicon.textContent = 'search';
                searchmdinput.value = '';
            
                searchmdform.style.display = 'none';
            }
    
        });

    //TEXTAREA

    const textarea = document.querySelector('#chatarea');

});
