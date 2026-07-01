# Dependency Management

## Principio

Cada dependencia es una decisión de arquitectura.

## Antes de agregar una dependencia

Preguntar:

- Qué problema resuelve.
- Si el problema justifica la dependencia.
- Si está mantenida.
- Si tiene riesgos de seguridad.
- Si puede reemplazarse.
- Si aumenta demasiado la complejidad.

## Reglas

- Evitar dependencias para problemas triviales.
- Encapsular dependencias externas críticas.
- No permitir que librerías externas contaminen el dominio.
