# Commit Convention

## Formato

Usamos Conventional Commits.

```text
type(scope): description
```

## Tipos

- feat
- fix
- docs
- refactor
- test
- chore
- ci
- build
- perf

## Ejemplos

```text
feat(financial-events): add register event use case
docs(adr): document monorepo decision
test(parser): add fuzzy matching cases
refactor(domain): split objective and plan entities
```

## Reglas

- El commit debe ser entendible sin abrir el diff.
- No usar mensajes genéricos como `changes`, `fix`, `update`.
- Un commit debe representar una intención clara.
