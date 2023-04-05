const validarNombre = () => {
  const input = document.getElementById('txt_nombre').value.trim()
  const cantidadPalabras = input.split(' ')

  //si es menor a 2 palabras
  if (cantidadPalabras.length < 2) {
    document.getElementById('mensaje-nombre').innerHTML =
      'Ingrese su nombre y apellido'
    document.getElementById('contenedor-nombre').classList.add('mostrar-error')
    return false
  } else {
    document
      .getElementById('contenedor-nombre')
      .classList.remove('mostrar-error')
    return true
  }
}

const validarAlias = () => {
  const input = document.getElementById('txt_alias').value.trim()

  //si es menor a 6 caracteres o no tiene letras o no tiene números
  const regex = /[a-zA-Z]/
  const regexNum = /\d/
  if (input.length < 6 || !regex.test(input) || !regexNum.test(input)) {
    document.getElementById('mensaje-alias').innerHTML =
      'El alias debe tener al menos 6 caracteres y contener letras y números'
    document.getElementById('contenedor-alias').classList.add('mostrar-error')
    return false
  } else {
    document
      .getElementById('contenedor-alias')
      .classList.remove('mostrar-error')
    return true
  }
}

function calcularDigitoVerificador(rut) {
  // varible rut sin puntos ni guión ni digito verificador
  rut = rut.split('').reverse() // Revertir el Rut

  let suma = 0
  let factor = 2
  for (let i = 0; i < rut.length; i++) {
    suma += parseInt(rut[i]) * factor
    factor = factor === 7 ? 2 : factor + 1
  }

  const resto = suma % 11
  let digitoVerificador

  if (resto === 1) {
    digitoVerificador = 'K'
  } else if (resto === 0) {
    digitoVerificador = '0'
  } else {
    digitoVerificador = (11 - resto).toString()
  }

  return digitoVerificador
}

const rutDuplicado = async (rut) => {
  // rut sin espacio ni puntos ni guión
  try {
    //revisar rut en base de datos
    const response = await fetch('./php/votantes_api.php?rut=' + rut)
    const data = await response.json()

    //si el rut ya está registrado
    if (data.nombre.length > 0) {
      return true
    } else {
      return false
    }
  } catch (error) {
    console.error('Error:', error)
    return false
  }
}

const validarRut = async () => {
  const rutRegex = /^0*(\d{1,3}(\.?\d{3})*)\-?([\dkK])$/ //expresión regular para validar rut
  const rut = document.getElementById('txt_rut').value.trim()

  // si el rut está vacío
  if (rut === '') {
    document.getElementById('mensaje-rut').innerHTML = 'Ingrese un rut'
    document.getElementById('contenedor-rut').classList.add('mostrar-error')
    return false
  }

  // si el rut no tiene un formato válido
  if (!rutRegex.test(rut)) {
    document.getElementById('mensaje-rut').innerHTML = 'Ingrese un rut válido'
    document.getElementById('contenedor-rut').classList.add('mostrar-error')
    return false
  }

  // rut sin puntos ni guión
  const rutSinPuntos = rut.replace(/\./g, '')
  const rutSinGuion = rutSinPuntos.replace(/\-/g, '')
  const rutSinGuionNiPuntos = rutSinGuion.replace(/\s/g, '')

  // si el rut es mayor a 9 caracteres
  if (rutSinGuionNiPuntos.length > 9) {
    document.getElementById('mensaje-rut').innerHTML =
      'Ingrese un rut válido (muy largo)'
    return false
  }

  // sacar dígito verificador
  const digito = rutSinGuionNiPuntos.slice(-1).toUpperCase()
  const rutSinDigito = rutSinGuionNiPuntos.slice(0, -1)

  // calcular y comparar dígito verificador
  if (calcularDigitoVerificador(rutSinDigito) !== digito) {
    document.getElementById('mensaje-rut').innerHTML =
      'Ingrese un rut válido (DV)'
    document.getElementById('contenedor-rut').classList.add('mostrar-error')
    return false
  }

  // si el rut ya está registrado
  if (await rutDuplicado(rutSinGuionNiPuntos)) {
    document.getElementById('mensaje-rut').innerHTML =
      'El rut ya está registrado'
    document.getElementById('contenedor-rut').classList.add('mostrar-error')
    return false
  }

  // si todas las validaciones pasaron
  document.getElementById('contenedor-rut').classList.remove('mostrar-error')
  return true
}

