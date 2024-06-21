const apiUrl = 'https://localhost:7206'; // Substitua pela URL da sua Web API

function apiFetch(endpoint, options = {}) {
    const url = `${apiUrl}/${endpoint}`;
    const defaultOptions = {
        headers: {
            'Content-Type': 'application/json'
        }
    };

    options = { ...defaultOptions, ...options };

    return fetch(url, options)
        .then(response => {
            if (!response.ok) {
                return response.json().then(errorData => {
                    throw new Error(errorData.message || 'Erro ao realizar a requisição');
                });
            }
            return response.json();
        });
}

const apiService = {
    get: (endpoint) => apiFetch(endpoint),
    post: (endpoint, body) => apiFetch(endpoint, { method: 'POST', body: JSON.stringify(body) }),
    put: (endpoint, body) => apiFetch(endpoint, { method: 'PUT', body: JSON.stringify(body) }),
    delete: (endpoint) => apiFetch(endpoint, { method: 'DELETE' })
};
