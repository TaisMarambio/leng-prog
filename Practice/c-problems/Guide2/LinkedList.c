#include <stdio.h>

/*
Tip: tanto `realloc` como `malloc` pueden fallar. Contemplar eso.

### Programar una LinkedList

Se debe implementar usando un Node, como los presentados en clase, que almacena ints

```c
struct Node {
    int value;
    struct Node* next;
};
```

La lista tiene que soportar las siguientes operaciónes
- append: suma un elemento al final de la lista
- prepend: suma un elemento al principio de la lista
- delete: elimina la primera ocurrencia del valor dado. Devuelve 1 si encontró y eliminó el valor, 0 si no lo pudo encontrar
- find: devuelve 1 si existe en la lista y 0 si no
- print: Imprime la lista
- free: libera el espacio de memoria reservado para la lista
- len: devuelve la longitud de la lista
*/

struct Node {
    int value;
    struct Node* next;
};

void append(struct Node** head, int val){

}