const validarEmail = () => {
  const email = document.getElementById('txt_email').value.trim()
  const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/ //expresión regular para validar email

  //si es un email vacío
  if (email === '') {
    document.getElementById('mensaje-email').innerHTML =
      'Ingrese un correo electrónico'
    document.getElementById('contenedor-email').classList.add('mostrar-error')
    return false

    //si es un email inválido
  } else if (!emailRegex.test(email)) {
    document.getElementById('mensaje-email').innerHTML =
      'Ingrese un correo electrónico válido'
    document.getElementById('contenedor-email').classList.add('mostrar-error')
    return false
  } else {
    document
      .getElementById('contenedor-email')
      .classList.remove('mostrar-error')
    return true
  }
}

const validarRegion = () => {
  const region = document.getElementById('region').value

  //si es una región vacía
  if (region === '') {
    document.getElementById('mensaje-region').innerHTML =
      'Seleccione una región'
    document.getElementById('contenedor-region').classList.add('mostrar-error')
    return false
  } else {
    document
      .getElementById('contenedor-region')
      .classList.remove('mostrar-error')
    return true
  }
}

const validarComuna = () => {
  const comuna = document.getElementById('comuna').value

  //si es una comuna vacía
  if (comuna === '') {
    document.getElementById('mensaje-comuna').innerHTML =
      'Seleccione una comuna'
    document.getElementById('contenedor-comuna').classList.add('mostrar-error')
    return false
  } else {
    document
      .getElementById('contenedor-comuna')
      .classList.remove('mostrar-error')
    return true
  }
}

const validarCandidato = () => {
  const candidato = document.getElementById('candidato').value

  //si es un candidato vacío
  if (candidato === '') {
    document.getElementById('mensaje-candidato').innerHTML =
      'Seleccione un candidato'
    document
      .getElementById('contenedor-candidato')
      .classList.add('mostrar-error')
    return false
  } else {
    document
      .getElementById('contenedor-candidato')
      .classList.remove('mostrar-error')
    return true
  }
}

const validarCheckbox = () => {
  //Debe elegir al menos dos opciones
  const checkbox = document.querySelectorAll('input[type=checkbox]:checked')
  if (checkbox.length < 2) {
    document.getElementById('mensaje-checkbox').innerHTML =
      'Debe elegir al menos dos opciones'
    document
      .getElementById('contenedor-checkbox')
      .classList.add('mostrar-error')
    return false
  } else {
    document
      .getElementById('contenedor-checkbox')
      .classList.remove('mostrar-error')
    return true
  }
}

document
  .getElementById('formulario_voto')
  .addEventListener('submit', async function (event) {
    event.preventDefault()

    //validar todos los campos

    if (
      validarNombre() &&
      validarAlias() &&
      (await validarRut()) &&
      validarEmail() &&
      validarRegion() &&
      validarComuna() &&
      validarCandidato() &&
      validarCheckbox()
    ) {
      //si todos los campos son válidos
      fetch('./php/recibir.php', {
        method: 'POST',
        body: new FormData(document.getElementById('formulario_voto')),
      })
        .then((response) => response.json())
        .then((data) => {
          const mensaje = document.getElementById('mensaje')
          mensaje.innerHTML = data.mensaje
        })
    } else {
      //si hay algún campo inválido
      document.getElementById('mensaje').innerHTML = 'Hay campos inválidos'
    }
  })

// function VL_formulario() {
//   if ($('#nombre').val() == '') {
//     alert('El campo no puede estar vacio')
//     $('#nombre').focus()
//     return false
//   }
// }
