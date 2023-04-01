const formulario = document.getElementById('formulario_voto')

formulario.addEventListener('submit', (event) => {
  event.preventDefault() // Evita que el formulario se envíe por defecto

  // Recopilar los datos del formulario
  // const nombre = document.getElementById('txt_nombre').value
  // const alias = document.getElementById('txt_alias').value
  // const rut = document.getElementById('txt_rut').value
  // const email = document.getElementById('txt_email').value
  // const region = document.getElementById('region').value
  // const comuna = document.getElementById('comuna').value

  // const candidato = document.getElementById('candidato').value

  //validaciones

  //Nombre y Apellido: No debe quedar en Blanco.

  const data = {
    nombre,
    alias,
    rut,
    email,
    region,
    comuna,
  }

  const url = 'http://localhost/prueba/php/guardar.php'

  // Enviar los datos al servidor

  //POST AXIOS
  axios
    .post(url, data, {
      headers: {
        'Content-Type': 'application/json',
        'Access-Control-Allow-Origin':
          'http://localhost/prueba/php/guardar.php',
        'Access-Control-Allow-Methods': 'GET, POST, OPTIONS',
        'Access-Control-Allow-Headers': 'Content-Type',
      },
    })
    .then((response) => {
      console.log(response.data)
    })
    .catch((error) => {
      console.log('Error: ' + error.message)
    })

  //POST AJAX
  // $.ajax({
  //   url: url,
  //   type: 'POST',
  //   data: JSON.stringify(data),
  //   contentType: 'application/json',
  //   headers: {
  //     'Access-Control-Allow-Origin': 'http://localhost/prueba/php/guardar.php', // Dominio del cliente que hace la solicitud
  //     'Access-Control-Allow-Methods': 'GET, POST, OPTIONS', // Métodos HTTP permitidos
  //     'Access-Control-Allow-Headers': 'Content-Type', // Encabezados personalizados permitidos
  //   },
  //   success: function (data) {
  //     console.log(data)
  //   },
  //   error: function (jqXHR, textStatus, errorThrown) {
  //     console.log('Error: ' + textStatus + ' ' + errorThrown)
  //   },
  // })

  // //POST FETCH
  // fetch(url, {
  //   method: 'POST',
  //   body: JSON.stringify(data),
  //   headers: {
  //     'Content-Type': 'application/json',
  //     'Access-Control-Allow-Origin': url, // Dominio del cliente que hace la solicitud
  //     'Access-Control-Allow-Methods': 'GET, POST, OPTIONS', // Métodos HTTP permitidos
  //     'Access-Control-Allow-Headers': 'Content-Type', // Encabezados personalizados permitidos
  //   },
  // })
  //   .then((response) => response.json())
  //   .then((data) => console.log(data))
  //   .catch((error) => console.error(error))
})
