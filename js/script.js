const generarRegiones = () => {
    fetch("http://localhost/prueba/php/regiones_api.php")
        .then((response) => response.json())
        .then((response) => {
            const regiones = response;
            const selectRegiones = document.getElementById("region");

            // Agregar la opción predeterminada
            const optionPredeterminada = document.createElement("option");
            optionPredeterminada.value = "";
            optionPredeterminada.innerHTML = "Seleccione una región";
            selectRegiones.appendChild(optionPredeterminada);

            // Agregar las regiones
            regiones.forEach((region) => {
                const option = document.createElement("option");
                option.value = region[0];
                option.innerHTML = region[1];
                selectRegiones.appendChild(option);
            });
        })
        .catch((error) => {
            console.log("Error: " + error.message);
        });
};

const generarComunas = (idRegion) => {
    fetch("http://localhost/prueba/php/comunas_api.php/?id_region=" + idRegion)
        .then((response) => response.json())
        .then((response) => {
            const comunas = response;

            const selectComunas = document.getElementById("comuna");

            // Eliminar las opciones anteriores
            while (selectComunas.firstChild) {
                selectComunas.removeChild(selectComunas.firstChild);
            }

            // Agregar la opción predeterminada
            const optionPredeterminada = document.createElement("option");
            optionPredeterminada.value = "";
            optionPredeterminada.innerHTML = "Seleccione una comuna";
            selectComunas.appendChild(optionPredeterminada);

            // Agregar las comunas si la respuesta contiene datos
            if (comunas.length > 0) {
                comunas.forEach((comuna) => {
                    const option = document.createElement("option");
                    option.value = comuna[0];
                    option.innerHTML = comuna[1];
                    selectComunas.appendChild(option);
                });
            }
        });
};

const generarCandidatos = (idComuna) => {
    fetch(
        `http://localhost/prueba/php/candidatos_api.php/?id_comuna=${idComuna}`
    )
        .then((response) => response.json())
        .then((response) => {
            const candidatos = response;
            const selectCandidatos = document.getElementById("candidato");

            // Eliminar las opciones anteriores
            while (selectCandidatos.firstChild) {
                selectCandidatos.removeChild(selectCandidatos.firstChild);
            }

            // Agregar la opción predeterminada
            const optionPredeterminada = document.createElement("option");
            optionPredeterminada.value = "";
            optionPredeterminada.innerHTML = "Seleccione un candidato";
            selectCandidatos.appendChild(optionPredeterminada);

            // Agregar los candidatos
            candidatos.forEach((candidato) => {
                const option = document.createElement("option");
                option.value = candidato[0];
                option.innerHTML = candidato[1];
                selectCandidatos.appendChild(option);
            });
        });
};

// generar comunas
document.getElementById("region").addEventListener("change", (event) => {
    const idRegion = event.target.value;

    generarComunas(idRegion);
});

// generar candidatos
document.getElementById("comuna").addEventListener("change", (event) => {
    const idComuna = event.target.value;

    generarCandidatos(idComuna);
});
