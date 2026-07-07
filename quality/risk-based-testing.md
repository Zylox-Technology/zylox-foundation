# Risk-Based Testing

No probamos todo con la misma profundidad. Probamos más donde el riesgo es mayor.

## Dimensiones de riesgo

- Impacto para el usuario.
- Impacto financiero.
- Impacto legal o regulatorio.
- Frecuencia de uso.
- Complejidad técnica.
- Historial de defectos.
- Dependencias externas.
- Seguridad.
- Datos sensibles.
- Cambios recientes.

La estrategia de testing debe justificar por qué algo se prueba profundamente, superficialmente o no se prueba en una etapa determinada.

## Cierre de riesgos

Todo riesgo abierto debe terminar en uno de estos estados:

- `CLOSED`: resuelto y validado.
- `ACCEPTED_CONTROLLED_RELEASE_CONSTRAINT`: aceptado solo bajo restricciones explícitas de prueba/control.
- `BLOCKER_PUBLIC_RELEASE`: no bloquea prueba controlada, pero bloquea release pública.
- `BLOCKER_V1`: bloquea la versión objetivo.

Evitar estados indefinidos como "later" o "pendiente" sin dependencia, criterio de cierre y target.
