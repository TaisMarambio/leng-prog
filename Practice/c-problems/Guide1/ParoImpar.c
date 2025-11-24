#include <stdio.h>

/*
Par o impar

Lea un número desde teclado e imprima si es par o impar.

*/


int main(void){
    int x = 0;

    printf("Ingrese un numero: \n");
    scanf("%d", &x);

    if (x % 2 == 0)
    {
        printf("El numero es par. \n");
    } 
    else 
    {
        printf("El numero es impar. \n");
    }
    
    return 0;
}