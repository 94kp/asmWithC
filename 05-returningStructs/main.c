#include <stdio.h>

struct test
{
    int a;
    char b;
    char e;
};

extern struct test my_asm();

int main(int argc, char **argv)
{
    struct test a = my_asm();
    printf("%i %c", a.a, a.b);
}