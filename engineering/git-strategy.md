# Git Strategy

## Objetivo

Usar Git como herramienta de colaboración, trazabilidad y control de calidad.

## Branches principales

### main

Contiene versiones estables.

No se trabaja directamente sobre `main`.

### develop

Integra trabajo aprobado antes de release.

### feature/*

Ramas para nuevas funcionalidades.

### fix/*

Correcciones.

### chore/*

Tareas técnicas.

### docs/*

Cambios de documentación.

## Reglas

- No pushear directo a `main`.
- Todo cambio relevante pasa por Pull Request.
- Los commits deben ser pequeños y entendibles.
- El historial debe contar una historia técnica clara.
