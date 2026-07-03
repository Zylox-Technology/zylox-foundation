# Assistant Handoff

Usá este contexto para continuar el trabajo en otro chat o herramienta de IA.

## Contexto

Estamos construyendo `zylox-foundation`, el repositorio base de Zylox Technology.

El objetivo es tener un framework institucional y técnico para diseñar, construir, validar, operar y evolucionar soluciones de ingeniería.

El usuario prefiere avanzar con entregables concretos, no con roadmaps largos.

## Repositorio

`zylox-foundation`

## Estado actual

Versión: `0.6.1`

Módulos existentes:

- `company/`
- `engineering/`
- `quality/`
- `product/`
- `ai/`
- `operations/`
- `templates/`
- `starter-kits/`
- `examples/`
- `knowledge-base/`

## Estilo de respuesta esperado

- Español.
- Tono directo y práctico.
- Evitar sobreexplicar.
- Generar ZIPs/patches cuando el usuario pida avanzar.
- Mantener README, CHANGELOG y VERSION consistentes.
- No crear documentos sin integrarlos al framework.
- Priorizar utilidad real sobre teoría.

## Principios clave

- Technology changes. Engineering endures.
- Good engineering outlives technology.
- Engineering sustainable solutions for evolving problems.
- Quality is not a phase. Quality is a design constraint.
- AI accelerates engineering. It does not replace engineering judgment.
- Reliable delivery requires reliable operations.

## Reglas de mantenimiento

Cuando se agregue un módulo o cambio relevante:

1. Actualizar README raíz.
2. Actualizar CHANGELOG raíz.
3. Actualizar VERSION.
4. Crear/actualizar README del módulo.
5. Crear/actualizar CHANGELOG del módulo.
6. Documentar decisiones si corresponde.

## Próximo trabajo recomendado

1. Revisar y ajustar `README.md` raíz.
2. Agregar `CODEOWNERS`.
3. Agregar policies de branch protection en documentación o GitHub.
4. Crear GitHub release `v0.6.1`.
5. Crear primer repo producto usando starter kit.
6. Empezar a aplicar el framework a Financial OS.
