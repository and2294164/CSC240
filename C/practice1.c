#include<stdio.h>
#include<string.h>

/* This file will not compile until it is complete - you can comment out
 * any failing code that you haven't completed yet.
 */



int triple_it(int);
int array_max(int a[], int len);
int letter_count(char a[], int len);
void printThem(int count);

struct practice1_t {

  char subject[3];
  int subjectNumber;
  int hours;

};


/* Define struct */
int main(void) {
  int nums[11] = {1, 3, 5, 7, 9, 11, 10, 8, 6, 4, 2};
  char str[] = "CSC240 Fall 2019";
  
  //int num;
  //float farray[10];

  printf("triple_it: ");
  for(int ii=0;ii<10;ii++) { 
    printf("%d ", triple_it(ii));
  }
  printf("\n");

  printf("\narray_max: %d\n", array_max(nums, 11));

  printf("\nletter_count: %d\n", letter_count(str, strlen(str)));

  struct practice1_t csc240 = {"csc", 240, 3};
  printf("\nclass: %s%d", csc240.subject, csc240.subjectNumber);
  printf("\ncredit hours: %d\n", csc240.hours);


  printf("\nprintThem:\n");
  printThem(50);

  return 0;
}

int triple_it (int x) {
  return (x * 3);
}

int array_max(int a[], int len) {

  int largest = a[0];
  for(int i = 0; i < len; i++) {

    if (a[i] > largest) {

      largest = a[i];
    }
  }

  return largest;
}

int letter_count(char a[], int len) {

  int count = 0;

  for(int i = 0; i <= len; i++) {

    count++;
  }
  return count - 1;     // have to subtract 1 because of the null terminator
}

void printThem(int count) {

  int print = 0;

  for(int i = 0; i <= count; i++) {

    if (i % 7 == 0) {
      
    }
    else if ((i % 5 == 0) && (i % 3 == 0)) {

      printf("fifteen ");
      print++;
    }
    else if (i % 5 == 0) {

      printf("five ");
      print++;
    }
    else if(i % 3 == 0) {
      
      printf("three ");
      print++;
    }
    else {

      printf("%d ", i);
      print++;
    }

    if(print >= 15) {

      printf("\n");
      print = 0;
    }
  }
  printf("\n");

}