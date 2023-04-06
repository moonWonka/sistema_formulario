# Documentación del Sistema de Votación (Prueba Técnica)

## Índice

1. Introducción
2. [Documentación de Funciones - Base de Datos Regiones](#Tabla-Regiones)
3. [Documentación de Funciones - Base de Datos Candidatos](#Tabla-Candidatos)
4. [Documentación de Funciones - Base de Datos Comunas](#Tabla-Comunas)
5. [Documentación de Funciones - Base de Datos Medios](#Tabla-Medios)
6. [Documentación de Funciones - Base de Datos Votantes](#Tabla-Votantes)
7. [Documentación de Funciones - Funciones de Validación](#funciones-de-validación-js)
8. [Dcomuentacion del Script en JavaScript](#descripción-del-script-en-js)

## Introducción

Este documento es una guía para la documentación del sistema de votación de la Prueba Técnica. Aquí se incluyen las funciones y operaciones disponibles en la base de datos "Regiones".

## Tabla Regiones

Este archivo contiene las funciones para realizar operaciones CRUD en la tabla "regiones" de la base de datos.

### Funciones Disponibles

### getRegiones()

Obtiene todas las regiones desde la tabla "regiones" de la base de datos.

**Parámetros:**

Ninguno.

**Retorna:**

Un array con todas las regiones.

### mostrarIdRegion($nombre)

Obtiene el ID de una región en base a su nombre.

**Parámetros:**

- `$nombre` (string): El nombre de la región a buscar.

**Retorna:**

El ID de la región.

### getRegion($id)

Obtiene una región desde la tabla "regiones" en base a su ID.

**Parámetros:**

- `$id` (int): El ID de la región a buscar.

**Retorna:**

Un array con los datos de la región.

### insertarRegion($region)

Inserta una nueva región en la tabla "regiones".

**Parámetros:**

- `$region` (string): El nombre de la nueva región a insertar.

**Retorna:**

Nada.

### updateRegion($id, $nombre)

Actualiza el nombre de una región en la tabla "regiones".

**Parámetros:**

- `$id` (int): El ID de la región a actualizar.
- `$nombre` (string): El nuevo nombre de la región.

**Retorna:**

Nada.

### deleteRegion($id)

Elimina una región de la tabla "regiones".

**Parámetros:**

- `$id` (int): El ID de la región a eliminar.

**Retorna:**

Nada.

## Tabla Candidatos

Este archivo contiene las funciones para realizar operaciones CRUD en la tabla "candidatos" de la base de datos.

## Funciones Disponibles

### getCandidatos($idComuna)

Obtiene todos los candidatos de una comuna especificada.

Parámetros:

- `$idComuna` (int): El ID de la comuna de la que se desean obtener los candidatos.

Retorna:

Un array con todos los candidatos de la comuna especificada.

### mostrarIdRegionCandidato($id_candidato)

Obtiene el ID de la región a la que pertenece un candidato.

Parámetros:

- `$id_candidato` (int): El ID del candidato.

Retorna:

El ID de la región a la que pertenece el candidato.

### mostrarIdComunaCandidato($id_candidato)

Obtiene el ID de la comuna a la que pertenece un candidato.

Parámetros:

- `$id_candidato` (int): El ID del candidato.

Retorna:

El ID de la comuna a la que pertenece el candidato.

### getCandidato($id)

Obtiene un candidato desde la tabla "candidatos" en base a su ID.

Parámetros:

- `$id` (int): El ID del candidato a buscar.

Retorna:

Un array con los datos del candidato.

### insertarCandidato($nombre, $partido, $id_region, $id_comuna)

Inserta un nuevo candidato en la tabla "candidatos".

Parámetros:

- `$nombre` (string): El nombre del nuevo candidato a insertar.
- `$partido` (string): El partido al que pertenece el candidato.
- `$id_region` (int): El ID de la región a la que pertenece el candidato.
- `$id_comuna` (int): El ID de la comuna a la que pertenece el candidato.

Retorna:

Nada.

### updateCandidato($id, $nombre, $partido, $id_region, $id_comuna)

Actualiza los datos de un candidato en la tabla "candidatos".

Parámetros:

- `$id` (int): El ID del candidato a actualizar.
- `$nombre` (string): El nuevo nombre del candidato.
- `$partido` (string): El nuevo partido del candidato.
- `$id_region` (int): El nuevo ID de la región del candidato.
- `$id_comuna` (int): El nuevo ID de la comuna del candidato.

Retorna:

Nada.

### deleteCandidato($id)

Elimina un candidato de la tabla "candidatos".

Parámetros:

- `$id` (int): El ID del candidato a eliminar.

Retorna:

Nada.

## Tabla Comunas

Este archivo contiene las funciones para realizar operaciones CRUD en la tabla "comunas" de la base de datos.

### Funciones Disponibles

### getComunas(\$idRegion)

Obtiene todas las comunas que pertenecen a una región específica desde la tabla "comunas" de la base de datos.

**Parámetros:**

- \$idRegion (integer): El ID de la región de la cual se quieren obtener las comunas.

**Retorna:**

Un array con todas las comunas de la región especificada.

### getComuna(\$id)

Obtiene los detalles de una comuna específica por su ID desde la tabla "comunas" de la base de datos.

**Parámetros:**

- \$id (integer): El ID de la comuna que se desea obtener.

**Retorna:**

Un array asociativo con los detalles de la comuna.

### mostrarIdComuna(\$nombre)

Obtiene el ID de una comuna por su nombre desde la tabla "comunas" de la base de datos.

**Parámetros:**

- \$nombre (string): El nombre de la comuna de la cual se quiere obtener el ID.

**Retorna:**

El ID de la comuna buscada.

### insertarComuna(\$nombre, \$id_region)

Inserta una nueva comuna en la tabla "comunas" de la base de datos.

**Parámetros:**

- \$nombre (string): El nombre de la comuna que se desea insertar.
- \$id_region (integer): El ID de la región a la cual se debe asociar la comuna.

**Retorna:**

Nada.

### updateComuna(\$id, \$nombre, \$id_region)

Actualiza los datos de una comuna específica en la tabla "comunas" de la base de datos.

**Parámetros:**

- \$id (integer): El ID de la comuna que se desea actualizar.
- \$nombre (string): El nuevo nombre de la comuna.
- \$id_region (integer): El nuevo ID de la región a la cual se debe asociar la comuna.

**Retorna:**

Nada.

### deleteComuna(\$id)

Elimina una comuna específica de la tabla "comunas" de la base de datos.

**Parámetros:**

- \$id (integer): El ID de la comuna que se desea eliminar.

**Retorna:**

Nada.

### mostrarComunasPorRegion(\$nombre)

Obtiene todas las comunas de una región específica por su nombre desde la tabla "comunas" de la base de datos.

**Parámetros:**

- \$nombre (string): El nombre de la región de la cual se quieren obtener las comunas.

**Retorna:**

Un array con todas las comunas de la región especificada.

## Tabla Medios

Este archivo contiene las funciones para realizar operaciones CRUD en la tabla "medios" de la base de datos.

### Funciones Disponibles

### getMedios()

Obtiene todos los medios desde la tabla "medios" de la base de datos.

**Parámetros:**

Ninguno.

**Retorna:**

Un array con todos los medios.

### mostrarIdMedio($nombre)

Obtiene el ID de un medio en base a su nombre.

**Parámetros:**

- `$nombre`: Nombre del medio a buscar.

**Retorna:**

El ID del medio encontrado.

### getMedio($id)

Obtiene un registro de la tabla "medios" en la base de datos en base a su ID.

**Parámetros:**

- `$id`: ID del medio a obtener.

**Retorna:**

Un array asociativo con los datos del medio encontrado.

### insertarMedio($medio)

Inserta un nuevo registro en la tabla "medios" con el nombre del medio proporcionado.

**Parámetros:**

- `$medio`: Nombre del medio a insertar.

**Retorna:**

Nada.

### updateMedio($id, $nombre)

Actualiza el nombre de un medio en la tabla "medios" en base a su ID.

**Parámetros:**

- `$id`: ID del medio a actualizar.
- `$nombre`: Nuevo nombre del medio.

**Retorna:**

Nada.

### deleteMedio($id)

Elimina un medio de la tabla "medios" en base a su ID.

**Parámetros:**

- `$id`: ID del medio a eliminar.

**Retorna:**

Nada.

## Tabla Votantes

Este archivo contiene las funciones para realizar operaciones CRUD en la tabla "votantes" de la base de datos.

### Funciones Disponibles

### getVotantes()

Obtiene todos los votantes desde la tabla "votantes" de la base de datos.

**Parámetros:**

Ninguno.

**Retorna:**

Un array con todos los votantes.

### getIdVotante($rut)

Obtiene el ID de un votante en base a su RUT.

**Parámetros:**

- `$rut`: RUT del votante a buscar.

**Retorna:**

El ID del votante encontrado.

### getNombreVotante($rut)

Obtiene el nombre de un votante en base a su RUT.

**Parámetros:**

- `$rut`: RUT del votante a buscar.

**Retorna:**

El nombre del votante encontrado, o una cadena vacía si no se encuentra.

### insertarVotante($nombre, $alias, $rut, $email, $id_region, $id_comuna)

Inserta un nuevo registro en la tabla "votantes" con los datos proporcionados.

**Parámetros:**

- `$nombre`: Nombre del votante a insertar.
- `$alias`: Alias del votante a insertar.
- `$rut`: RUT del votante a insertar.
- `$email`: Email del votante a insertar.
- `$id_region`: ID de la región del votante a insertar.
- `$id_comuna`: ID de la comuna del votante a insertar.

**Retorna:**

El ID del votante insertado.

### updateVotante($id, $nombre, $alias, $rut, $email, $id_region, $id_comuna)

Actualiza los datos de un votante en la tabla "votantes" en base a su ID.

**Parámetros:**

- `$id`: ID del votante a actualizar.
- `$nombre`: Nuevo nombre del votante.
- `$alias`: Nuevo alias del votante.
- `$rut`: Nuevo RUT del votante.
- `$email`: Nuevo email del votante.
- `$id_region`: Nuevo ID de la región del votante.
- `$id_comuna`: Nuevo ID de la comuna del votante.

**Retorna:**

Nada.

### deleteVotante($id)

Elimina un votante de la tabla "votantes" en base a su ID.

**Parámetros:**

- `$id`: ID del votante a eliminar.

**Retorna:**

Nada.

# Funciones de Validación JS

## `validarNombre()`

Valida si el campo de nombre tiene al menos dos palabras ingresadas.

### Parámetros

- Ninguno

### Retorno

- `true` si el campo de nombre tiene al menos dos palabras.
- `false` si el campo de nombre no tiene al menos dos palabras.

## `validarAlias()`

Valida si el campo de alias cumple con los siguientes requisitos:

- Tiene al menos 6 caracteres.
- Contiene letras y números.

### Parámetros

- Ninguno

### Retorno

- `true` si el campo de alias cumple con los requisitos.
- `false` si el campo de alias no cumple con los requisitos.

## `calcularDigitoVerificador(rut)`

Calcula el dígito verificador de un RUT (Rol Único Tributario) chileno.

### Parámetros

- `rut`: String que representa el RUT a calcular el dígito verificador.

### Retorno

- Un string que representa el dígito verificador del RUT.

## `rutDuplicado(rut)`

Verifica si un RUT (Rol Único Tributario) chileno ya está registrado en la base de datos.

### Parámetros

- `rut`: String que representa el RUT a verificar en la base de datos.

### Retorno

- `true` si el RUT ya está registrado.
- `false` si el RUT no está registrado o hay un error en la consulta a la base de datos.

## `validarRut()`

Valida si el campo de RUT cumple con los siguientes requisitos:

- Tiene un formato válido de RUT chileno.
- No está vacío.
- Tiene un dígito verificador correcto.
- No está registrado en la base de datos.

### Parámetros

- Ninguno

### Retorno

- `true` si el campo de RUT cumple con los requisitos.
- `false` si el campo de RUT no cumple con los requisitos.

## `validarEmail()`

Valida si el campo de email tiene un formato válido de dirección de correo electrónico.

### Parámetros

- Ninguno

### Retorno

- `true` si el campo de email tiene un formato válido.
- `false` si el campo de email no tiene un formato válido.

## `validarRegion()`

Valida si se ha seleccionado una región en el formulario.

### Parámetros

- Ninguno

### Retorno

- `true` si se ha seleccionado una región.
- `false` si no se ha seleccionado una región.

## `validarComuna()`

Valida si se ha seleccionado una comuna en el formulario.

### Parámetros

- Ninguno

### Retorno

- `true` si se ha seleccionado una comuna.
- `false` si no se ha seleccionado una comuna.

## `validarCandidato()`

Valida si se ha seleccionado un candidato en el formulario.

### Parámetros

- Ninguno

### Retorno

- `true` si se ha seleccionado un candidato.
- `false` si no se ha seleccionado un candidato.

## `validarCheckbox()`

Valida si se han seleccionado al menos dos opciones en los checkboxes del formulario.

### Parámetros

- Ninguno

### Retorno

- `true` si se han seleccionado al menos dos opciones.
- `false` si no se han seleccionado al menos dos opciones.

# Descripción del Script en JS

El script en JavaScript proporcionado realiza operaciones CRUD en una aplicación web que utiliza una base de datos para gestionar regiones, comunas y candidatos. Las funciones en el script se describen de la siguiente manera:

#### `generarRegiones()`

Esta función realiza una solicitud fetch a una API en "http://localhost/prueba/php/regiones_api.php" para obtener todas las regiones desde la tabla "regiones" en la base de datos. Luego, crea opciones de selección en un elemento de formulario HTML con id "region", agregando las regiones obtenidas como opciones en el elemento select.

#### `generarComunas(idRegion)`

Esta función toma un parámetro idRegion y realiza una solicitud fetch a una API en "http://localhost/prueba/php/comunas_api.php/?id_region=" + idRegion para obtener todas las comunas asociadas a la región seleccionada. Luego, elimina las opciones anteriores en el elemento select con id "comuna" y agrega las comunas obtenidas como opciones en el elemento select.

#### `generarCandidatos(idComuna)`

Esta función toma un parámetro idComuna y realiza una solicitud fetch a una API en "http://localhost/prueba/php/candidatos_api.php/?id_comuna=" + idComuna para obtener todos los candidatos asociados a la comuna seleccionada. Luego, elimina las opciones anteriores en el elemento select con id "candidato" y agrega los candidatos obtenidos como opciones en el elemento select.

#### Event Listeners

El script también incluye dos event listeners que escuchan los cambios en los elementos select con id "region" y "comuna". Cuando se selecciona una región, se llama a la función generarComunas(idRegion) con el id de la región seleccionada para actualizar las comunas en el segundo select. Cuando se selecciona una comuna, se llama a la función generarCandidatos(idComuna) con el id de la comuna seleccionada para actualizar los candidatos en el tercer select.
