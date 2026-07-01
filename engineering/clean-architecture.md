# Clean Architecture

## Postura Zylox

Zylox utiliza Clean Architecture como guía, no como dogma.

El objetivo no es crear muchas carpetas. El objetivo es proteger el dominio y reducir acoplamiento.

## Capas conceptuales

### Domain

Contiene entidades, value objects, reglas de dominio y eventos.

No depende de ninguna otra capa.

### Application

Contiene casos de uso y orquestación.

Define qué quiere hacer el sistema.

### Infrastructure

Contiene implementaciones concretas.

### Presentation

Contiene interfaces de entrada.

## Regla de dependencias

Las dependencias apuntan hacia adentro.

Presentation → Application → Domain  
Infrastructure → Application / Domain contracts

Domain no conoce Infrastructure.

## Anti-patterns

- Entidades de dominio que importan SQLAlchemy, Django, Prisma o Entity Framework.
- Casos de uso que conocen detalles HTTP.
- Controladores con lógica de negocio.
- Servicios con cientos de métodos.
- Helpers globales sin propósito.
