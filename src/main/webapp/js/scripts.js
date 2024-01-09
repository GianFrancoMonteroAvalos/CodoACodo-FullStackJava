function calcularTotal() {
    const cant = document.getElementById('cantidadN').value;
    const valor = document.getElementById('categoryS').value;
    let resumenTotal = 0;

    if (valor === 'SinCategoria') {
        resumenTotal = 200 * cant;
    } else if (valor === 'Estudiante') {
        resumenTotal = (200 * 0.2) * cant;
    } else if (valor === 'Trainee') {
        resumenTotal = (200 * 0.5) * cant;
    } else if (valor === 'Junior') {
        resumenTotal = (200 * 0.8) * cant;
    }

    resumenTotal = Math.max(resumenTotal, 0);

    document.getElementById('totalMonto').innerText = resumenTotal.toFixed(2);
}

// Asignar la función calcularTotal al evento 'click' del botón 'Resumen'
const btnclick = document.getElementById('sumarBoton');
btnclick.addEventListener('click', calcularTotal);


document.addEventListener("DOMContentLoaded", function() {
    const form = document.querySelector("form");
    const inputNombre = document.getElementById("inputNombre");
    const inputApellido = document.getElementById("inputApellido");
    const inputEmail = document.getElementById("inputEmail");
    const cantidadN = document.getElementById("cantidadN");
    const categoryS = document.getElementById("categoryS");
    const totalMonto = document.getElementById("totalMonto");

    form.addEventListener("submit", function(event) {
        let formularioEsValido = true; 

        if (inputNombre.value.trim() === "") {
            inputNombre.classList.add("invalid-field");
            inputNombre.focus();
            formularioEsValido = false;
        } else {
            inputNombre.classList.remove("invalid-field");
        }

        if (inputApellido.value.trim() === "") {
            inputApellido.classList.add("invalid-field");
            if (formularioEsValido) {
                inputApellido.focus();
            }
            formularioEsValido = false;
        } else {
            inputApellido.classList.remove("invalid-field");
        }

        if (inputEmail.value.trim() === "") {
            inputEmail.classList.add("invalid-field");
            if (formularioEsValido) {
                inputEmail.focus();
            }
            formularioEsValido = false;
        } else {
            inputEmail.classList.remove("invalid-field");
        }

        if (cantidadN.value.trim() === "") {
            cantidadN.classList.add("invalid-field");
            if (formularioEsValido) {
                cantidadN.focus();
            }
            formularioEsValido = false;
        } else {
            cantidadN.classList.remove("invalid-field");
        }

        if (categoryS.value === "") {
            categoryS.classList.add("invalid-field");
            if (formularioEsValido) {
                categoryS.focus();
            }
            formularioEsValido = false;
        } else {
            categoryS.classList.remove("invalid-field");
        }

        if (!formularioEsValido) {
            event.preventDefault(); 
        }
    });
});


