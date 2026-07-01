# Zylox Foundation

`zylox-foundation` es el repositorio base que define cómo Zylox diseña, construye, valida, documenta y evoluciona soluciones de ingeniería.

Este repositorio no pertenece a un producto específico. Es la base reutilizable para todos los proyectos de Zylox: productos propios, proyectos para clientes, aceleradores internos, automatizaciones, frameworks de QA, soluciones con IA y futuras plataformas SaaS.

## Propósito

Zylox Foundation existe para evitar que cada proyecto empiece desde cero.

Su objetivo es convertir la forma de trabajo de Zylox en un sistema reutilizable, versionado y auditable.

Este repositorio define:

- cómo pensamos los problemas;
- cómo diseñamos soluciones;
- cómo escribimos software;
- cómo incorporamos calidad desde el diseño;
- cómo colaboramos con IA;
- cómo documentamos decisiones;
- cómo medimos madurez;
- cómo mantenemos trazabilidad;
- cómo evolucionamos productos sin perder claridad.

## Principio rector

> Technology changes. Engineering endures.

La tecnología cambia. La ingeniería permanece.

## Alcance del framework

Zylox Foundation no es solamente un handbook técnico.

Es un ecosistema de ingeniería compuesto por módulos especializados que comparten principios comunes, pero tienen objetivos distintos.

## Estructura

```text
zylox-foundation/
├── README.md
├── VERSION
├── CHANGELOG.md
├── company/
├── engineering/
├── quality/
├── product/
├── ai/
├── operations/
├── templates/
├── starter-kits/
├── examples/
└── .github/
```

## Módulos actuales

### company/

Define la identidad de Zylox.

Incluye manifiestos, principios institucionales, misión, visión, posicionamiento y filosofía general.

Casos de uso cubiertos:

- presentar Zylox a un colaborador nuevo;
- alinear decisiones con la cultura de la empresa;
- explicar por qué Zylox prioriza ingeniería sostenible;
- establecer una base común para proyectos humanos + IA;
- definir el tono institucional y técnico de la organización.

### engineering/

Define cómo Zylox construye software.

Incluye principios de arquitectura, Clean Architecture, DDD liviano, Git, commits, revisiones, ADR, RFC, observabilidad, seguridad, versionado y documentación como código.

Casos de uso cubiertos:

- iniciar un nuevo proyecto de software;
- definir arquitectura base;
- revisar decisiones técnicas;
- ordenar ramas y commits;
- documentar decisiones con ADR;
- discutir cambios grandes con RFC;
- asegurar que el código sea mantenible;
- facilitar onboarding de desarrolladores;
- guiar a agentes de IA o herramientas de asistencia al desarrollo.

### quality/

Define cómo Zylox entiende, diseña, valida, automatiza y mide calidad.

Quality no es una etapa posterior al desarrollo. Es una disciplina de ingeniería que acompaña al producto desde el discovery hasta la operación.

Casos de uso cubiertos:

- definir estrategia de testing;
- diseñar quality gates;
- priorizar pruebas por riesgo;
- decidir qué automatizar;
- controlar cobertura automatizada;
- gestionar defectos;
- definir métricas de calidad;
- revisar cumplimiento de calidad;
- validar APIs, UI, performance, seguridad, accesibilidad e IA;
- preparar reportes de evidencia;
- acompañar releases con criterios objetivos.

## Módulos planificados

### product/

Definirá cómo Zylox diseña productos: discovery, usuarios, journeys, épicas, historias, criterios de aceptación, priorización, roadmap, métricas de producto y experimentación.

### ai/

Definirá cómo Zylox trabaja con inteligencia artificial de forma vendor-neutral: agentes, prompting, context engineering, memory, RAG, evaluaciones, trazabilidad, gobernanza, seguridad y límites de uso.

### operations/

Definirá procesos transversales: CI/CD, releases, incidentes, monitoreo, gestión de ambientes, plantillas operativas, versionado del framework y mantenimiento.

### templates/

Contendrá plantillas reutilizables: ADR, RFC, Sprint, User Story, Epic, PR, Bug Report, Test Strategy, Release Notes y Quality Report.

### starter-kits/

Contendrá estructuras iniciales para distintos tipos de proyectos: software product, QA automation framework, API testing framework, AI agent project, SaaS monorepo, data pipeline e internal tool.

## Cómo usar este repositorio

### Para iniciar un proyecto nuevo

1. Revisar `company/`.
2. Revisar `engineering/`.
3. Revisar `quality/`.
4. Copiar los módulos aplicables al nuevo proyecto.
5. Crear ADR iniciales.
6. Definir Definition of Ready y Definition of Done.
7. Crear estrategia de calidad.
8. Crear backlog inicial.

### Para sumar una nueva práctica

1. Crear o actualizar el documento correspondiente.
2. Registrar la decisión en ADR si cambia una regla importante.
3. Actualizar el README del módulo.
4. Actualizar el CHANGELOG del módulo.
5. Versionar el cambio.

### Para trabajar con IA

1. La IA debe leer primero este README.
2. Luego debe leer el README del módulo donde trabajará.
3. Debe respetar los manifiestos de `company/`.
4. Debe proponer cambios documentados, no modificar reglas fundacionales sin aprobación.
5. Debe registrar decisiones relevantes en ADR/RFC cuando corresponda.

## Versionado

Cada módulo puede evolucionar de forma independiente.

El repositorio raíz también tendrá su propio versionado cuando exista una release integrada.

Convención sugerida:

```text
MAJOR.MINOR.PATCH
```

- MAJOR: cambio incompatible de filosofía, estructura o proceso.
- MINOR: nuevo documento, módulo o práctica compatible.
- PATCH: correcciones, mejoras menores o aclaraciones.

## Changelogs

Cada módulo importante debe tener su propio `CHANGELOG.md`.

Actualmente:

```text
engineering/CHANGELOG.md
quality/CHANGELOG.md
```

Reglas:

- Todo cambio relevante debe registrarse.
- Todo cambio debe indicar fecha, versión y tipo.
- Los README de cada módulo deben reflejar el estado actual.
- Si cambia un proceso, también debe actualizarse la documentación relacionada.
- Si cambia una decisión arquitectónica o de calidad, debe crearse o actualizarse un ADR.

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
- Facu
