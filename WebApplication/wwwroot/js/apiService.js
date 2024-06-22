const apiUrl = 'https://localhost:7206';

function apiFetch(endpoint, options = {}) {
    const url = `${apiUrl}/${endpoint}`;
    const defaultOptions = {
        headers: {
            'Content-Type': 'application/json'
        }
    };

    options.headers = { ...defaultOptions.headers, ...options.headers };

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
    get: (endpoint, options = {}) => apiFetch(endpoint, { method: 'GET', ...options }),
    post: (endpoint, body, options = {}) => apiFetch(endpoint, { method: 'POST', body: JSON.stringify(body), ...options }),
    put: (endpoint, body, options = {}) => apiFetch(endpoint, { method: 'PUT', body: JSON.stringify(body), ...options }),
    delete: (endpoint, options = {}) => apiFetch(endpoint, { method: 'DELETE', ...options })
};