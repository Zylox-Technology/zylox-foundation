# Quality Metrics Governance

## Objetivo

Definir cómo Zylox establece, mide y revisa métricas de calidad cuando Quality se aplica como disciplina general, no solamente como QA Testing.

## Principio

Medimos para decidir.

Una métrica que no permite tomar decisiones no debe mantenerse.

## Campos mínimos para cada métrica

| Campo | Descripción |
|---|---|
| Metric | Nombre de la métrica. |
| Purpose | Qué decisión permite tomar. |
| Scope | Proyecto, módulo, release, equipo o producto. |
| Target | Objetivo esperado. |
| Threshold | Umbral aceptable. |
| Frequency | Frecuencia de revisión. |
| Owner | Responsable. |
| Source | Fuente de datos. |
| Current Value | Valor actual. |
| Trend | Improving, stable, worsening. |
| Status | Healthy, warning, critical. |
| Action | Acción correctiva si aplica. |

## Resultado esperado

Cada revisión debe producir una de estas salidas:

- sin acción;
- acción correctiva;
- deuda aceptada;
- cambio de estrategia;
- bloqueo de release;
- actualización de métricas.

## Regla

Las métricas deben revisarse con contexto. Una métrica aislada puede inducir malas decisiones.
