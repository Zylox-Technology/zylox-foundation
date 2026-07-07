# Architecture Principles

## Objetivo

La arquitectura debe permitir que el producto evolucione sin perder claridad.

No buscamos complejidad innecesaria. Buscamos estructuras que reduzcan el costo del cambio.

## Principios

### 1. Separar dominio de infraestructura

El dominio no debe depender de frameworks, bases de datos, APIs externas ni detalles de UI.

### 2. Aislar decisiones reemplazables

Toda decisión que pueda cambiar en el futuro debe estar encapsulada.

### 3. Preferir casos de uso sobre servicios gigantes

Los casos de uso expresan intención de negocio.

Preferimos:

- `RegisterFinancialEvent`
- `CreateObjective`
- `GenerateProjection`

Antes que:

- `FinancialService`
- `UserService`
- `GeneralManager`

### 4. Diseñar límites claros

Cada módulo debe tener responsabilidades explícitas.

Separar capacidades core de capacidades auxiliares. Una operación de negocio core no debe depender de una sugerencia, optimización, aprendizaje, analytics o proveedor externo si el producto puede entregar el resultado principal sin eso.

Cuando una capacidad futura pueda usar un proveedor externo o IA, definir primero un contrato/provider boundary. Integrar el proveedor después, detrás del contrato, no directamente en el camino crítico.

### 5. Evitar dependencias circulares

Las dependencias deben tener dirección clara.

### 6. Diseñar para testing

La arquitectura debe permitir test unitarios, integración y end-to-end sin hacks.

### 7. Diseñar para observabilidad

Los sistemas deben poder explicar qué ocurrió, cuándo, dónde y por qué.

La degradación debe distinguir clases de falla: auth, red, timeout, validación, infraestructura, proveedor externo y error interno no son el mismo estado operativo ni deben colapsar en un mensaje genérico si requieren acciones distintas.

### 8. No optimizar prematuramente

Escalabilidad no significa complejidad temprana.

Significa no cerrar puertas innecesariamente.

## Regla de decisión

Antes de aceptar una decisión arquitectónica preguntar:

> ¿Esta decisión seguirá siendo razonable si el proyecto crece durante tres años?
