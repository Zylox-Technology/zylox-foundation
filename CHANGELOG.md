# Zylox Foundation Changelog

## [0.6.2] - 2026-07-07

### Added
- Se formalizan patrones generalizables validados durante la entrega real de Financial OS: vertical slices después de estabilizar patrones técnicos, límites core/auxiliary, degradation por clase de falla, provider boundary previo a integraciones externas/IA, release candidate gate, environment alignment gate, testing de inyección con integridad, controlled device testing, inteligencia auxiliar no bloqueante y señales adaptativas reversibles.
- Se agregan templates operativos y de calidad para environment alignment, risk closure, input validation matrix y controlled device test report.

### Changed
- Se actualiza `VERSION` a `0.6.2`.
- Se alinean `README.md` y `knowledge-base/` con la nueva versión governance/documental.
- Se corrige el nombre completo de Franco Facundo Debuono en el contexto del proyecto.

### Decision
- `0.6.2` se define como patch release porque incorpora governance/documentación backward-compatible basada en patrones probados en un producto real, sin rediseñar módulos raíz ni cambiar principios.

## [0.6.1] - 2026-07-02

### Added
- Se agrega `.github/CODEOWNERS` como base para ownership y revisiÃ³n por mÃ³dulo.
- Se agrega `.github/pull_request_template.md` para estandarizar Pull Requests.
- Se agrega `operations/github-branch-protection.md` para documentar protecciÃ³n de ramas.
- Se agrega `operations/codeowners.md` para definir ownership operativo del repositorio.
- Se agrega `operations/release-governance.md` para definir versionado, tagging y GitHub Releases.

### Changed
- Se actualiza `VERSION` a `0.6.1`.
- Se formaliza governance operativo del repositorio antes de iniciar productos reales basados en Zylox Foundation.

### Fixed
- Fixed current-state documentation references that incorrectly pointed to 0.6.0 instead of 0.6.1.
- Fixed stale short-term action items in `knowledge-base/next-steps.md` that still referenced patch/tag `v0.6.0` (now `v0.6.1`).

### Decision
- `0.6.1` se define como patch release porque endurece operaciÃ³n y governance sin agregar un nuevo mÃ³dulo raÃ­z.

Todas las modificaciones relevantes del repositorio `zylox-foundation` deben registrarse en este archivo.

## [0.6.0] - 2026-07-02

### Added
- Se agrega el mÃ³dulo `starter-kits/`.
- Se agrega el mÃ³dulo `examples/`.
- Se agrega el mÃ³dulo `knowledge-base/`.
- Se incorporan starter kits para software product, QA automation, API testing, AI agent project, data pipeline, internal tool y SaaS monorepo.
- Se incorporan ejemplos aplicados para Financial OS, QA automation, AI agent, product discovery y release flow.
- Se incorpora una base de conocimiento comprimida para continuidad entre conversaciones, onboarding y handoff a IA.
- Se agregan changelogs para `starter-kits/`, `examples/` y `knowledge-base/`.
- Se actualiza README raÃ­z para incluir todos los mÃ³dulos actuales.
- Se actualiza `VERSION` a `0.6.0`.

### Decision
- Starter Kits se define como el mÃ³dulo que permite iniciar proyectos alineados al framework.
- Examples se define como el mÃ³dulo que muestra aplicaciones concretas del framework.
- Knowledge Base se define como el mÃ³dulo de continuidad contextual y handoff para futuras conversaciones o herramientas de IA.

## [0.5.0] - 2026-07-02

### Added
- Se agrega el mÃ³dulo `templates/`.
- Se incorporan plantillas reutilizables para arquitectura, producto, calidad, operaciones, IA y colaboraciÃ³n en GitHub.
- Se agregan templates de ADR, RFC, PRD, discovery brief, MVP scope, epic, user story, test strategy, test case, bug report, quality report, automation tracking, quality metrics, release notes, release checklist, incident report, runbook, change request, prompt, agent spec, AI evaluation y pull request.
- Se agrega `templates/CHANGELOG.md`.
- Se actualiza README raÃ­z para incluir Templates como mÃ³dulo actual.
- Se actualiza `VERSION` a `0.5.0`.

