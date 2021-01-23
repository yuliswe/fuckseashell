// This program reads in integers from input
//   and prints them out in reverse order

#include "cs136.h"

// print_reverse() reads in all integers from input
//   and prints them out in reverse order
// effects: produces output
//          reads input
void print_reverse(void) {
  int n = read_int();
  if (n != READ_INT_FAIL) {
    print_reverse();
    printf("%d\n", n);
  }
}


int main(void) {
  print_reverse();
}
