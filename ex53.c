#include<stdio.h>

int dobro(int a){
    a = a * 2;
    return a;
}

int main(){
    int a = 5;

    printf("%d\n", a);
    printf("%d\n", dobro(a));
    printf("%d\n", a);

    return 0;
}

