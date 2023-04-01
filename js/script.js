const formulario = document.getElementById('formulario_voto')

formulario.addEventListener('submit', (event) => {
  event.preventDefault() // Evita que el formulario se envíe por defecto

  // Recopilar los datos del formulario
  const nombre = document.getElementById('txt_nombre').value
  const alias = document.getElementById('txt_alias').value
  const rut = document.getElementById('txt_rut').value
  const email = document.getElementById('txt_email').value
  const region = document.getElementById('region').value
  const comuna = document.getElementById('comuna').value
  //   const candidato = document.getElementById('candidato').value

  console.log(nombre, alias, rut, email, region, comuna, candidato)

  // Enviar los datos al servidor
  fetch('/php/guardar.php', {
    method: 'POST',
    body: JSON.stringify({
      nombre,
      alias,
      rut,
      email,
      region,
      comuna,
      //   candidato,
    }),
  })
    .then((response) => response.json())
    .then((data) => {
      // Si el servidor responde con un error
      if (data.error) {
        alert(data.error)
      }

      // Si el servidor responde con éxito
      if (data.success) {
        alert(data.success)
      }
    })
})
