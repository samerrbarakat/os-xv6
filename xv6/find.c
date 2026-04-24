#include "types.h"
#include "stat.h"
#include "user.h"
#include "fs.h"
//using the same skeleton as ls but modifying the logic as needed:
char*
fmtname(char *path)
{
  static char buf[DIRSIZ+1];
  char *p;
  int len;

  for(p = path + strlen(path); p >= path && *p != '/'; p--)
    ;
  p++;

  len = strlen(p);
  if(len >= DIRSIZ)
    return p;

  memmove(buf, p, len);
  buf[len] = 0;
  return buf;
}

void find(char *path, char* file_name)
{
  char buf[512], *p;
  int fd;
  struct dirent de;
  struct stat st;

  if((fd = open(path, 0)) < 0){
    printf(2, "find: cannot open %s\n", path);
    return;
  }

  if(fstat(fd, &st) < 0){
    printf(2, "find: cannot stat %s\n", path);
    close(fd);
    return;
  }

  switch(st.type){
  case T_FILE:
    if (strcmp(fmtname(path),file_name)==0) printf(1, "The file was found:%s\n", path);
    //printf(1, "%s %d %d %d\n", fmtname(path), st.type, st.ino, st.size);
    break;

  case T_DIR:
    if(strlen(path) + 1 + DIRSIZ + 1 > sizeof buf){       printf(1, "find: path too long\n");
      break;}
    strcpy(buf, path);
    p = buf+strlen(buf);
    *p++ = '/';
    while(read(fd, &de, sizeof(de)) == sizeof(de)){
      if(de.inum == 0)
        continue;
      char name[DIRSIZ+1];
      memmove(name, de.name, DIRSIZ);
      name[DIRSIZ] = 0;
      if (strcmp(name, ".")==0 || strcmp(name, "..")==0) continue;
      memmove(p, de.name, DIRSIZ);
      p[DIRSIZ] = 0;
      if(stat(buf, &st) < 0){
        printf(1, "find: cannot stat %s\n", buf);
        continue;
      }
      if (strcmp(fmtname(buf),file_name)==0) printf(1, "The file was found:%s\n", buf);
      if (st.type==T_DIR) find(buf,file_name);
      //printf(1, "%s %d %d %d\n", fmtname(buf), st.type, st.ino, st.size);
    }
    break;
  }
  close(fd);}
int main(int argc, char *argv[]){
  if(argc!=3){
    printf(2, "Not enough arguemnts\n");
    exit();
  }
  find(argv[1], argv[2]);
  exit();
}
 
