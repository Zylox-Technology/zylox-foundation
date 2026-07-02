# Zylox Foundation Changelog

Todas las modificaciones relevantes del repositorio `zylox-foundation` deben registrarse en este archivo.

## [0.6.0] - 2026-07-02

### Added
- Se agrega el módulo `starter-kits/`.
- Se agrega el módulo `examples/`.
- Se agrega el módulo `knowledge-base/`.
- Se incorporan starter kits para software product, QA automation, API testing, AI agent project, data pipeline, internal tool y SaaS monorepo.
- Se incorporan ejemplos aplicados para Financial OS, QA automation, AI agent, product discovery y release flow.
- Se incorpora una base de conocimiento comprimida para continuidad entre conversaciones, onboarding y handoff a IA.
- Se agregan changelogs para `starter-kits/`, `examples/` y `knowledge-base/`.
- Se actualiza README raíz para incluir todos los módulos actuales.
- Se actualiza `VERSION` a `0.6.0`.

### Decision
- Starter Kits se define como el módulo que permite iniciar proyectos alineados al framework.
- Examples se define como el módulo que muestra aplicaciones concretas del framework.
- Knowledge Base se define como el módulo de continuidad contextual y handoff para futuras conversaciones o herramientas de IA.

## [0.5.0] - 2026-07-02

### Added
- Se agrega el módulo `templates/`.
- Se incorporan plantillas reutilizables para arquitectura, producto, calidad, operaciones, IA y colaboración en GitHub.
- Se agregan templates de ADR, RFC, PRD, discovery brief, MVP scope, epic, user story, test strategy, test case, bug report, quality report, automation tracking, quality metrics, release notes, release checklist, incident report, runbook, change request, prompt, agent spec, AI evaluation y pull request.
- Se agrega `templates/CHANGELOG.md`.
- Se actualiza README raíz para incluir Templates como módulo actual.
- Se actualiza `VERSION` a `0.5.0`.

### Decision
- Templates se define como el módulo responsable de convertir los principios del framework en artefactos aplicables y repetibles.
- Las plantillas deben mantenerse alineadas con Company, Product, Engineering, Quality, AI y Operations.

## [0.4.0] - 2026-07-02

### Added
- Se agrega el módulo `operations/`.
- Se define Operations como disciplina transversal para CI/CD, releases, ambientes, branch protection, approvals, incidentes, monitoreo, runbooks, accesos, secretos, backups, soporte y readiness.
- Se agrega `operations/CHANGELOG.md`.
- Se actualiza README raíz para incluir Operations como módulo actual.
- Se actualiza `VERSION` a `0.4.0`.

### Decision
- Operations se define como el módulo responsable de convertir estándares de ingeniería, producto, calidad e IA en procesos operables, gobernados y auditables.
- Branch protection y approvals pasan a formar parte explícita del framework.

## [0.3.0] - 2026-07-02

### Added
- Se agrega el módulo `ai/`.
- Se define IA como disciplina transversal vendor-neutral.
- Se agregan documentos para colaboración humano + IA, context engineering, prompting, agentes, tool use, RAG, evaluación, seguridad, privacidad, human-in-the-loop, IA para Engineering, IA para Quality, IA para Product, gobernanza, observabilidad y costos.
- Se agrega `ai/CHANGELOG.md`.
- Se actualiza README raíz con guía general completa del framework, módulos actuales, módulos planificados, reglas de mantenimiento y casos de uso.
- Se actualiza `VERSION` a `0.3.0`.

### Decision
- AI se define como módulo transversal, no como reemplazo de Product, Engineering o Quality.
- El uso de IA en Zylox debe ser vendor-neutral, trazable, evaluable y gobernado por criterio humano.

## [0.2.0] - 2026-07-02

### Added
- Se agrega el módulo `product/`.
- Se incorpora Product como disciplina conectada con Company, Engineering y Quality.
- Se agregan documentos de discovery, problem framing, usuarios, journeys, hipótesis, MVP, roadmap, épicas, historias, criterios de aceptación, priorización, métricas, PRD, release planning, feedback loop y colaboración con IA.
- Se agrega `product/CHANGELOG.md`.
- Se actualiza README raíz para incluir Product como módulo actual.
- Se actualiza `VERSION` a `0.2.0`.

### Decision
- Product se define como el módulo responsable de transformar problemas en soluciones diseñables, construibles, testeables y medibles.
- Product no reemplaza Engineering ni Quality: los conecta desde la definición del problema.

## [0.1.0] - 2026-07-01

### Added
- Se crea estructura integrada inicial de `zylox-foundation`.
- Se agrega módulo `company/`.
- Se agrega módulo `engineering/`.
- Se agrega módulo `quality/`.
- Se agregan placeholders para `product/`, `ai/`, `operations/`, `templates/`, `starter-kits/` y `examples/`.
- Se agrega README raíz con alcance del framework.
- Se agrega versionado inicial.
- Se agregan changelogs por módulo para Engineering y Quality.

### Decision
- `zylox-foundation` queda definido como repositorio base para la forma de trabajo de Zylox.
- El framework será vendor-neutral y no dependerá de una IA, lenguaje, framework o proveedor específico.
