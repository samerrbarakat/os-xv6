#include "types.h"
#include "stat.h"
#include "user.h"
#include "syscall.h"

int
main(void)
{
    printf(1, "total before invoking system calls = %d\n", gettotalsyscalls());
    printf(1, "getpid count before = %d\n", getsyscallcount(SYS_getpid));
    getpid();
    printf(1, "total after invoking system calls = %d\n", gettotalsyscalls());
    printf(1, "getpid count after = %d\n", getsyscallcount(SYS_getpid));
    exit();
}
