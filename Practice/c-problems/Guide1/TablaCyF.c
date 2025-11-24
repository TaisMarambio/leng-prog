#include <stdio.h>

/*
Tabla Celsius ↔ Fahrenheit con N pasos

Extienda el ejercicio anterior para mostrar ambas columnas: Celsius y Fahrenheit.
Ejemplo de salida:

C     F
0     32
20    68
...

*/

int main(void)
{
    int N = 0;
    const double minC = 0.0;
    const double maxC = 300.0;
    double step;

    printf("Ingrese N \n");
    scanf("%d", &N);

    step = (maxC - minC) / N;
    double celsius = minC;

    printf("%-8s%-8s\n", "C", "F");  // encabezado
    while (celsius <= maxC)
    {
        double fahrenheit = celsius * 9.0 / 5.0 + 32.0;
        printf("%-8.0f%-8.0f\n", celsius, fahrenheit);
        celsius = celsius + step;
    }


    return 0;
}