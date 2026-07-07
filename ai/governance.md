# AI Governance

## Objetivo

Definir reglas de gobierno para uso de IA en Zylox.

## Elementos mínimos

- owner humano;
- objetivo;
- alcance;
- herramientas;
- datos permitidos;
- límites;
- evaluación;
- riesgos;
- métricas;
- logs;
- revisión periódica.

## Cuándo documentar

Debe documentarse cuando IA:

- impacta procesos recurrentes;
- interactúa con datos internos;
- usa herramientas;
- genera código productivo;
- asiste decisiones relevantes;
- se integra a un producto;
- afecta usuarios o clientes.

## Regla

Toda capacidad de IA que se vuelve parte del proceso debe poder auditarse.

## Aprendizaje adaptativo

Cuando un sistema aprende de correcciones o decisiones humanas:

- el owner humano y el propósito deben estar documentados;
- las señales deben minimizar datos sensibles y evitar texto crudo si no es necesario;
- el aprendizaje debe ser por usuario/tenant cuando el dominio requiera aislamiento;
- la contribución debe ser reversible si el registro fuente se edita o elimina;
- un fallo del learner debe degradar a fallback si la operación core puede completarse sin él;
- la trazabilidad debe indicar qué decisión humana confirmó la señal.
