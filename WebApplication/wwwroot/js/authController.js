document.addEventListener('DOMContentLoaded', function () {
    const loginForm = document.getElementById('loginForm');

    loginForm.addEventListener('submit', function (event) {
        event.preventDefault();

        const mail = document.getElementById('username').value;
        const password = document.getElementById('password').value;

        apiService.post('auth/signin', { mail, password })
            .then(response => {
                localStorage.setItem('token', response.token.accessToken);
                window.location.href = 'page/campaingn.html';
            })
            .catch(error => {
                console.error('Erro na requisição:', error);
                alert(error.message || 'Erro desconhecido ao fazer login');
            });
    });
});
