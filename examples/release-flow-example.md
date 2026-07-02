# Example: Release Flow

## Contexto

Flujo estándar para liberar una versión de producto.

## Módulos aplicados

- `operations/`
- `quality/`
- `product/`
- `engineering/`
- `templates/operations/`

## Flujo

1. Confirmar scope.
2. Actualizar VERSION.
3. Actualizar CHANGELOG.
4. Ejecutar tests críticos.
5. Revisar quality report.
6. Confirmar risks accepted.
7. Preparar release notes.
8. Crear tag.
9. Deploy.
10. Ejecutar smoke post-release.
11. Monitorear.
12. Comunicar.
13. Registrar feedback.

## Quality Gate

Release solo avanza si:

- no hay defectos críticos abiertos;
- smoke está aprobado;
- rollback está definido;
- owner está disponible;
- riesgos restantes fueron aceptados.
