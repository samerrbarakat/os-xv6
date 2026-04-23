#include "types.h"
#include "stat.h"
#include "user.h"
#include "fs.h"

// the tree fucntion does  similar thing like ls, but it recursively looks into files of type directory, 
// we can know the type of a file using the fstat() 
// we need to knw the depth of our look so we indent properly 

void tree (char* path, char * prefix){
    // open current path : // exactly like in ls.c 
    char buf[128], *p;
    int fd;
    struct dirent de;
    struct stat st;

    if((fd = open(path, 0)) < 0){
        printf(2, "ls: cannot open %s\n", path);
        return;
    }
    if(fstat(fd, &st) < 0){
        printf(2, "ls: cannot stat %s\n", path);
        close(fd);
        return;
    }

    switch(st.type){
    case T_FILE: // here we'll exactly what tree command does on linux when not privided a dir 
        break;

    case T_DIR: // also followed some default ls.c conventions 
        if(strlen(path) + 1 + DIRSIZ + 1 > sizeof buf){
        printf(1, "ls: path too long\n");
        break;
        }
        char (*entriesindir)[DIRSIZ + 1] = malloc(32 * (DIRSIZ + 1));
        if (entriesindir == 0) {
            printf(2, "tree: malloc failed\n");
            close(fd);
            return;
        }
        int count = 0 ; 
        
        while(read(fd, &de, sizeof(de)) == sizeof(de)){
            // we skip empty slots : also inspired by ls.c
            if (de.inum ==0 ) continue ; 
            if (strcmp(de.name, ".")==0 || strcmp(de.name,"..")==0) continue ; 
            // also sip the defualt surrecnt and parent directory files so we dont cause an infinite recursion. 
            
            if(count >= 32){
            printf(2, "tree: too many entries in %s\n", path);
            break;}
            memmove(entriesindir[count],de.name, DIRSIZ) ; 
            entriesindir[count][DIRSIZ] = 0 ; 
            for(int k = DIRSIZ - 1; k >= 0; k--){
            if(entriesindir[count][k] == ' ' || entriesindir[count][k] == 0)
                entriesindir[count][k] = 0;
            else
                break;
            }
            count++ ; 
        }
        close(fd); 
        for (int i = 0 ; i<count ; i++){
            printf(1,"%s%s %s\n", prefix, i==count-1 ? "└──" : "├──",entriesindir[i]); 
            // now we need to get the path for each child inorder to check if it is a dir or not 
            strcpy(buf, path);
            p = buf + strlen(buf);
            if (p == buf || *(p-1) != '/')
                *p++ = '/';
            strcpy(p, entriesindir[i]);
            if(stat(buf, &st) < 0) continue;
            if(st.type ==T_DIR){
                char newpref[128]; 
                strcpy(newpref,prefix) ; 
                strcpy(newpref + strlen(newpref), i == count - 1 ? "    " : "│   ");                
                tree(buf,newpref) ; 
            }
        }
        free(entriesindir);
        break;
    }
}
// main is also inspured by ls.c 
int main(int argc, char *argv[])
{
  int i;
  if(argc < 2){
    printf(1, ".\n");
    tree(".","");
    exit();
  }
  for(i=1; i<argc; i++){
    printf(1, "%s\n", argv[i]);
    tree(argv[i],"");}
    
  exit();
}
