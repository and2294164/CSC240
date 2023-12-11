#include <stdio.h>
#include <string.h>

void func(int i) {
    for(i; i > 0; i--) {
        printf("%d ", i);
    }
    printf("\n");
}

int stringlength(const char *str) {

    int length = 0;
    while(!(*str == '\0')) {
        length++;
        str++;
    }
    return length;    
}

void addindex(const int *nums) {

    int index = 0;
    printf("(");
    while(*nums != '\0') {
        printf("%d, ", *nums + index);
        nums++;
        index++;
    }
    printf(")\n");
}


int main(void) {
    int a = 10;
    int b = 5;
    int c = b + a;

    func(a);
    func(c);

    printf("\nstrlen\n");
    char str1[] = "hello";
    char *str1ptr = str1;
    printf("hello=%d\n", stringlength(str1ptr));


    int nums[] = {1,2,3,'\0'};
    printf("\naddindex:");
    addindex(&nums[0]);
    
}