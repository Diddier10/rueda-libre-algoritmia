# Rueda Libre: algoritmos de cobro en PSeInt

Proyecto de práctica de lógica de programación con PSeInt. Automatiza los cálculos de cobro de Rueda Libre, un negocio de alquiler de bicicletas y recorridos guiados, donde el cobro es el paso que más errores genera.

**Versión actual:** v0.1 (algoritmos secuenciales, sin validaciones).

## Algoritmos

| Archivo | Qué hace |
|---|---|
| `algoritmos/01_cotizacion_basica.psc` | Cotiza el alquiler de una bicicleta urbana por horas a $10.000 la hora (casco y candado incluidos). |
| `algoritmos/02_reserva_recorridos.psc` | Calcula el valor total, el anticipo del 30 % (redondeado al entero más cercano) y el saldo pendiente de la reserva de un recorrido guiado. |
| `algoritmos/03_cuenta_grupal.psc` | Cotiza la cuenta de un grupo (alquiler + recorrido), suma el aporte voluntario del 10 % y calcula el valor por persona redondeado hacia arriba a la centena. |

## Cómo abrirlos en PSeInt

1. Instala PSeInt desde su sitio oficial: https://pseint.sourceforge.net
2. En **Configurar → Opciones del Lenguaje (perfiles)**, selecciona el perfil **Estricto** (exige definir las variables y usar `;` al final de cada instrucción).
3. Abre PSeInt y ve a **Archivo → Abrir**.
4. Selecciona un archivo de la carpeta `algoritmos/`.
5. Pulsa **Ejecutar** (botón de play o tecla **F9**) y escribe los datos en la consola.
6. Para ver el diagrama de flujo: **Archivo → Editar Diagrama de Flujo**.

## Estructura

```
.
├── algoritmos/
│   ├── 01_cotizacion_basica.psc
│   ├── 02_reserva_recorridos.psc
│   └── 03_cuenta_grupal.psc
├── bitacora.md
└── README.md
```

La `bitacora.md` documenta, para cada algoritmo, la tabla de entrada, proceso y salida, las pruebas de escritorio y los casos de prueba.

## Limitaciones conocidas (v0.1)

- No se valida la entrada: con 0 o valores negativos los cálculos no tienen sentido, y con 0 personas en `03_cuenta_grupal.psc` hay división entre cero.
- Se resolverá en la semana 2 con decisiones (`Si ... SiNo`).