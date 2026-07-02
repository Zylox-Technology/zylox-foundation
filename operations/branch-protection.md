# Branch Protection

## Objetivo

Proteger ramas estables para evitar cambios no revisados o inseguros.

## Ramas protegidas

Como mínimo:

- `main` o `master`;
- `develop` si existe;
- ramas de release si existen.

## Reglas recomendadas

Para `main` o `master`:

- Require pull request before merging.
- Require at least 1 approval.
- Dismiss stale approvals when new commits are pushed.
- Require conversation resolution before merge.
- Require status checks to pass before merge.
- Require branches to be up to date before merge cuando el proyecto lo justifique.
- Restrict force pushes.
- Restrict deletions.

## Para proyectos críticos

Agregar:

- 2 approvals;
- CODEOWNERS;
- security checks;
- quality gates;
- signed commits si aplica;
- required linear history si aplica.

## Regla

Ninguna rama estable debe aceptar cambios directos sin justificación explícita.
