
Algoritmo ReservaRecorridos
    Definir nombreRecorrido Como Caracter;
    Definir cantidadPersonas, precioPersona, valorTotal, anticipo, saldoPendiente Como Entero;
    Definir porcentajeAnticipo Como Real;

    porcentajeAnticipo <- 0.30;

    Escribir "Ingrese el nombre del recorrido:";
    Leer nombreRecorrido;
    Escribir "Ingrese el precio por persona:";
    Leer precioPersona;
    Escribir "Ingrese la cantidad de personas:";
    Leer cantidadPersonas;

    valorTotal <- precioPersona * cantidadPersonas;
    anticipo <- Redon(valorTotal * porcentajeAnticipo);
    saldoPendiente <- valorTotal - anticipo;

    Escribir "Reserva para el recorrido: ", nombreRecorrido;
    Escribir "Valor total a pagar: $", valorTotal;
    Escribir "Anticipo a pagar hoy (30%): $", anticipo;
    Escribir "Saldo pendiente para el día del recorrido: $", saldoPendiente;
FinAlgoritmo