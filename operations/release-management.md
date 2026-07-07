# Release Management

## Objetivo

Controlar cómo se preparan, aprueban, comunican y liberan versiones.

## Una release debe incluir

- versión;
- objetivo;
- alcance;
- fuera de alcance;
- cambios incluidos;
- riesgos;
- quality gates;
- estado de testing;
- plan de deploy;
- plan de rollback;
- owner;
- fecha;
- release notes.

## Checklist mínimo

- Changelog actualizado.
- VERSION actualizado.
- Tests críticos aprobados.
- Quality gates aprobados o excepción registrada.
- Riesgos aceptados.
- Rollback definido.
- Comunicación preparada.
- Tag creado.
- Release publicada si aplica.

## Regla

Una release no es solo un merge.

Es una decisión operativa.

## Artifact provenance

La versión fuente debe ser única y auditable. Los artefactos generados deben poder vincularse a:

- `VERSION` o equivalente;
- commit/branch;
- configuración de build;
- ambiente objetivo;
- resultado de validación.

Los binarios generados no tienen que versionarse en Git si pueden reproducirse o distribuirse con evidencia externa controlada.
