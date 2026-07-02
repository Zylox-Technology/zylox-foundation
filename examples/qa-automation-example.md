# Example: QA Automation Framework

## Contexto

Framework de automatización para validar APIs, UI y flujos críticos de un producto.

## Módulos aplicados

- `quality/`
- `engineering/`
- `operations/`
- `templates/quality/`
- `ai/` si se usa IA para generar o revisar casos.

## Estructura sugerida

```text
qa-automation/
├── tests/
│   ├── api/
│   ├── ui/
│   └── e2e/
├── fixtures/
├── reports/
├── docs/
│   ├── test-strategy.md
│   └── automation-tracking.md
└── .github/
```

## Suites

- Smoke.
- Regression.
- Critical APIs.
- UI critical flows.
- Data validations.

## Métricas

- Pass rate.
- Flaky tests.
- Execution time.
- Coverage by risk.
- Defects detected by automation.
- Escaped defects.

## Quality Gate

No liberar si:

- smoke falla;
- hay defectos críticos abiertos;
- API contract tests críticos fallan;
- flakiness impide confiar en resultados.
