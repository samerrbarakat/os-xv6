#include "types.h"
#include "user.h" 

int main(void){
    printf(1, "Samer and Serena: Testing getsysinfo system call started :)\n");
    sysinfo_t test ; 
    if(getsysinfo(&test)<0){
        printf(1,"syscall didnt work :( \n") ; 
        exit();
    }

    printf(1, "Sys uptime (in ticks ): %d \n"  , test.uptime );
    printf(1, "Sys free memory (inbytes ): %d\n", test.free_memory);
    printf(1, "Sys total processes: %d \n", test.total_procs );
    printf(1, "Sys running processes : %d \n", test.running_procs);
    printf(1 , "Sys sleepng processes : %d \n" , test.sleeping_procs) ; 
    printf(1, "Sys zombie processes : %d\n", test.zombie_procs ) ; 

    printf(1, "Samer and Serena: Testing getsysinfo system call ended :( \n");


    exit() ; 
}