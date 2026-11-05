
Algoritmo CotizacionBasica
    Definir nombreCliente Como Caracter;
    Definir horas, precioHora, total Como Entero;

    precioHora <- 10000;

    Escribir "Ingrese el nombre del cliente:";
    Leer nombreCliente;
    Escribir "Ingrese las horas de alquiler:";
    Leer horas;

    total <- horas * precioHora;
    Escribir "Hola, ", nombreCliente, ": tu alquiler de ", horas, " horas cuesta $", total;
FinAlgoritmo