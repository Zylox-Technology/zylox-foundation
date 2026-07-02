# Zylox Foundation

`zylox-foundation` es el repositorio base que define cómo Zylox diseña, construye, valida, documenta, opera y evoluciona soluciones de ingeniería.

Este repositorio no pertenece a un producto específico. Es la base reutilizable para todos los proyectos de Zylox: productos propios, proyectos para clientes, aceleradores internos, frameworks de QA, soluciones con IA y futuras plataformas SaaS.

## Principio rector

> Technology changes. Engineering endures.

La tecnología cambia. La ingeniería permanece.

## Propósito

Zylox Foundation existe para evitar que cada proyecto empiece desde cero.

Su objetivo es convertir la forma de trabajo de Zylox en un sistema reutilizable, versionado y auditable.

El framework define:

- cómo pensamos problemas;
- cómo descubrimos oportunidades de producto;
- cómo diseñamos soluciones;
- cómo escribimos software;
- cómo incorporamos calidad desde el diseño;
- cómo colaboramos con IA;
- cómo documentamos decisiones;
- cómo operamos releases, ambientes e incidentes;
- cómo usamos plantillas reutilizables;
- cómo iniciamos proyectos desde starter kits;
- cómo documentamos ejemplos aplicados;
- cómo mantenemos una base de conocimiento;
- cómo medimos resultados;
- cómo mantenemos trazabilidad;
- cómo evolucionamos productos sin perder claridad.

## Alcance

Zylox Foundation no es solamente un handbook técnico.

Es un ecosistema de ingeniería compuesto por módulos especializados que comparten principios comunes, pero tienen objetivos distintos.

El repositorio cubre:

- identidad institucional;
- ingeniería de software;
- arquitectura;
- producto;
- calidad;
- testing;
- automatización;
- IA aplicada;
- operación;
- CI/CD;
- releases;
- incidentes;
- documentación;
- gobernanza;
- plantillas;
- starter kits;
- ejemplos aplicados;
- base de conocimiento.

## Estructura general

```text
zylox-foundation/
├── README.md
├── VERSION
├── CHANGELOG.md
├── .gitignore
├── company/
├── engineering/
├── quality/
├── product/
├── ai/
├── operations/
├── templates/
├── starter-kits/
├── examples/
├── knowledge-base/
└── .github/
```

## Módulos actuales

### `company/`

Define la identidad de Zylox: manifiesto, misión, visión, valores, cultura, posicionamiento, filosofía de ingeniería y frases rectoras.

### `engineering/`

Define cómo Zylox diseña y construye software: arquitectura, Clean Architecture, DDD liviano, documentación como código, Git, branching, commits, code review, DoR, DoD, ADR, RFC, observabilidad, seguridad, dependencias y versionado.

### `quality/`

Define cómo Zylox entiende, diseña, valida, automatiza y mide calidad: Quality by Design, estrategia de testing, automation tracking, métricas, evidencia, defectos, quality gates, performance, security, accessibility e AI testing.

### `product/`

Define cómo Zylox transforma problemas en productos: discovery, problem framing, usuarios, journeys, hipótesis, MVP, roadmap, épicas, historias, criterios de aceptación, priorización, métricas, PRD, release planning y feedback loops.

### `ai/`

Define cómo Zylox trabaja con inteligencia artificial de forma vendor-neutral: colaboración humano + IA, context engineering, prompting, agentes, tool use, RAG, evaluación, seguridad, privacidad, human-in-the-loop, gobernanza, observabilidad y costos.

### `operations/`

Define cómo Zylox opera proyectos y productos de forma controlada: CI/CD, branch protection, approvals, releases, ambientes, despliegues, incidentes, monitoreo, runbooks, accesos, secretos, backups, soporte operativo y readiness.

### `templates/`

Define plantillas reutilizables para aplicar los módulos del framework en proyectos reales.

Incluye templates de arquitectura, producto, calidad, operaciones, IA y colaboración en GitHub.

### `starter-kits/`

Define estructuras iniciales para arrancar proyectos rápidamente sin perder alineación con Zylox Foundation.

Incluye starter kits para productos de software, QA automation, API testing, agentes de IA, data pipelines, herramientas internas y SaaS monorepos.

### `examples/`

Contiene ejemplos aplicados que muestran cómo usar el framework en escenarios concretos.

Incluye ejemplos para producto financiero, QA automation, agentes de IA, discovery y release flow.

### `knowledge-base/`

Contiene una versión comprimida y reutilizable del contexto del framework.

Sirve como base de conocimiento para futuras conversaciones, onboarding, handoff a IA, continuidad de trabajo y documentación de decisiones.

## Cómo usar este repositorio

### Para iniciar un producto nuevo