### Decision
- Templates se define como el mÃ³dulo responsable de convertir los principios del framework en artefactos aplicables y repetibles.
- Las plantillas deben mantenerse alineadas con Company, Product, Engineering, Quality, AI y Operations.

## [0.4.0] - 2026-07-02

### Added
- Se agrega el mÃ³dulo `operations/`.
- Se define Operations como disciplina transversal para CI/CD, releases, ambientes, branch protection, approvals, incidentes, monitoreo, runbooks, accesos, secretos, backups, soporte y readiness.
- Se agrega `operations/CHANGELOG.md`.
- Se actualiza README raÃ­z para incluir Operations como mÃ³dulo actual.
- Se actualiza `VERSION` a `0.4.0`.

### Decision
- Operations se define como el mÃ³dulo responsable de convertir estÃ¡ndares de ingenierÃ­a, producto, calidad e IA en procesos operables, gobernados y auditables.
- Branch protection y approvals pasan a formar parte explÃ­cita del framework.

## [0.3.0] - 2026-07-02

### Added
- Se agrega el mÃ³dulo `ai/`.
- Se define IA como disciplina transversal vendor-neutral.
- Se agregan documentos para colaboraciÃ³n humano + IA, context engineering, prompting, agentes, tool use, RAG, evaluaciÃ³n, seguridad, privacidad, human-in-the-loop, IA para Engineering, IA para Quality, IA para Product, gobernanza, observabilidad y costos.
- Se agrega `ai/CHANGELOG.md`.
- Se actualiza README raÃ­z con guÃ­a general completa del framework, mÃ³dulos actuales, mÃ³dulos planificados, reglas de mantenimiento y casos de uso.
- Se actualiza `VERSION` a `0.3.0`.

### Decision
- AI se define como mÃ³dulo transversal, no como reemplazo de Product, Engineering o Quality.
- El uso de IA en Zylox debe ser vendor-neutral, trazable, evaluable y gobernado por criterio humano.

## [0.2.0] - 2026-07-02

### Added
- Se agrega el mÃ³dulo `product/`.
- Se incorpora Product como disciplina conectada con Company, Engineering y Quality.
- Se agregan documentos de discovery, problem framing, usuarios, journeys, hipÃ³tesis, MVP, roadmap, Ã©picas, historias, criterios de aceptaciÃ³n, priorizaciÃ³n, mÃ©tricas, PRD, release planning, feedback loop y colaboraciÃ³n con IA.
- Se agrega `product/CHANGELOG.md`.
- Se actualiza README raÃ­z para incluir Product como mÃ³dulo actual.
- Se actualiza `VERSION` a `0.2.0`.

### Decision
- Product se define como el mÃ³dulo responsable de transformar problemas en soluciones diseÃ±ables, construibles, testeables y medibles.
- Product no reemplaza Engineering ni Quality: los conecta desde la definiciÃ³n del problema.

## [0.1.0] - 2026-07-01

### Added
- Se crea estructura integrada inicial de `zylox-foundation`.
- Se agrega mÃ³dulo `company/`.
- Se agrega mÃ³dulo `engineering/`.
- Se agrega mÃ³dulo `quality/`.
- Se agregan placeholders para `product/`, `ai/`, `operations/`, `templates/`, `starter-kits/` y `examples/`.
- Se agrega README raÃ­z con alcance del framework.
- Se agrega versionado inicial.
- Se agregan changelogs por mÃ³dulo para Engineering y Quality.

### Decision
- `zylox-foundation` queda definido como repositorio base para la forma de trabajo de Zylox.
- El framework serÃ¡ vendor-neutral y no dependerÃ¡ de una IA, lenguaje, framework o proveedor especÃ­fico.
