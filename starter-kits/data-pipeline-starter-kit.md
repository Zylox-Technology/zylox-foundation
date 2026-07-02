# Data Pipeline Starter Kit

## Objetivo

Iniciar un proyecto de pipeline de datos con calidad, trazabilidad, monitoreo y operación.

## Estructura sugerida

```text
data-pipeline/
├── README.md
├── docs/
│   ├── architecture.md
│   ├── data-quality.md
│   ├── lineage.md
│   └── operations.md
├── pipelines/
├── notebooks/
├── tests/
├── expectations/
├── monitoring/
├── config/
└── .github/
```

## Documentos mínimos

- Data pipeline architecture.
- Data Quality Strategy.
- Source-to-target mapping.
- Monitoring plan.
- Incident/runbook.
- Access and secrets management.

## Checklist inicial

- [ ] Fuentes identificadas.
- [ ] Destinos identificados.
- [ ] Reglas de calidad definidas.
- [ ] Validaciones de datos definidas.
- [ ] Monitoreo definido.
- [ ] Ownership definido.
- [ ] Backfill/reprocess definido.
- [ ] Seguridad definida.
