# API Testing Framework Starter Kit

## Objetivo

Iniciar un framework para validación de APIs, contratos, reglas de negocio y regresión.

## Estructura sugerida

```text
api-testing/
├── README.md
├── docs/
│   ├── test-strategy.md
│   ├── environments.md
│   └── data-strategy.md
├── tests/
│   ├── contract/
│   ├── business/
│   ├── negative/
│   ├── security/
│   └── regression/
├── schemas/
├── data/
├── clients/
├── config/
├── reports/
└── .github/
```

## Validaciones típicas

- Status codes.
- Schemas.
- Required fields.
- Business rules.
- Error messages.
- Authentication.
- Authorization.
- Idempotency.
- Pagination.
- Filtering.
- Sorting.
- Rate limits.
- Side effects.

## Checklist inicial

- [ ] APIs objetivo identificadas.
- [ ] Contratos disponibles.
- [ ] Ambientes definidos.
- [ ] Datos definidos.
- [ ] Auth definida.
- [ ] Suites definidas.
- [ ] Reporting definido.
- [ ] Pipeline definido.
