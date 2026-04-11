#include "types.h"
#include "stat.h"
#include "user.h"
#include "syscall.h"
int main(void){
  printf(1, "year before restriction = %d\n", getyear());
  restrict_systemcall(SYS_getyear);
  printf(1, "year after restriction = %d\n", getyear());
  exit();
}
