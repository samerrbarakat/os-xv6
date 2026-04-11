#include "types.h"
#include "stat.h"
#include "user.h"
#include "syscall.h"

int main(void) { 
  int pid;
  printf(1, "Parent:getpid before restriction=%d\n", getpid());
  restrict_systemcall(SYS_getpid);
  printf(1, "Parent:getpid after restriction=%d\n", getpid());
  pid=fork();
  if(pid== 0){
    printf(1, "Child:getpid after fork=%d\n", getpid());} 
else { 
    wait();} 
  exit(); }
