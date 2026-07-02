# Prompting Standards

## Objetivo

Definir estándares mínimos para prompts reutilizables.

## Un prompt reusable debe incluir

- objetivo;
- rol;
- contexto;
- inputs;
- restricciones;
- formato de salida;
- criterios de calidad;
- ejemplos si aplica;
- qué no debe hacer;
- cómo manejar incertidumbre.

## Estructura sugerida

```text
Role:
Task:
Context:
Inputs:
Constraints:
Output format:
Quality criteria:
Do not:
Ask for clarification when:
```

## Reglas

- No pedir respuestas genéricas.
- No ocultar restricciones importantes.
- No pedir decisiones críticas sin revisión humana.
- No mezclar demasiados objetivos en un mismo prompt.
- Versionar prompts importantes.
