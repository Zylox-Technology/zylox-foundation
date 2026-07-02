# Quality

El módulo Quality define cómo Zylox entiende, diseña, valida, automatiza y mide la calidad.

Quality no reemplaza a Engineering. Lo complementa.

Engineering construye sistemas testeables, observables y mantenibles. Quality define cómo validar que esos sistemas cumplen su propósito, reducen riesgos y pueden evolucionar con confianza.

## Principio rector

> Quality is not a phase. Quality is a design constraint.

La calidad no es una fase. Es una restricción de diseño.

## Alcance

Quality cubre dos dimensiones complementarias:

### 1. QA / Testing

Prácticas orientadas a validación, pruebas, automatización, evidencia, defectos y reportes.

Incluye:

- estrategia de pruebas;
- testing manual;
- testing exploratorio;
- automatización;
- API testing;
- UI testing;
- performance testing;
- security testing;
- accessibility testing;
- AI testing;
- defect management;
- evidencia;
- reportes;
- quality gates.

### 2. Quality Engineering

Prácticas orientadas a diseñar, medir y gobernar calidad a nivel producto, equipo y arquitectura.

Incluye:

- Quality by Design;
- métricas de calidad;
- definición de calidad;
- cumplimiento de estándares;
- trazabilidad;
- observabilidad;
- riesgo;
- release readiness;
- ownership compartido;
- mejora continua.

## Escenarios cubiertos

Este módulo debe usarse cuando:

- se inicia un proyecto nuevo;
- se define una estrategia de pruebas;
- se decide qué automatizar;
- se necesita priorizar testing por riesgo;
- se diseña un pipeline de calidad;
- se definen quality gates;
- se mide cumplimiento de calidad;
- se trackean casos automatizados;
- se reporta estado de release;
- se gestionan defectos;
- se evalúa un sistema con IA;
- se requiere evidencia para un cliente;
- se define una Definition of Done realista;
- se quiere reducir defect leakage.

## Documentos incluidos

- `principles.md`
- `definition-of-quality.md`
- `quality-by-design.md`
- `risk-based-testing.md`
- `test-strategy.md`
- `test-pyramid.md`
- `automation-strategy.md`
- `api-testing.md`
- `ui-testing.md`
- `performance-testing.md`
- `security-testing.md`
- `accessibility-testing.md`
- `ai-testing.md`
- `test-management.md`
- `defect-management.md`
- `metrics.md`
- `evidence-and-reporting.md`
- `release-quality-gates.md`
- `roles-and-responsibilities.md`
- `automation-tracking.md`
- `quality-metrics-governance.md`
- `CHANGELOG.md`

## Versionado del módulo

Versión actual: `0.1.0`

## Automation Tracking

Si el proyecto usa Quality específicamente como QA Testing, debe trackear casos automatizados.

Ver `automation-tracking.md`.

## Quality Metrics Governance

Si el proyecto usa Quality como disciplina general de calidad, debe definir métricas de calidad y revisar cumplimiento.

Ver `quality-metrics-governance.md`.

## Criterio de cumplimiento

Un proyecto alineado con Quality debe poder demostrar:

- riesgos identificados;
- estrategia de pruebas definida;
- automation tracking si aplica;
- métricas de calidad si aplica;
- evidence/reporting;
- defect management;
- quality gates;
- cumplimiento de Definition of Done;
- trazabilidad mínima entre riesgo, prueba, defecto y release.

## Firmado por

Zylox Engineering Council
