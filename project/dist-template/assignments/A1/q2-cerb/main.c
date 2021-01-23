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

bool qualify_cerb_logical(int age, bool stopped_working, 
                          bool quit_voluntarily,bool ei_eligible,
                          int income_12months, int income_4weeks) {
  return true;
}

bool qualify_cerb_if(int age, bool stopped_working,
                     bool quit_voluntarily, bool ei_eligible,
                     int income_12months, int income_4weeks) {
  return true;
}


int main(void) {
  assert(qualify_cerb_logical(22, true, false, true, 33000, 0));
  assert(qualify_cerb_if(22, true, false, true, 33000, 0));

  // ADD YOUR OWN TESTS BELOW:

}
