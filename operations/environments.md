# Environments

## Objetivo

Definir ambientes claros para desarrollo, testing, staging y producción.

## Ambientes típicos

### Local

Uso individual.

Puede tener datos sintéticos.

### Development

Integración temprana.

Puede ser inestable.

### QA / Test

Validación funcional y automatización.

Debe tener datos controlados.

### Staging

Lo más parecido posible a producción.

Usado para release readiness.

### Production

Ambiente real.

Debe estar protegido, monitoreado y auditado.

## Cada ambiente debe definir

- propósito;
- owner;
- datos permitidos;
- URL o acceso;
- secretos;
- reglas de deploy;
- monitoreo;
- estrategia de rollback;
- restricciones.

## Regla

Un ambiente sin propósito claro genera pruebas poco confiables.

## Perfiles de infraestructura

Un ambiente también debe declarar restricciones operativas reales: free tier, cold start, single instance, multi-instance, always-on, networking, storage y límites de rate/timeout.

Los clientes deben degradar según la clase de falla. En infraestructura efímera, un timeout de cold start no debe tratarse automáticamente como fallo de autenticación o pérdida de sesión.
