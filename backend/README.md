# Documentación de la API Backend


## Endpoints Públicos

Estos endpoints no requieren autenticación:

- `POST /login` — Autenticación de usuario, retorna un JWT.

## Endpoints Privados

Estos endpoints requieren autenticación con JWT

- `GET /patient/register` — Mensaje de bienvenida o registro de pacientes.
- `GET /appointment` — Listar todas las citas.
- `GET /appointment/{id}` — Obtener cita por ID.
- `POST /appointment` — Crear nueva cita.
- `DELETE /appointment/{id}` — Eliminar cita.
- `GET /care` — Listar todos los cuidados.
- `GET /care/{id}` — Obtener cuidado por ID.
- `POST /care` — Crear nuevo cuidado.
- `DELETE /care/{id}` — Eliminar cuidado.
- `GET /invoice` — Listar todas las facturas.
- `GET /invoice/{id}` — Obtener factura por ID.
- `POST /invoice` — Crear nueva factura.
- `DELETE /invoice/{id}` — Eliminar factura.
- `GET /medication` — Listar todos los medicamentos.
- `GET /medication/{id}` — Obtener medicamento por ID.
- `POST /medication` — Crear nuevo medicamento.
- `DELETE /medication/{id}` — Eliminar medicamento.
- `GET /patient` — Listar todos los pacientes.
- `GET /patient/{id}` — Obtener paciente por ID.
- `POST /patient` — Crear nuevo paciente.
- `DELETE /patient/{id}` — Eliminar paciente.

## Usuarios y Contraseñas de Prueba

Puedes usar los siguientes usuarios para probar los endpoints privados (autenticación vía `/login`):

| Usuario   | Contraseña   |
|-----------|--------------|
| admin     | adminpass    |
| user1     | user1pass    |

Estos usuarios están definidos en el script de inicialización de la base de datos (`init.sql`).

## Notas

- Para acceder a los endpoints privados, primero obtén un JWT usando `/login` y luego envíalo en el header `Authorization: Bearer <token>`.
# Semana2-CDY2203

## Resumen de resultados
200 OK para todos los endpoints.