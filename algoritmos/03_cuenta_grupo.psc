
Algoritmo CuentaGrupal
    Definir cantidadBicicletas, horasAlquiler, precioRecorrido, cantidadIntegrantes Como Entero;
    Definir precioHora, unidadRedondeo Como Entero;
    Definir costoAlquiler, costoRecorrido, subtotal, aporte, totalCuenta, valorPersonaRedondeado Como Entero;
    Definir porcentajeAporte Como Real;

    precioHora <- 10000;
    porcentajeAporte <- 0.10;
    unidadRedondeo <- 100;

    Escribir "Ingrese la cantidad de bicicletas urbanas:";
    Leer cantidadBicicletas;
    Escribir "Ingrese las horas de alquiler:";
    Leer horasAlquiler;
    Escribir "Ingrese el precio del recorrido por persona:";
    Leer precioRecorrido;
    Escribir "Ingrese la cantidad de personas del grupo:";
    Leer cantidadIntegrantes;

    costoAlquiler <- cantidadBicicletas * horasAlquiler * precioHora;
    costoRecorrido <- precioRecorrido * cantidadIntegrantes;
    subtotal <- costoAlquiler + costoRecorrido;
    aporte <- Redon(subtotal * porcentajeAporte);
    totalCuenta <- subtotal + aporte;
    valorPersonaRedondeado <- Trunc((totalCuenta + cantidadIntegrantes * unidadRedondeo - 1) / (cantidadIntegrantes * unidadRedondeo)) * unidadRedondeo;

    Escribir "";
    Escribir "========== RESUMEN DE LA CUENTA ==========";
    Escribir "Bicicletas urbanas: ", cantidadBicicletas;
    Escribir "Horas de alquiler:  ", horasAlquiler;
    Escribir "Personas del grupo: ", cantidadIntegrantes;
    Escribir "------------------------------------------";
    Escribir "Valor del alquiler:        $", costoAlquiler;
    Escribir "Valor del recorrido:       $", costoRecorrido;
    Escribir "Subtotal:                  $", subtotal;
    Escribir "Aporte voluntario (10%):   $", aporte;
    Escribir "Total de la cuenta:        $", totalCuenta;
    Escribir "------------------------------------------";
    Escribir "VALOR A COBRAR POR PERSONA: $", valorPersonaRedondeado;
    Escribir "==========================================";
FinAlgoritmo