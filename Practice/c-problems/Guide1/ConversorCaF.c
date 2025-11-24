#include <stdio.h>

/*
Conversor Celsius → Fahrenheit

Programe un conversor de Celsius a Fahrenheit y escriba en pantalla la conversión desde 0 a 300 grados Celsius 
en N pasos.

- Sin funciones
- Sin números mágicos (`#define`)

°F = °C × 9/5 + 32
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

    while (celsius <= maxC)
    {
        double fahrenheit = celsius * 9.0 / 5.0 + 32.0;
        printf("Celsius: %.2f Fahrenheit: %.2f.\n", celsius, fahrenheit);
        celsius = celsius + step;
    }
    
    return 0;
}