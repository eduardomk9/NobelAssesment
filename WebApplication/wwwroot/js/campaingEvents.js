﻿const firstNameInput = document.getElementById('firstName');
const lastNameInput = document.getElementById('lastName');
const cityInput = document.getElementById('city');
const stateInput = document.getElementById('state');
const zipInput = document.getElementById('zip');
const companyInput = document.getElementById('company');

function saveFieldToLocalStorage(event) {
    const fieldId = event.target.id;
    const fieldValue = event.target.value; 
    localStorage.setItem(fieldId, fieldValue);
}

firstNameInput.addEventListener('blur', saveFieldToLocalStorage);
lastNameInput.addEventListener('blur', saveFieldToLocalStorage);
cityInput.addEventListener('blur', saveFieldToLocalStorage);
stateInput.addEventListener('blur', saveFieldToLocalStorage);
zipInput.addEventListener('blur', saveFieldToLocalStorage);
companyInput.addEventListener('blur', saveFieldToLocalStorage);

window.addEventListener('load', () => {
    firstNameInput.value = localStorage.getItem('firstName') || '';
    lastNameInput.value = localStorage.getItem('lastName') || '';
    cityInput.value = localStorage.getItem('city') || '';
    stateInput.value = localStorage.getItem('state') || '';
    zipInput.value = localStorage.getItem('zip') || '';
    companyInput.value = localStorage.getItem('company') || '';
});