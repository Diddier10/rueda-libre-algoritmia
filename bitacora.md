# Bitácora de Desarrollo — Día 1: Pensamiento Computacional y Algoritmo de Alquiler

## 1. Flujo Inicial de Atención (Proceso Presencial)

1. **Bienvenida al local:** El cliente entra a la tienda y lo saludamos para saber qué tipo de recorrido tiene pensado hacer y qué busca.
2. **Elección de bici y plan:** Le ayudamos a escoger la bicicleta ideal (urbana, montaña o rural) y el plan que mejor le acomode (por horas, día completo o fin de semana).
3. **Registro de datos:** Llenamos rápidamente su ficha con nombre, documento de identidad, correo y teléfono, y le explicamos las condiciones del servicio.
4. **Pago:** Procesamos el cobro de la tarifa elegida.
5. **Puesta a punto y entrega:** Graduamos la altura del sillín a su medida, le entregamos su casco ajustado y el candado con su clave o llave, revisando que todo funcione bien.
6. **Recomendaciones y salida:** Le damos un par de tips prácticos sobre el uso del candado, normas en la vía y la hora límite de devolución. Con todo listo, sale directo a disfrutar la ciudad.

---

## 2. Puntos de Ambigüedad Detectados (Lectura Literal)

* **Falta de verificación de stock:** El algoritmo asumía que siempre hay bicicletas del tipo deseado. Si no hay disponibilidad, el ejecutor no sabe cómo reaccionar ni cómo cerrar la atención.
* **Validación de pago no contemplada:** No se especificaba qué hacer si la tarjeta del cliente es rechazada o si no cuenta con el dinero para el depósito de seguridad.
* **Fallo en revisión de equipo:** Se indicaba *"revisando juntos que los frenos funcionen"*, pero no había instrucción de qué hacer si los frenos fallan o si el casco no le ajusta.
* **Ausencia de punto de parada explícito:** Faltaba definir las salidas de emergencia (finalización del proceso) cuando la transacción no se puede completar.

---

## 3. Algoritmo Final Corregido (Proceso de Alquiler)

1. **Inicio:** El cliente ingresa al local de *Rueda Libre*.
2. **Consultar disponibilidad:** Preguntar al cliente qué tipo de bicicleta (urbana, montaña o rural) y plan requiere.
3. **¿Hay bicicletas disponibles del tipo solicitado?**
   * **NO:** Informar al cliente que no hay disponibilidad en el momento, ofrecer disculpas e **IR AL PASO 10 (FIN)**.
   * **SÍ:** Reservar la bicicleta temporalmente en el sistema y continuar al paso 4.
4. **Registro de datos:** Solicitar y registrar nombre completo, documento de identidad, correo y teléfono del cliente en el sistema.
5. **Procesar pago y depósito:** Cobrar la tarifa del plan seleccionado y el depósito de garantía.
6. **¿El pago fue aprobado?**
   * **NO:** Solicitar otro medio de pago. Si el cliente no puede pagar, cancelar el registro e **IR AL PASO 10 (FIN)**.
   * **SÍ:** Emitir comprobante de pago y continuar al paso 7.
7. **Asignación de equipo:**
   * Ajustar el sillín de la bicicleta a la altura del cliente.
   * Entregar un casco de la talla del cliente y un candado con su clave/llave.
8. **Verificación de estado e inspección:** Probar el funcionamiento de frenos, presión de llantas y ajuste del casco.
9. **¿El equipo está en óptimas condiciones?**
   * **NO:** Reemplazar el elemento defectuoso (o cambiar la bicicleta por otra del mismo tipo) y regresar al paso 8.
   * **SÍ:** Entregar las instrucciones sobre uso del candado, normas de tránsito y hora límite de devolución.
10. **Fin:** El cliente sale del local con la bicicleta, el casco y el candado (Proceso finalizado).

---

