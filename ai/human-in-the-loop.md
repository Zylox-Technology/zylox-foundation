# Human-in-the-Loop

## Objetivo

Definir cuándo una decisión asistida por IA requiere revisión humana.

## Requiere revisión humana

- cambios de arquitectura;
- código productivo crítico;
- decisiones de seguridad;
- uso de datos sensibles;
- decisiones financieras;
- releases;
- comunicación externa sensible;
- cambios contractuales;
- acciones destructivas;
- decisiones que afecten usuarios reales.

## Niveles

### Low risk

Revisión opcional.

### Medium risk

Revisión recomendada.

### High risk

Revisión obligatoria.

### Critical risk

Aprobación explícita antes de ejecutar.

## Regla

La autonomía de la IA debe ser proporcional al riesgo.

## Draft / Confirm / Persist

Para dominios con impacto financiero, legal, de seguridad o datos sensibles:

1. La IA o intérprete genera una propuesta.
2. La propuesta se muestra como draft editable.
3. La persona confirma o corrige.
4. Recién entonces se persiste el dato de negocio.

El sistema no debe aprender ni persistir desde una interpretación no confirmada.
