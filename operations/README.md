# Operations

El módulo Operations define cómo Zylox opera proyectos, repositorios y productos de forma controlada, auditable y sostenible.

Operations conecta Engineering, Quality, Product e AI con procesos reales de ejecución: ramas, approvals, pipelines, ambientes, releases, monitoreo, incidentes, soporte y gobernanza.

## Principio rector

> Reliable delivery requires reliable operations.

Una entrega confiable requiere operación confiable.

## Relación con otros módulos

### Engineering

Operations ejecuta estándares de Git, branching, reviews, versionado, CI/CD, observabilidad y seguridad.

### Quality

Operations integra quality gates, evidencia, test automation, métricas y release readiness en pipelines y releases.

### Product

Operations ayuda a convertir roadmap y releases en entregas controladas y trazables.

### AI

Operations define límites operativos para agentes, automatizaciones, tool use, costos, logs y revisiones humanas.

## Alcance

Operations cubre:

- branch protection;
- approval policy;
- repository governance;
- CI/CD;
- environments;
- deployment strategy;
- release management;
- operational readiness;
- monitoring;
- incident management;
- runbooks;
- support process;
- access management;
- secrets management;
- backup and recovery;
- change management.

## Escenarios cubiertos

Este módulo debe usarse cuando:

- se configura un repositorio;
- se protege `main` o `master`;
- se define quién aprueba cambios;
- se arma un pipeline;
- se definen ambientes;
- se prepara una release;
- se define rollback;
- se configuran alertas;
- se documentan incidentes;
- se crean runbooks;
- se gestionan accesos;
- se administran secretos;
- se necesita trazabilidad operativa.

## Documentos incluidos

- `principles.md`
- `repository-governance.md`
- `branch-protection.md`
- `approval-policy.md`
- `ci-cd.md`
- `environments.md`
- `deployment-strategy.md`
- `release-management.md`
- `operational-readiness.md`
- `monitoring-and-alerting.md`
- `incident-management.md`
- `runbooks.md`
- `support-process.md`
- `access-management.md`
- `secrets-management.md`
- `backup-and-recovery.md`
- `change-management.md`
- `CHANGELOG.md`

## Versionado del módulo

Versión actual: `0.1.0`

## Criterio de cumplimiento

Un proyecto alineado con Operations debe poder demostrar:

- ramas protegidas;
- política de approvals;
- estrategia de release;
- pipeline mínimo;
- ambientes definidos;
- secretos protegidos;
- owners identificados;
- quality gates definidos;
- rollback documentado;
- monitoreo mínimo;
- proceso de incidentes;
- runbooks para operaciones críticas.

## Firmado por

Zylox Engineering Council
