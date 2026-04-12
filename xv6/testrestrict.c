#include "types.h"
#include "stat.h"
#include "user.h"
#include "syscall.h"
int
main(void){
  printf(1, "getpid before restriction = %d\n", getpid());
  restrict_systemcall(SYS_getpid);
  printf(1, "getpid after restriction = %d\n", getpid());
  exit();
}
