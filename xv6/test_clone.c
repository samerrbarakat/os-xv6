#include "types.h"
#include "stat.h"
#include "user.h"
void func(void *arg){
  int x=(int)arg;
  printf(1, "Thread running with arg = %d\n", x);
  exit();}

int main(void){
  char *stack=sbrk(4096);
  int pid;
  if(stack==(char*)-1){
    printf(1, "sbrk failed\n");
    exit(); }
  pid=clone(func, (void*)10, stack);
  if(pid<0){
    printf(1, "clone failed\n");
    exit(); }
  if(join() < 0){
    printf(1, "join failed\n");
    exit(); }
  printf(1, "thread joined successfully\n");
  exit();}
