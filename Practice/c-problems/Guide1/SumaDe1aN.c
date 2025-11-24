#include <stdio.h>

/*
Suma de 1 a N

Lea un número N y calcule la suma de los números del 1 al N.

- Resolver con `for` y luego con `while`

*/

int main (void){
    int n = 0;

    printf("Ingrese un numero: \n");
    scanf("%d", &n);

    int sum = 0;
    for(int i=1; i<=n; i++){
        sum = sum + i;
    }
    
    printf("La suma de los numeros del 1 al %d es: %d \n", n, sum);

    return 0;
}