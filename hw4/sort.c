// Author information
//   Author name : William Dam
//   Author email: wdam1@csu.fullerton.edu
//   Author section: 240-3
//   Author CWID : 884616384

#include <stdio.h>
#include <stdlib.h>

extern void show_array(double* array, int count);
extern void normalize_array(double* array, int count);
extern void fill_random_array(double* array, int count);

int compare(const void *a, const void *b) {
    double num1 = *(double*)a;
    double num2 = *(double*)b;
    if (num1 > num2) return 1;
    if (num1 < num2) return -1;
    return 0;
}

int main() {
    const int ARRAY_SIZE = 100;
    double random_numbers[ARRAY_SIZE];

    // Step 1: Fill the array with random numbers using assembly
    fill_random_array(random_numbers, ARRAY_SIZE);

    // Step 2: Normalize the array (e.g., in the range of 0 to 1) using assembly
    normalize_array(random_numbers, ARRAY_SIZE);

    // Step 3: Show the unnormalized array
    printf("Unsorted array:\n");
    show_array(random_numbers, ARRAY_SIZE);

    // Step 4: Sort the array using C's qsort
    qsort(random_numbers, ARRAY_SIZE, sizeof(double), compare);

    // Step 5: Show the sorted array
    printf("\nSorted array:\n");
    show_array(random_numbers, ARRAY_SIZE);

    return 0;
}
