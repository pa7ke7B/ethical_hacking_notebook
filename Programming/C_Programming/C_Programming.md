# C Programming

## hello_world.c

``` c
#include <stdio.h>

int main(int argc, char *argv[]) {
        if (argc < 2) {
                printf("%s\n", "Pass your name as an argument");
                return -1;
        } else {
               printf("Hello %s\n", argv[1]);
               return 0;
        }
}

```

The hello_world.c program takes in a name for an argument then prints out "Hello NAME".

In order to run c programs you must first compile them using ```gcc c_program.c -o c_program``` then execute them using ```./c_program```. 