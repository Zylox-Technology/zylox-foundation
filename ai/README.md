# AI

El módulo AI define cómo Zylox trabaja con inteligencia artificial de forma vendor-neutral, segura, trazable y alineada con Product, Engineering y Quality.

Este módulo no está diseñado alrededor de una herramienta específica.

No depende de OpenAI, Claude, Gemini, Copilot, Cursor, LangChain, LlamaIndex, Azure, AWS ni ningún proveedor particular.

La IA es tratada como una capacidad de ingeniería, no como una moda tecnológica.

## Principio rector

> AI accelerates engineering. It does not replace engineering judgment.

La IA acelera la ingeniería. No reemplaza el criterio ingenieril.

## Relación con otros módulos

### Company

AI debe respetar los principios institucionales de Zylox: pensamiento crítico, calidad, documentación y sostenibilidad.

### Product

AI puede asistir discovery, análisis, hipótesis, historias, criterios de aceptación, feedback y priorización.

### Engineering

AI puede asistir diseño, documentación, generación de código, refactoring, análisis de arquitectura, debugging y revisión.

### Quality

AI puede asistir diseño de pruebas, generación de casos, análisis de riesgo, automatización, evidencia, reporting y detección de gaps.

## Alcance

AI cubre:

- principios de uso de IA;
- colaboración humano + IA;
- context engineering;
- prompting standards;
- agent design;
- tool use;
- RAG;
- evaluation;
- safety and security;
- data privacy;
- human-in-the-loop;
- AI for Engineering;
- AI for Quality;
- AI for Product;
- governance;
- observability and costs.

## Escenarios cubiertos

Este módulo debe usarse cuando:

- se usa IA para escribir código;
- se usa IA para analizar requerimientos;
- se usa IA para generar casos de prueba;
- se usa IA para diseñar agentes;
- se usa IA con herramientas externas;
- se usa IA con datos internos;
- se usa RAG;
- se necesita evaluar calidad de respuestas;
- se quieren definir límites de seguridad;
- se quiere evitar dependencia excesiva de un proveedor;
- se quiere auditar decisiones asistidas por IA.

## Documentos incluidos

- `principles.md`
- `human-ai-collaboration.md`
- `context-engineering.md`
- `prompting-standards.md`
- `agent-design.md`
- `tool-use.md`
- `rag.md`
- `evaluation.md`
- `safety-and-security.md`
- `data-privacy.md`
- `human-in-the-loop.md`
- `ai-for-engineering.md`
- `ai-for-quality.md`
- `ai-for-product.md`
- `governance.md`
- `observability-and-costs.md`
- `CHANGELOG.md`

## Versionado del módulo

Versión actual: `0.1.0`

## Criterio de cumplimiento

Un proyecto alineado con AI debe poder demostrar:

- objetivo de uso de IA;
- contexto definido;
- límites explícitos;
- riesgos identificados;
- datos permitidos y prohibidos;
- evaluación mínima;
- trazabilidad;
- responsable humano;
- fallback o revisión humana cuando aplique;
- control de costo si usa proveedores pagos;
- alineación con Product, Engineering y Quality.

## Firmado por

Zylox Engineering Council
