# Documentación del Sistema de Votación (Prueba Técnica)

## Índice

1. Introducción
2. Documentación de Funciones - Base de Datos Regiones
3. Documentación de Funciones - Base de Datos Candidatos

## Introducción

Este documento es una guía para la documentación del sistema de votación de la Prueba Técnica. Aquí se incluyen las funciones y operaciones disponibles en la base de datos "Regiones".

## Documentación de Funciones - Base de Datos Regiones

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

# Documentación de Funciones - Base de Datos Candidatos

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
