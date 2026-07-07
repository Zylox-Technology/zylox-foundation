# Engineering Principles

## 1. Engineering before technology

Zylox no se define por las herramientas que utiliza.

Las tecnologías se eligen porque resuelven un problema, no porque estén de moda.

## 2. Domain First

El dominio del problema tiene prioridad sobre el framework, la base de datos, la UI o la infraestructura.

Antes de escribir código, debemos entender qué problema estamos resolviendo.

## 3. Architecture before features

Una funcionalidad mal ubicada genera deuda técnica desde el primer día.

No se implementa una feature sin entender dónde vive dentro de la arquitectura.

## 4. Quality by Design

La calidad no se agrega al final.

Cada decisión debe facilitar pruebas, mantenimiento, observabilidad y evolución.

## 5. Documentation as Code

La documentación se versiona, se revisa y evoluciona junto al código.

Una decisión no documentada es conocimiento frágil.

## 6. Small Iterations

Preferimos entregas pequeñas, revisables y reversibles.

La velocidad real aparece cuando los cambios son fáciles de entender y corregir.

Las historias pequeñas son especialmente útiles mientras el patrón técnico todavía es incierto. Una vez estabilizados arquitectura, contratos, testing y operaciones, la entrega debe moverse hacia vertical slices completas: valor de usuario + backend + frontend + datos + validación + documentación.

## 7. Replaceable Tools

Toda herramienta debe poder reemplazarse sin reescribir el dominio.

Cloud, frameworks, ORMs, modelos de IA y librerías son detalles de implementación.

## 8. Explicit Decisions

Las decisiones importantes se registran mediante ADR o RFC.

No queremos arquitectura basada en memoria oral.

## 9. Testable by Default

Todo diseño debe poder probarse.

Si algo es difícil de testear, probablemente está mal acoplado.

Las capacidades auxiliares deben poder fallar o apagarse sin romper el caso de uso core, salvo que el dominio diga explícitamente lo contrario.

## 10. Leave it better

Cada cambio debe dejar el sistema en mejores condiciones que antes.
