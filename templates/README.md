# Templates

El módulo Templates contiene plantillas reutilizables para aplicar Zylox Foundation en proyectos reales.

Los módulos del framework definen principios, reglas y criterios.

Templates convierte esos principios en artefactos prácticos.

## Principio rector

> Reusable standards become valuable when they are easy to apply.

Los estándares reutilizables generan valor cuando son fáciles de aplicar.

## Relación con otros módulos

### Product

Templates incluye PRD, discovery brief, MVP scope, epic y user story.

### Engineering

Templates incluye ADR y RFC.

### Quality

Templates incluye test strategy, test case, bug report, quality report, automation tracking y quality metrics.

### Operations

Templates incluye release notes, release checklist, incident report, runbook y change request.

### AI

Templates incluye prompt template, agent spec y evaluation template.

## Estructura

```text
templates/
├── README.md
├── CHANGELOG.md
├── architecture/
├── product/
├── quality/
├── operations/
├── ai/
└── github/
```

## Uso

1. Elegir el template correspondiente.
2. Copiarlo al proyecto destino.
3. Completar solo lo necesario.
4. Eliminar secciones que no apliquen.
5. Mantener trazabilidad con issues, ADR, RFC, releases o métricas.

## Regla

Un template debe facilitar decisiones.

Si un template genera burocracia sin mejorar claridad, debe simplificarse.
