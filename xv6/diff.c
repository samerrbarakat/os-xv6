#include "types.h"
#include "stat.h"
#include "user.h"

#define BUFFER_SIZE  1024 
// we assume that no file exceeed BUFFER_SIZE characters. same as in grep.
// since we are comparing lines, we neeed to get from each file a correct line . 
// We will be reading from each file 1 line exactly, followin the way grep does it. 
// a buffer for each file, placed globally since xv6 stack is small (same as grep)
char buf1[BUFFER_SIZE] ; 
char buf2[BUFFER_SIZE] ; 

int nextline(int fd, char *buf, int *m, char *line){
    char *p; 
    char *q ; 
    int n ; 
    while(1){
        // we wil lalways be putting leftover from buffer at the end of the buffer
        // so the buffer might not be empty everytime we look for next line. 
        // Example: 
        // read buffer : "wjhvsssvd\nfgdfvdbv\n" 
        // extracted line : "wjhvsssvd\n" 
        // and the buffer is updated by shifitng the rest, just like in grep. 
        // update buffer: "fgdfvdbv\n"

        // look for \n in what is already in the buffer 
        p=buf ; 
        if((q=strchr(p,'\n'))!=0){ // we found a complete line .
            // we want to change the buffer into a valid c string. 
            *q='\0' ; // since q finds you the start of '\n

            memmove(line,p,q-p+1); 
            // we compy the line into the output buffer 
            // where q-p is the line length and +1 for'\0' 
            *m =*m- (q+1-buf); 
            // we subtract the bytes we just consumerd and q+1 is right after the \n we found 
            memmove(buf,q+1,*m) ; // we slide the remaining bytes to fron of buffer just like grep. 
            return 1 ; //since we found a line 
        }
        // if we didnt find \n in the buffer, we need to add to the buffer new chucnk of data. 
        n = read(fd,buf+*m,BUFFER_SIZE-*m -1); // put directly after the bytes alread there till m 
        if (n>0){
            *m+=n ; // the available bytes just grew from m by n 
            buf[*m]='\0'; // make it a valide c string. 
            continue ; // we got back to first step to search for \n in the fuller buffer . 
        }
        // not if read returns 0 , we have hit the end of file 
        if (*m>0){ // there are still some bytes left in the buffer 
            buf[*m]='\0' ;
            memmove(line, buf,*m+1); 
            *m = 0 ; // we emptied the buffer for the last time . 
            return 1 ;  
        }
        //E0F and nothing left in buf . 
        return 0 ; 
    }
}
void diff(int fd1, int fd2){

    int m1 = 0 ;
     int m2 = 0 ; 
     // these keep track of the valid bytes in buf1 nd buf2 
    // at first they're zero since the buffer is empty. they are passed to nexline function to persist between calls 
    char line_from_file1[BUFFER_SIZE]; 
    char line_from_file2[BUFFER_SIZE] ; 
    // these hold the next proper line in each file after eing brough from nextline()
    int got1, got2  ;// flags to check wether we succeduflly got a new line from a file or hit the end of fiel character EOF 
    int line_count = 1; // track current line number 
    int different = 0 ; // flag to check if any differences were found . 

    while(1){// we keep looping until both have no more lines 
        got1 = nextline(fd1,buf1,&m1,line_from_file1); 
        got2 = nextline(fd2,buf2,&m2,line_from_file2);
        
        if (got1 == 0 && got2 ==0 ){
            // both files finished 
            break; 
        }
        // we will assume that when a file has ended bu tthe other didnt, it's like ther ended one has empty lines
        if (got1==0){
            line_from_file1[0]='\0'; // valid empty c-string 

        }
        if (got2==0){
            line_from_file2[0]='\0'; // valid empty c-string 

        }

        if (strcmp(line_from_file1,line_from_file2)!=0){ // the 2 lines are not identical
            printf(1,"line %d:\n", line_count); 
            if (got1)printf(1,"file 1: %s\n",line_from_file1); 
            if (got2)printf(1,"file 2: %s\n",line_from_file2);
            different++ ; }
            line_count++ ; 
            

    }
    if (different==0){
        printf(1,"Files are identical\n"); 
    }
    else { 
        printf(1,"Found %d differences\n",different);
    }

}


int main(int argc, char* argv[]){
       
    // open the 2 files properly 
    int fd1, fd2 ; 
    if (argc!=3){
        printf(1,"Use diff command : diff file1 file2\n"); 
        exit(); 
    }
    if ((fd1=open(argv[1],0))<0){
        printf(1,"diff : cannot open file");
        exit() ; 
    }
    if ((fd2=open(argv[2],0))<0){
        printf(1,"diff : cannot open file");
        close(fd1);
        exit() ; 
    }

    diff(fd1,fd2) ; 
    close(fd1); 
    close(fd2) ; 
    exit();
}
