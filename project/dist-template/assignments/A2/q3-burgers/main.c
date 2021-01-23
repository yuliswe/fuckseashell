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

// IMPORTANT: review burger-io.txt to see the input format

// The partial printf("...") statements have been provided
// to avoid any unfortuante typos

void add_buns(int crates) {
  // printf("invalid: add_buns\n");
}

void add_cheese(int blocks) {
  // printf("invalid: add_cheese\n");
}

void add_patties(int boxes) {
  // printf("invalid: add_patties\n");
}

void add_pickles(int jars) {
  // printf("invalid: add_pickles\n");
}

void order(int burgers) {
  // printf("invalid: order\n");
  // printf("order complete: %d burgers\n", );
  // printf("order cancelled:\n");
  // printf("  not enough buns\n");
  // printf("  not enough cheese\n");
  // printf("  not enough patties\n");
  // printf("  not enough pickles\n");
}


void check_inventory(void) {
  // printf("inventory:\n");
  // printf("  buns: [%d] ", );
  // printf("  cheese: [%d] ", );
  // printf("  patties: [%d] ", );
  // printf("  pickles: [%d] ", );
  // printf("WARNING\n");
  // printf("LOW\n");
  // printf("OK\n");
}



///////////////////////////////////////////////////////
// You do not need to modify the rest of the program //
///////////////////////////////////////////////////////

// burger_io() is an I/O driver that reads commands and values from input
//   and then calls the corresponding burger inventory functions
// effects: reads input
//          produces output
void burger_io(void) {
  int cmd = read_symbol();
  if (cmd == lookup_symbol("add")) {
    int type = read_symbol();
    int qty = read_int();
    if (qty == READ_INT_FAIL) {
      printf("UNEXPECTED: INVALID INPUT FILE [add]\n");
      return;
    }
    if (type == lookup_symbol("buns")) {
      add_buns(qty);
    } else if (type == lookup_symbol("cheese")) {
      add_cheese(qty);
    } else if (type == lookup_symbol("patties")) {
      add_patties(qty);
    } else if (type == lookup_symbol("pickles")) {
      add_pickles(qty);
    } else {
      printf("UNEXPECTED: INVALID INPUT FILE [add]\n");
      return;
    }
  } else if (cmd == lookup_symbol("order")) {
    int qty = read_int();
    if (qty == READ_INT_FAIL) {
      printf("UNEXPECTED: INVALID INPUT FILE [order]\n");
      return;
    }
    order(qty);
  } else if (cmd == lookup_symbol("inventory")) {
    check_inventory();
  } else if (cmd == lookup_symbol("quit")) {
    return;
  } else {
    printf("UNEXPECTED: INVALID INPUT FILE [bad/missing command]\n");
    return;
  }
  burger_io();  
}

      
int main(void) {
  burger_io();
}
