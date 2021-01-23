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

void print_money(int amount) {
}

///////////////////////////////////////////////////////
// You do not need to modify the rest of the program //
///////////////////////////////////////////////////////

// test_print_money() tests the print_money function by passing it values
//   read from input, stopping only when a failure occurs
// note: prints an extra newline after each call to print_money
//       the print_money should not print any newlines
// effects: reads input
//          produces output
void test_print_money(void) {
  int amount = read_int();
  if (amount != READ_INT_FAIL) {
    print_money(amount);
    printf("\n");
    test_print_money();
  }
}

int main(void) {
  test_print_money();
}
