// this program demonstrates writing a predicate function
//   with and without the use of an "if" statement

#include "cs136.h"

// same_sign1(a, b) returns true only if a and b both have the same sign
//   (negative, positive or zero)
bool same_sign1(int a, int b) {
  return (a == 0 && b == 0) || (a > 0 && b > 0) || (a < 0 && b < 0);
}

// IMPORTANT: This is not the "cleanest" way to solve this.
//            It is a demonstration of some nested "if" techniques

// same_sign2(a, b) returns true only if a and b both have the same sign
//   (negative, positive or zero)
bool same_sign2(int a, int b) {
  if (a > 0) {
    if (b > 0) {
      return true;
    } else {
      if (b == 0) {
        return false;
      } else {
        return false;
      }
    }
  } else if (a == 0) {
    return b == 0;
  } else if (b < 0) {
    return true;
  } else {
    return false;
  }
}
 
int main(void) {
  assert(same_sign1(0, 0));    // same as: assert(same_sign1(0, 0) == true)
  assert(same_sign1(-1, -1));
  assert(same_sign1(1, 1));
  
  assert(!same_sign1(0, -1));  // same as: assert(same_sign1(0, -1) == false)
  assert(!same_sign1(0, 1));
  assert(!same_sign1(-1, 0));
  assert(!same_sign1(-1, 1));
  assert(!same_sign1(1, -1));
  assert(!same_sign1(1, 0));
  
  assert(same_sign2(0, 0));
  assert(same_sign2(-1, -1));
  assert(same_sign2(1, 1));
  
  assert(!same_sign2(0, -1));
  assert(!same_sign2(0, 1));
  assert(!same_sign2(-1, 0));
  assert(!same_sign2(-1, 1));
  assert(!same_sign2(1, -1));
  assert(!same_sign2(1, 0));  
}
