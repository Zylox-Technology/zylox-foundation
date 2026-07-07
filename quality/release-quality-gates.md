# Release Quality Gates

Criterios mínimos para liberar con confianza:

- Tests críticos aprobados.
- Sin defectos críticos abiertos.
- Smoke test aprobado.
- API contract tests aprobados.
- Performance baseline aceptable.
- Security checks mínimos.
- Observabilidad disponible.
- Rollback definido.
- Documentación actualizada.
- Riesgos aceptados explícitamente.

Un Quality Gate bloquea cuando el riesgo de liberar es mayor que el valor de liberar.

## Release Candidate Gate

Una release candidate existe para promover, no para seguir rediseñando.

Antes de declarar una RC:

- el scope funcional está congelado;
- no se agregan features salvo blocker real;
- la regresión automatizada pasa;
- los riesgos tienen estado cerrado, aceptado para release controlada, blocker de release pública o blocker de V1;
- ambiente, esquema de datos y runtime smoke están alineados o el gap queda declarado como blocker;
- la promoción posterior se limita a versión, documentación, artefacto, validación, tag/release y comunicación.

## Environment Alignment Gate

No alcanza con que el código esté desplegado.

Un ambiente está alineado solo cuando hay evidencia de:

- versión de aplicación;
- migration head o versión equivalente de esquema;
- configuración efectiva del ambiente;
- smoke runtime contra el ambiente real;
- restricciones conocidas del perfil de infraestructura.
