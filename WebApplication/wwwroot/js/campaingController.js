document.addEventListener('DOMContentLoaded', () => {
    const tableBody = document.getElementById('campaignTableBody');
    const apiEndpoint = 'SampleApi/GetSampleListAsync';
    const bearerToken = localStorage.getItem('token'); 

    if (!bearerToken) {
        console.error('No bearer token found in local storage');
        return;
    }

    const headers = {
        'Authorization': `Bearer ${bearerToken}`,
        'Content-Type': 'application/json'
    };

    apiService.get(apiEndpoint, { headers })
        .then(data => {
            data.forEach(item => {
                const row = tableBody.insertRow();
                const descriptionCell = row.insertCell();
                const typeCell = row.insertCell();
                const topicsCell = row.insertCell();
                const urlCell = row.insertCell();

                row.dataset.url = item.url;

                descriptionCell.textContent = item.description;
                typeCell.textContent = item.type;
                topicsCell.textContent = item.topics;

                urlCell.textContent = item.url;
                urlCell.style.display = 'none';
            });
        })
        .catch(error => {
            console.error('Error fetching campaign data:', error);
        });
});