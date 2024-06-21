document.addEventListener('DOMContentLoaded', function () {
    const loginForm = document.getElementById('loginForm');

    loginForm.addEventListener('submit', function (event) {
        event.preventDefault();

        const mail = document.getElementById('username').value;
        const password = document.getElementById('password').value;

        apiService.post('auth/signin', { mail, password })
            .then(response => {
                // Armazenar o token (por exemplo, no localStorage)
                console.log(response.token);
                localStorage.setItem('token', response.token.accessToken);
                // Redirecionar para a página após o login
                //window.location.href = 'outra_pagina.html';
            })
            .catch(error => {
                console.error('Erro na requisição:', error);
                alert(error.message || 'Erro desconhecido ao fazer login');
            });
    });
});
