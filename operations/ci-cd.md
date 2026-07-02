# CI/CD

## Objetivo

Automatizar build, validación, testing, análisis y despliegue cuando corresponda.

## Pipeline mínimo

- checkout;
- install dependencies;
- lint/format check;
- unit tests;
- integration/API tests si aplica;
- build;
- security/dependency checks si aplica;
- artifact generation;
- publish report.

## Pipeline para release

Además del mínimo:

- regression suite;
- smoke tests;
- quality gates;
- version validation;
- release notes;
- deploy;
- post-deploy checks;
- rollback option.

## Reglas

- Un pipeline debe fallar con mensajes accionables.
- No usar secretos hardcodeados.
- No mezclar ambientes sin control.
- No saltear quality gates sin registrar excepción.
- Mantener tiempos razonables de feedback.

## Regla

CI/CD no existe para verse moderno.

Existe para reducir riesgo y acelerar feedback confiable.
