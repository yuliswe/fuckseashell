/////////////////////////////////////////////////////////////////////////////
// INTEGRITY STATEMENT (v3)
//
// By signing your name and ID below you are stating that you have agreed
// to the online academic integrity statement:
// https://student.cs.uwaterloo.ca/~cs136/current/assignments/integrity.shtml
/////////////////////////////////////////////////////////////////////////////
// I received help from and/or collaborated with:

// ERROR_NO_INTEGRITY_STATEMENT
//
// Name: ERROR_NO_NAME
// login ID: ERROR_NO_LOGIN
/////////////////////////////////////////////////////////////////////////////


#include "cs136.h"

void print_grade(int num, int denom) {
}

///////////////////////////////////////////////////////
// You do not need to modify the rest of the program //
///////////////////////////////////////////////////////

// test_print_grade() tests the print_grade function by passing it pairs of
//   integers read from input, stopping only when a failure occurs
// note: prints an extra information and a newline
//       the print_grade should not print any newlines
// effects: reads input
//          produces output
void test_print_grade(void) {
  int num = read_int();
  int denom = read_int();
  if (denom != READ_INT_FAIL) {
    printf("%d/%d = ", num, denom);
    print_grade(num, denom);
    printf("\n");
    test_print_grade();
  }
}

int main(void) {
  int* a = malloc(sizeof(int) * 1);
  printf("%d", *a);
  test_print_grade();
}
