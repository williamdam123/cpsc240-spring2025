// Author information
//   Author name : William Dam
//   Author email: wdam1@csu.fullerton.edu
//   Author section: 240-3
//   Author CWID : 884616384

#include "stdio.h"

extern char* executive();

int main()
{
    printf("Welcome to Random Products, LLC.\n");
    printf("This software is maintained by William Dam\n\n");

    char* result = executive();

    printf("\nOh, %s.  We hope you enjoyed your arrays.  Do come again.\n", result);
    printf("A zero will be returned to the operating system.\n");

    return 0;
}
