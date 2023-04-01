const validarNombre = () => {
  const input = document.getElementById('txt_nombre').value.trim()
  const cantidadPalabras = input.split(' ')

  //si es menor a 2 palabras
  if (cantidadPalabras.length < 2) {
    document.getElementById('mensaje-nombre').innerHTML =
      'Ingrese su nombre y apellido'
    document.getElementById('contenedor-nombre').classList.add('mostrar-error')
  } else {
    document
      .getElementById('contenedor-nombre')
      .classList.remove('mostrar-error')
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
  } else {
    document
      .getElementById('contenedor-alias')
      .classList.remove('mostrar-error')
  }
}

const validarRut = () => {
  const rutRegex = /^0*(\d{1,3}(\.?\d{3})*)\-?([\dkK])$/ //expresión regular para validar rut
  const rut = document.getElementById('txt_rut').value.trim()

  //si es un rut vacío
  if (rut === '') {
    document.getElementById('mensaje-rut').innerHTML = 'Ingrese un rut'
    document.getElementById('contenedor-rut').classList.add('mostrar-error')

    //si es un rut inválido
  } else if (!rutRegex.test(rut)) {
    document.getElementById('mensaje-rut').innerHTML = 'Ingrese un rut válido'
    document.getElementById('contenedor-rut').classList.add('mostrar-error')
  } else {
    document.getElementById('contenedor-rut').classList.remove('mostrar-error')
  }
}

const validarEmail = () => {
  const email = document.getElementById('txt_email').value.trim()
  const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/ //expresión regular para validar email

  console.log('wolo', email)
  //si es un email vacío
  if (email === '') {
    document.getElementById('mensaje-email').innerHTML =
      'Ingrese un correo electrónico'
    document.getElementById('contenedor-email').classList.add('mostrar-error')

    //si es un email inválido
  } else if (!emailRegex.test(email)) {
    document.getElementById('mensaje-email').innerHTML =
      'Ingrese un correo electrónico válido'
    document.getElementById('contenedor-email').classList.add('mostrar-error')
  } else {
    document
      .getElementById('contenedor-email')
      .classList.remove('mostrar-error')
  }
}
