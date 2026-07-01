# Test Pyramid

La automatización debe favorecer tests rápidos, confiables y mantenibles.

## Pirámide recomendada

1. Unit tests.
2. Integration tests.
3. API / contract tests.
4. UI tests.
5. End-to-end tests.

No usar E2E para validar lógica que puede cubrirse con unit tests.

Mantener pocos E2E críticos y estables.
