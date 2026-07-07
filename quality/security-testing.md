# Security Testing

Detectar riesgos de seguridad antes de producción.

## Validaciones base

- Autenticación.
- Autorización.
- Validación de entradas.
- Manejo de errores.
- Exposición de datos sensibles.
- Inyección.
- Rate limiting.
- Sesiones.
- Tokens.
- Permisos.
- Dependencias vulnerables.

Referencias: OWASP Top 10 y OWASP API Security Top 10.

## Regression de inyección con integridad

Un test de inyección no debe limitarse a confirmar que un endpoint devuelve `422` o `400`.

Cuando el riesgo lo justifique, la regresión debe verificar:

- que el payload no se ejecuta;
- que no se corrompe persistencia;
- que no se rompe aislamiento/ownership;
- que counts e invariantes quedan intactos;
- que el payload se almacena/renderiza como texto si corresponde;
- que no se filtran internals, stack traces ni secretos;
- que parse/interpretación no persiste datos sin confirmación humana.
