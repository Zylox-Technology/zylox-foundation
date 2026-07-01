# Automation Tracking

## Objetivo

Definir cómo Zylox trackea casos automatizados cuando un proyecto requiere foco específico en QA Testing.

El objetivo no es contar tests por contar. El objetivo es entender qué riesgos están cubiertos, qué tan confiable es la automatización y qué valor aporta.

## Cuándo aplica

Este tracking aplica cuando el proyecto tiene:

- suite automatizada;
- pruebas de regresión;
- pruebas API;
- pruebas UI;
- smoke tests;
- pruebas E2E;
- pruebas de performance automatizadas;
- pruebas de seguridad automatizadas;
- validaciones automáticas en CI/CD.

## Campos mínimos

| Campo | Descripción |
|---|---|
| Test ID | Identificador único del caso automatizado. |
| Name | Nombre claro del caso. |
| Module | Módulo o feature cubierta. |
| Test Type | Unit, integration, API, UI, E2E, performance, security, accessibility, AI eval. |
| Risk Covered | Riesgo principal mitigado. |
| Priority | Critical, High, Medium, Low. |
| Tool | Herramienta utilizada. |
| Suite | Suite a la que pertenece. |
| Owner | Responsable. |
| Status | Active, Draft, Deprecated, Flaky, Disabled. |
| Last Execution | Última fecha de ejecución. |
| Last Result | Passed, Failed, Skipped, Blocked. |
| Evidence | Link a reporte, screenshot, log o artefacto. |
| Defects Linked | Defectos asociados. |
| Flakiness | Nivel o porcentaje de inestabilidad. |
| Notes | Observaciones. |

## Regla

Un caso automatizado sin owner, sin riesgo cubierto o sin evidencia no debe considerarse parte confiable de la cobertura.
