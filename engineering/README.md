# Engineering

El módulo Engineering define cómo Zylox diseña, construye, documenta y mantiene soluciones de software.

Este módulo no está atado a un lenguaje, framework, proveedor cloud ni herramienta de IA. Su objetivo es establecer principios estables para construir sistemas mantenibles, testeables y evolutivos.

## Principio rector

> Good engineering outlives technology.

La buena ingeniería sobrevive a la tecnología.

## Alcance

Engineering cubre:

- arquitectura;
- diseño de dominio;
- separación de capas;
- Clean Architecture;
- DDD liviano;
- documentación como código;
- Git;
- branching;
- commits;
- code review;
- ADR;
- RFC;
- observabilidad;
- seguridad;
- dependencias;
- versionado;
- relación con Quality Engineering.

## Escenarios cubiertos

Este módulo debe usarse cuando:

- se inicia un proyecto nuevo;
- se define arquitectura base;
- se elige stack tecnológico;
- se diseña un dominio;
- se decide entre monolito, modular monolith, microservicios o monorepo;
- se revisa una propuesta técnica;
- se incorpora una nueva herramienta;
- se define estrategia de ramas;
- se crea una convención de commits;
- se documenta una decisión importante;
- se prepara un proyecto para trabajar con IA;
- se necesita reducir deuda técnica;
- se incorpora un nuevo desarrollador al equipo.

## Relación con Quality

Engineering es responsable de construir sistemas testeables, observables y mantenibles.

Quality define cómo validar esos sistemas, medir riesgos y generar evidencia.

La calidad no es responsabilidad exclusiva de QA. Engineering debe diseñar para que Quality pueda operar con efectividad.

## Documentos incluidos

- `principles.md`
- `architecture-principles.md`
- `clean-architecture.md`
- `domain-driven-design.md`
- `documentation-as-code.md`
- `git-strategy.md`
- `branching-strategy.md`
- `commit-convention.md`
- `code-review.md`
- `definition-of-ready.md`
- `definition-of-done.md`
- `adr-process.md`
- `rfc-process.md`
- `testing-responsibility.md`
- `observability.md`
- `security-principles.md`
- `dependency-management.md`
- `versioning.md`
- `CHANGELOG.md`

## Versionado del módulo

Versión actual: `0.1.0`

## Criterio de cumplimiento

Un proyecto alineado con Engineering debe poder demostrar:

- arquitectura explícita;
- decisiones documentadas;
- estrategia Git clara;
- Definition of Ready;
- Definition of Done;
- criterios de review;
- documentación mínima viva;
- separación razonable de responsabilidades;
- diseño testeable;
- criterios básicos de observabilidad y seguridad.

## Firmado por

Zylox Engineering Council
