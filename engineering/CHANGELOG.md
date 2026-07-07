# Engineering Changelog

Todas las modificaciones relevantes del módulo Engineering deben registrarse en este archivo.

## [0.6.2] - 2026-07-07

### Changed
- Se agregan criterios para vertical slices después de estabilizar patrones técnicos.
- Se explicita el límite core/auxiliary, provider boundary previo a integraciones externas/IA y graceful degradation por clase de falla.
- Se amplía Definition of Done con evidencia de app/schema/runtime cuando el cambio toca deploy o datos.

## [0.1.0] - 2026-07-01

### Added
- Se crea el módulo Engineering.
- Se agrega README específico del módulo.
- Se agregan principios generales de ingeniería.
- Se agregan principios de arquitectura.
- Se documenta Clean Architecture como guía no dogmática.
- Se documenta DDD liviano.
- Se incorpora Documentation as Code.
- Se define estrategia Git.
- Se define branching strategy.
- Se define convención de commits.
- Se define proceso de code review.
- Se define Definition of Ready.
- Se define Definition of Done.
- Se define proceso ADR.
- Se define proceso RFC.
- Se documenta responsabilidad de Engineering sobre testabilidad.
- Se agregan principios de observabilidad.
- Se agregan principios de seguridad.
- Se agregan reglas de dependency management.
- Se agrega criterio de versionado.

### Decision
- Engineering se define como módulo independiente dentro de `zylox-foundation`.
- Engineering será base para futuros proyectos de software, productos SaaS, herramientas internas y starter kits.
