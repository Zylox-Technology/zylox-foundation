# Domain-Driven Design

## Postura Zylox

Usamos DDD liviano.

No buscamos complejidad ceremonial. Buscamos que el lenguaje del negocio quede reflejado en el código.

## Conceptos

### Ubiquitous Language

El lenguaje usado por negocio, producto, ingeniería y QA debe ser consistente.

### Entity

Objeto con identidad.

### Value Object

Objeto sin identidad, definido por sus valores.

Ejemplo:

- Money
- DateRange
- Percentage
- Currency

### Aggregate

Conjunto de entidades que mantienen invariantes juntas.

### Domain Event

Algo significativo que ocurrió en el dominio.

## Reglas

- El dominio debe expresar comportamiento, no solo datos.
- Evitar modelos anémicos cuando existan reglas claras.
- Los nombres deben reflejar lenguaje del negocio.
- Las invariantes deben vivir cerca del dominio.
- No introducir DDD pesado sin necesidad real.
