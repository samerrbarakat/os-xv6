typedef unsigned int   uint;
typedef unsigned short ushort;
typedef unsigned char  uchar;
typedef uint pde_t;
typedef struct {
	unsigned int uptime ; 
	unsigned int free_memory ; 
	unsigned int total_procs; 
	unsigned int running_procs; 
	unsigned int sleeping_procs; 
	unsigned int zombie_procs; 

}sysinfo_t ; 
