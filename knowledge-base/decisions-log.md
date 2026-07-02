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
