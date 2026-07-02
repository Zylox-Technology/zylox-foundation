# Approval Policy

## Objetivo

Definir quién puede aprobar cambios y bajo qué condiciones.

## Niveles de aprobación

### Low risk

Cambios de documentación, typos, mejoras menores.

Requiere:

- 1 approval opcional o revisión simple.

### Medium risk

Cambios funcionales normales.

Requiere:

- 1 approval obligatorio;
- checks básicos aprobados.

### High risk

Cambios de arquitectura, seguridad, datos, releases, pagos, permisos, autenticación, infraestructura o IA con herramientas.

Requiere:

- 2 approvals;
- Technical Owner;
- Quality Owner si impacta testing/release;
- ADR/RFC si corresponde.

### Critical risk

Cambios destructivos, migraciones críticas, producción, secretos, datos sensibles o acciones irreversibles.

Requiere:

- aprobación explícita del owner;
- rollback plan;
- quality gates;
- ventana de ejecución si aplica.

## Regla

El nivel de aprobación debe ser proporcional al riesgo del cambio.
