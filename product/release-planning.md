# Release Planning

## Objetivo

Preparar entregas de producto con alcance, riesgos y criterios claros.

## Una release debe incluir

- objetivo;
- alcance;
- fuera de alcance;
- cambios incluidos;
- riesgos;
- quality gates;
- plan de rollback;
- métricas post-release;
- comunicación;
- owner;
- fecha objetivo.

## Relación con Quality

Quality define si existe confianza suficiente para liberar.

Product define si el valor de liberar justifica el riesgo restante.

Engineering define si el sistema está técnicamente listo.

## Regla

Una release no se decide solo por cantidad de tickets cerrados.

## Release promotion

Cuando una release candidate ya pasó gates, la promoción no debe reimplementar features.

La promoción debe limitarse a:

- versión;
- documentación;
- artefacto;
- validación final;
- tag/release;
- comunicación.

Si aparece un blocker funcional o de seguridad durante la promoción, se corta la promoción y vuelve a desarrollo como RC nueva.
