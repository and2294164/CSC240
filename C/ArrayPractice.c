#include<stdio.h>
#include<stdbool.h>

int main() {

    int nums[10];
    int tempNum;
    int count;
    bool lessThanTen = false;

    // just checking to see if you've entered a proper number
    while ( !lessThanTen ) {

        printf("Enter a positive number less than 10: ");
        scanf("%d", &count);

        if (count >= 10) {

            printf("%d is greater than 10.\n", count);
        } 
        else if (count < 0) {

            printf("%d is negative.\n", count);
        } 
        else if (count == 0) {

            printf("Technically you're not wrong. Program's over though. Try again.\n");
            lessThanTen = true;
        } 
        else if(count < 10) {

            lessThanTen = true;
        }
    }

    printf("Enter %d numbers: ", count);
    printf("\n");

    for (int i = 0; i < count; i++) {

        printf("Enter a number: ");
        scanf("%d", &tempNum);
        printf("\n");

        nums[i] = tempNum;
    }

    for (int i = 0; i < count; i++) {

        if (nums[i] % 2 == 0) {
            printf("nums[%d] : %d\n", i, nums[i]);
        }
        
    }

}



/*
Write a C program that prompts the user for a number less than 10.  Then prompt the user for that many numbers, adding each number to an array (you can use 10 as the size of 
the array and only use the slots you need).  Print the even numbers from the array on a single line)

Write a C program that does the following:
    Create an array of 10 integers
    Prompt the user for a number less than 10
    Create a for loop that prompts the user for that many integers, adding them to the array
    Prints the even numbers in the array

*/