// William Dam
// CPSC 240-3
// March 10, 2025
// Email: wdam1@csu.fullerton.edu

#include <stdio.h>
#include <stdlib.h>

extern void _start();  // Declare the external assembly function

int main() {
    // Just call the assembly code, which will handle the printing and exiting.
    _start();

    return 0;
}
