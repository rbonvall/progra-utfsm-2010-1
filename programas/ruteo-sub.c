#include <stdio.h>

int x;

int F(int a, int *b) {
    int c;

    a = 15;
    *b = 20;
    c = a + *b;
    return 2 * c;
}

int main() {
    int y;

    x = 2;
    y = 3;
    x = F(2 * x, &y);
    printf("x = %d, y = %d\n", x, y);
}