## 4. Justificación de las Características del Algoritmo

* **Precisión:** Cada instrucción especifica sin ambigüedades qué hacer. *Ejemplo:* El Paso 4 indica exactamente qué datos pedir ("nombre completo, documento de identidad, correo y teléfono") en lugar de decir solo "pedir datos".
* **Finitud:** El flujo cuenta con un número limitado de pasos y garantiza siempre un cierre. *Ejemplo:* Si no hay bicicletas disponibles (Paso 3) o si el pago es rechazado (Paso 6), el algoritmo se redirige directamente al Paso 10 ("FIN") para no quedar atrapado en un ciclo infinito.
* **Orden:** Los pasos están estructurados en una secuencia lógica estricta que no se puede alterar. *Ejemplo:* No se puede cobrar la tarifa (Paso 5) antes de verificar si hay inventario de bicicletas disponibles (Paso 3).
* **Determinismo:** Ante las mismas condiciones de entrada, se obtiene siempre el mismo resultado. *Ejemplo:* Si entra un cliente con disponibilidad de bicicleta y pago aprobado, el algoritmo siempre terminará con la entrega exitosa del equipo en el Paso 10.
* **Efectividad:** Todas las instrucciones son operaciones realizables en la práctica con los recursos de la tienda. *Ejemplo:* Probar la presión de las llantas y el ajuste del casco (Paso 8) son acciones físicas directas que el personal puede ejecutar en pocos segundos.

---

## 5. Los Cuatro Pilares del Pensamiento Computacional

* **Descomposición:** Se dividió la atención completa del local en 5 módulos o subprocesos independientes:
  * Consulta de inventario.
  * Registro de datos del cliente.
  * Procesamiento del pago y garantía.
  * Inspección y ajuste técnico del equipo.
  * Entrega e instrucciones de salida.
* **Reconocimiento de patrones:** Se identificaron las tareas estandarizadas que se repiten exactamente igual con cada cliente que entra a la tienda:
  * La solicitud del mismo conjunto de datos personales.
  * La verificación obligatoria del cobro antes de entregar el equipo.
  * La prueba de seguridad de frenos y casco previa a la salida.
* **Abstracción:** Se ignoraron los detalles no esenciales para el flujo lógico del proceso, tales como:
  * El color o marca específica de la bicicleta y del casco.
  * La charla informal de bienvenida o temas de conversación con el cliente.
  * El método de pago exacto utilizado (efectivo, tarjeta o transferencia) o el modelo de la pasarela de pago.
* **Algoritmos:** Es la secuencia ordenada y estructurada de instrucciones (presentada en la sección 3) que resuelve    el proceso de atención de punta a punta con reglas claras y bifurcaciones de control.

Microreto 2 
   ##  Paso 3 
   | Entrada               | Proceso                       | Salida                                         | 
   | nombreCliente(Cadena) | total <- horas * PRECIO_HORA, | Mensaje: “Hola, [nombre]:                      |
   | horas (Entero)        | con PRECIO_HORA=10000(Entero).| tu alquiler de [horas] horas cuesta $[total]”. |

   ##  Paso 5
   | Entrada | Calculo a mano | Esperado|Obtenido|
   | Ana, 1 hora  | 10000 x 1 | 10000   | 10000 |
   | Ana, 3 horas | 100000 x 3| 30000   | 30000 |
   | Ana, 8 horas | 10000 x 8 | 80000   | 80000 |

   ## Paso 6
      0 horas: el algoritmo calcula 0 * 10000 = 0 y muestra “cuesta $0”. No falla, pero es un cobro sin sentido, porque nadie alquila 0 horas.
      Número negativo (por ejemplo -2): muestra “cuesta $-20000”. Es un resultado absurdo que podría provocar errores de cobro reales.
      Causa común: el algoritmo no valida la entrada, así que acepta cualquier entero. Esto se resolverá en la semana 2 con condicionales.
      