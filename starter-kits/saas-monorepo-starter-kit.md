# SaaS Monorepo Starter Kit

## Objetivo

Iniciar un producto SaaS organizado en monorepo, con separación de responsabilidades y estándares transversales.

## Estructura sugerida

```text
saas-product/
├── README.md
├── VERSION
├── CHANGELOG.md
├── apps/
│   ├── web/
│   └── api/
├── packages/
│   ├── domain/
│   ├── shared/
│   └── config/
├── docs/
│   ├── product/
│   ├── architecture/
│   ├── quality/
│   └── operations/
├── tests/
├── scripts/
└── .github/
```

## Documentos mínimos

- PRD.
- MVP Scope.
- Architecture ADR.
- API strategy.
- Quality Strategy.
- Release process.
- Environment strategy.
- Security baseline.

## Checklist inicial

- [ ] Dominio definido.
- [ ] Apps definidas.
- [ ] Packages definidos.
- [ ] Dependencias internas claras.
- [ ] Pipeline definido.
- [ ] Ambientes definidos.
- [ ] Quality gates definidos.
- [ ] Release strategy definida.
