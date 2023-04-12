let navbar= document.querySelector('.header .navbar');
let accountbox = document.querySelector('.header .account-box');

document.querySelector('#menu-btn').onclick = () =>{
    navbar.classList.toggle('active');
}

document.querySelector('#user-btn').onclick = () =>{
    accountbox.classList.toggle('active');
}

window.onscroll = () =>{
    navbar.classList.remove('active');
    accountbox.classList.toggle('active');
}

document.querySelector('#close-update').onclick = () =>{
    document.querySelector('.edit-product-form').style.display = 'none';
    window.location.href='products.php';
}

