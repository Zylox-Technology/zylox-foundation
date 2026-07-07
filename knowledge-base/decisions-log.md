# Decisions Log

## DEC-001: Repository name

Se decidió usar:

```text
zylox-foundation
```

Motivo:

- No depende de tecnología.
- No depende de un producto.
- No depende de un proveedor.
- Sirve como base institucional y técnica.
- Puede seguir teniendo sentido en el largo plazo.

## DEC-002: Modular structure

Se decidió organizar el framework en módulos:

- company
- engineering
- quality
- product
- ai
- operations
- templates
- starter-kits
- examples
- knowledge-base

## DEC-003: Engineering and Quality separados

Se decidió separar Engineering y Quality.

Motivo:

- Desarrollo y calidad son disciplinas conectadas, pero distintas.
- Engineering debe construir sistemas testeables.
- Quality debe definir estrategia, riesgo, evidencia, métricas y gates.

## DEC-004: AI vendor-neutral

Se decidió que AI sea vendor-neutral.

Motivo:

- Zylox no debe depender de OpenAI, Claude, Gemini, Copilot, Cursor ni ningún proveedor.
- Los principios deben sobrevivir al cambio de herramientas.

## DEC-005: Changelogs por módulo

Se decidió que cada módulo activo tenga `CHANGELOG.md`.

Motivo:

- Trazabilidad.
- Versionado.
- Auditoría.
- Continuidad entre cambios.

## DEC-006: Knowledge Base

Se decidió agregar `knowledge-base/` para comprimir contexto y facilitar continuidad.

Motivo:

- El chat creció demasiado.
- El framework necesita contexto reutilizable.
- Futuros chats o herramientas de IA deben poder retomar sin perder hilo.

## DEC-007: Repository governance hardening

Se decidiÃ³ agregar governance operativo real al repositorio `zylox-foundation` como patch release `0.6.1`.

Incluye:

- CODEOWNERS.
- Pull Request template.
- Branch protection policy.
- CODEOWNERS policy.
- Release governance policy.

Motivo:

- Zylox Foundation debe ser confiable antes de ser usado como base para productos reales.
- Los cambios al framework deben ser revisables, trazables y versionados.
- La operaciÃ³n del repositorio debe reflejar los mismos principios que Zylox promueve para sus proyectos.
## DEC-008: Product-validated governance patterns

Se decidió incorporar en `zylox-foundation` patrones generalizables validados por Financial OS como patch release `0.6.2`.

Incluye:

- vertical slices después de estabilizar patrones técnicos;
- core vs auxiliary capability boundary;
- graceful degradation por clase de falla;
- provider boundary antes de integraciones externas o IA;
- release candidate gate y promotion-only release;
- environment alignment gate: versión de app + schema/migration + config + smoke runtime;
- inteligencia auxiliar no bloqueante, human-correctable y reversible;
- security regression como validación de integridad, no solo status code;
- templates para alignment, cierre de riesgos, matriz de inputs y controlled device testing.

Motivo:

- Financial OS probó estos patrones en entrega real.
- Son independientes del dominio financiero.
- Refuerzan Documentation as Code, Quality by Design, Risk First, Human-in-the-loop y AI vendor-neutral sin rediseñar Foundation.
