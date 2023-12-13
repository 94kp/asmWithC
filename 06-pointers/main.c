#include <stdio.h>

struct test
{
    int a;
    char b;
    char e;
};

extern int my_asm();

int main(int argc, char **argv)
{
    int a = 50;
    int *ptr = &a;

    printf("%i\n", my_asm(ptr));

    return 0;
}