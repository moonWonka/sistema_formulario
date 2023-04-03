const validarNombre = () => {
    const input = document.getElementById("txt_nombre").value.trim();
    const cantidadPalabras = input.split(" ");

    //si es menor a 2 palabras
    if (cantidadPalabras.length < 2) {
        document.getElementById("mensaje-nombre").innerHTML =
            "Ingrese su nombre y apellido";
        document
            .getElementById("contenedor-nombre")
            .classList.add("mostrar-error");
        return false;
    } else {
        document
            .getElementById("contenedor-nombre")
            .classList.remove("mostrar-error");
        return true;
    }
};

const validarAlias = () => {
    const input = document.getElementById("txt_alias").value.trim();

    //si es menor a 6 caracteres o no tiene letras o no tiene números
    const regex = /[a-zA-Z]/;
    const regexNum = /\d/;
    if (input.length < 6 || !regex.test(input) || !regexNum.test(input)) {
        document.getElementById("mensaje-alias").innerHTML =
            "El alias debe tener al menos 6 caracteres y contener letras y números";
        document
            .getElementById("contenedor-alias")
            .classList.add("mostrar-error");
        return false;
    } else {
        document
            .getElementById("contenedor-alias")
            .classList.remove("mostrar-error");
        return true;
    }
};

const rutDuplicado = () => {
    //eliminat espacio en blanco
    const rut = document.getElementById("txt_rut").value.trim();

    //eliminar puntos y guión
    const rutSinPuntos = rut.replace(/\./g, "");
    const rutSinGuion = rutSinPuntos.replace(/\-/g, "");
    const rutSinGuionNiPuntos = rutSinGuion.replace(/\s/g, "");

    //revisar rut en base de datos
    fetch("./php/votantes_api.php?rut=" + rutSinGuionNiPuntos)
        .then((response) => response.json())
        .then((response) => {
            //si el rut ya está registrado
            if (response.length > 0) {
                document.getElementById("mensaje-rut").innerHTML =
                    "El rut ya está registrado";
                document
                    .getElementById("contenedor-rut")
                    .classList.add("mostrar-error");
                return false;
                //si el rut no está registrado
            } else {
                document
                    .getElementById("contenedor-rut")
                    .classList.remove("mostrar-error");
                return true;
            }
        })
        .catch((error) => {
            console.log(error);
        });
};

const validarRut = () => {
    const rutRegex = /^0*(\d{1,3}(\.?\d{3})*)\-?([\dkK])$/; //expresión regular para validar rut
    const rut = document.getElementById("txt_rut").value.trim();

    if (rutDuplicado()) {
        document.getElementById("mensaje-rut").innerHTML =
            "El rut ya está registrado";
        document
            .getElementById("contenedor-rut")
            .classList.add("mostrar-error");
        return false;
    }

    //si es un rut vacío
    if (rut === "") {
        document.getElementById("mensaje-rut").innerHTML = "Ingrese un rut";
        document
            .getElementById("contenedor-rut")
            .classList.add("mostrar-error");
        return false;

        //si es un rut inválido
    } else if (!rutRegex.test(rut)) {
        document.getElementById("mensaje-rut").innerHTML =
            "Ingrese un rut válido";
        document
            .getElementById("contenedor-rut")
            .classList.add("mostrar-error");
        return false;
    } else {
        document
            .getElementById("contenedor-rut")
            .classList.remove("mostrar-error");
        return true;
    }
};

const validarEmail = () => {
    const email = document.getElementById("txt_email").value.trim();
    const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/; //expresión regular para validar email

    //si es un email vacío
    if (email === "") {
        document.getElementById("mensaje-email").innerHTML =
            "Ingrese un correo electrónico";
        document
            .getElementById("contenedor-email")
            .classList.add("mostrar-error");
        return false;

        //si es un email inválido
    } else if (!emailRegex.test(email)) {
        document.getElementById("mensaje-email").innerHTML =
            "Ingrese un correo electrónico válido";
        document
            .getElementById("contenedor-email")
            .classList.add("mostrar-error");
        return false;
    } else {
        document
            .getElementById("contenedor-email")
            .classList.remove("mostrar-error");
        return true;
    }
};

const validarRegion = () => {
    const region = document.getElementById("region").value;

    //si es una región vacía
    if (region === "") {
        document.getElementById("mensaje-region").innerHTML =
            "Seleccione una región";
        document
            .getElementById("contenedor-region")
            .classList.add("mostrar-error");
        return false;
    } else {
        document
            .getElementById("contenedor-region")
            .classList.remove("mostrar-error");
        return true;
    }
};

const validarComuna = () => {
    const comuna = document.getElementById("comuna").value;

    //si es una comuna vacía
    if (comuna === "") {
        document.getElementById("mensaje-comuna").innerHTML =
            "Seleccione una comuna";
        document
            .getElementById("contenedor-comuna")
            .classList.add("mostrar-error");
        return false;
    } else {
        document
            .getElementById("contenedor-comuna")
            .classList.remove("mostrar-error");
        return true;
    }
};

const validarCandidato = () => {
    const candidato = document.getElementById("candidato").value;

    //si es un candidato vacío
    if (candidato === "") {
        document.getElementById("mensaje-candidato").innerHTML =
            "Seleccione un candidato";
        document
            .getElementById("contenedor-candidato")
            .classList.add("mostrar-error");
        return false;
    } else {
        document
            .getElementById("contenedor-candidato")
            .classList.remove("mostrar-error");
        return true;
    }
};

const validarCheckbox = () => {
    //Debe elegir al menos dos opciones
    const checkbox = document.querySelectorAll("input[type=checkbox]:checked");
    if (checkbox.length < 2) {
        document.getElementById("mensaje-checkbox").innerHTML =
            "Debe elegir al menos dos opciones";
        document
            .getElementById("contenedor-checkbox")
            .classList.add("mostrar-error");
        return false;
    } else {
        document
            .getElementById("contenedor-checkbox")
            .classList.remove("mostrar-error");
        return true;
    }
};

document
    .getElementById("formulario_voto")
    .addEventListener("submit", function (event) {
        event.preventDefault();

        //validar todos los campos

        if (
            validarNombre() &&
            validarAlias() &&
            validarRut() &&
            validarEmail() &&
            validarRegion() &&
            validarComuna() &&
            validarCandidato() &&
            validarCheckbox()
        ) {
            //si todos los campos son válidos
            fetch("./php/recibir.php", {
                method: "POST",
                body: new FormData(document.getElementById("formulario_voto")),
            })
                .then((response) => response.json())
                .then((data) => {
                    console.log(data);
                });
        } else {
            //si hay algún campo inválido
            console.log("Hay campos inválidos");
        }
    });
