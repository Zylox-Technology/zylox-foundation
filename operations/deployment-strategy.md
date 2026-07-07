# Deployment Strategy

## Objetivo

Definir cómo se despliegan cambios de forma segura.

## Estrategias posibles

- manual controlled deploy;
- automated deploy;
- blue/green;
- canary;
- rolling deploy;
- feature flags;
- dark launch.

## Criterios para elegir

- criticidad;
- cantidad de usuarios;
- riesgo del cambio;
- capacidad de rollback;
- monitoreo disponible;
- madurez del equipo;
- infraestructura.

## Todo deploy debe tener

- versión;
- responsable;
- cambios incluidos;
- ambiente;
- validaciones previas;
- validaciones posteriores;
- rollback plan;
- evidencia.

## Regla

Deploy sin rollback razonable es deuda operativa.

## Code deploy y schema deploy

El deploy de aplicación y el deploy de esquema/datos son gates separados.

No declarar un ambiente alineado solo porque el código está live. La evidencia mínima debe incluir:

- versión de aplicación desplegada;
- migration head/schema version aplicado;
- configuración efectiva esperada;
- smoke runtime contra el ambiente real.