1. Revisar `company/`.
2. Revisar `product/`.
3. Usar templates de discovery, PRD, epic, user story y MVP.
4. Revisar `engineering/`.
5. Definir arquitectura inicial.
6. Revisar `quality/`.
7. Definir estrategia de calidad.
8. Revisar `ai/` si se usará IA.
9. Revisar `operations/` para ambientes, releases y gobernanza.
10. Elegir un starter kit si aplica.
11. Crear ADR/RFC cuando existan decisiones relevantes.
12. Definir backlog, métricas y criterios de release.

### Para iniciar un proyecto técnico

1. Revisar `engineering/README.md`.
2. Usar ADR/RFC templates cuando haya decisiones relevantes.
3. Definir arquitectura, módulos y decisiones iniciales.
4. Definir estrategia Git y branch strategy.
5. Definir DoR y DoD.
6. Revisar `quality/` para asegurar testabilidad.
7. Revisar `operations/` para CI/CD, ambientes y branch protection.
8. Revisar `ai/` si se usará asistencia de IA.
9. Elegir starter kit técnico si aplica.

### Para iniciar un framework de QA

1. Revisar `quality/README.md`.
2. Usar test strategy, test case, bug report, quality report y automation tracking templates.
3. Definir alcance de QA Testing o Quality Engineering.
4. Definir métricas.
5. Definir quality gates.
6. Conectar con Engineering para testabilidad y observabilidad.
7. Conectar con Product para criterios de aceptación y riesgos.
8. Conectar con Operations para ejecución en pipeline, evidencia y release gates.
9. Elegir starter kit de QA si aplica.

### Para iniciar un agente o flujo con IA

1. Revisar `ai/README.md`.
2. Usar prompt, agent spec y evaluation templates.
3. Definir objetivo, contexto, límites, herramientas, evaluación y seguridad.
4. Definir human-in-the-loop si hay decisiones críticas.
5. Registrar ADR/RFC si impacta arquitectura o proceso.
6. Elegir starter kit de AI agent si aplica.

### Para operar un producto o repo

1. Revisar `operations/README.md`.
2. Usar release checklist, release notes, incident report, runbook y change request templates.
3. Definir ramas protegidas.
4. Definir approvals.
5. Definir ambientes.
6. Definir pipeline mínimo.
7. Definir monitoreo y alertas.
8. Definir owners y accesos.

### Para continuar este trabajo en otro chat o herramienta

1. Revisar `knowledge-base/README.md`.
2. Leer `knowledge-base/assistant-handoff.md`.
3. Leer `knowledge-base/current-state.md`.
4. Revisar `knowledge-base/decisions-log.md`.
5. Continuar desde el próximo módulo, patch o mejora documentada.

## Reglas de mantenimiento

### Cada módulo activo debe tener

- `README.md`
- `CHANGELOG.md`
- documentos específicos
- versión declarada
- criterio de cumplimiento
- relación con otros módulos

### Cada cambio relevante debe actualizar

- README del módulo;
- CHANGELOG del módulo;
- README raíz si cambia el alcance general;
- CHANGELOG raíz si cambia el repo integrado;
- VERSION si corresponde.

### Cuándo crear ADR

Crear ADR cuando una decisión:

- afecta arquitectura;
- cambia un estándar;
- incorpora una tecnología clave;
- define un patrón reusable;
- descarta una alternativa importante;
- afecta seguridad, calidad, operación o gobernanza.

### Cuándo crear RFC

Crear RFC cuando una idea necesita discusión antes de convertirse en estándar.

## Versionado

Versión actual del repositorio: `0.6.0`

Convención:

```text
MAJOR.MINOR.PATCH
```

- MAJOR: cambio incompatible de filosofía, estructura o proceso.
- MINOR: nuevo módulo, documento o práctica compatible.
- PATCH: correcciones, mejoras menores o aclaraciones.

## Changelogs activos

```text
CHANGELOG.md
engineering/CHANGELOG.md
quality/CHANGELOG.md
product/CHANGELOG.md
ai/CHANGELOG.md
operations/CHANGELOG.md
templates/CHANGELOG.md
starter-kits/CHANGELOG.md
examples/CHANGELOG.md
knowledge-base/CHANGELOG.md
```

## Estados de documentos

Los documentos pueden estar en uno de estos estados:

- Draft: en construcción.
- Review: listo para revisión interna.
- Approved: aprobado como estándar vigente.
- Deprecated: reemplazado o desaconsejado.
- Superseded: reemplazado por otro documento.

## Principios de mantenimiento

- No duplicar conocimiento.
- No crear documentos sin dueño conceptual.
- No crear reglas que no se puedan aplicar.
- No documentar por burocracia.
- Documentar para decidir mejor.
- Mantener vivos los documentos que gobiernan la forma de trabajo.

## Firmado por

Zylox Engineering Council

Founding contributors:

- Exequiel Robledo
- Franco Facundo Debuono
