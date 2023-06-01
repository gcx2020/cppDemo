#include "myFunction.h"
#include <cstdlib>

int main(int argc, char const *argv[])
{
  if(SayHello())
  {
    return EXIT_SUCCESS;
  }
  return EXIT_FAILURE;
}
