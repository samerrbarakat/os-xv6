#include "types.h"
#include "stat.h"
#include "user.h"
#include "fs.h"

char*
fmtname(char *path)
{
  static char buf[DIRSIZ+1];
  char *p;

  // Find first character after last slash.
  for(p=path+strlen(path); p >= path && *p != '/'; p--)
    ;
  p++;

  // Return blank-padded name.
  if(strlen(p) >= DIRSIZ)
    return p;
  memmove(buf, p, strlen(p));
  memset(buf+strlen(p), ' ', DIRSIZ-strlen(p));
  return buf;
}
/*
void
ls(char *path)
{
  char buf[512], *p;
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
  case T_FILE:
    printf(1, "%s %d %d %d\n", fmtname(path), st.type, st.ino, st.size);
    break;

  case T_DIR:
    if(strlen(path) + 1 + DIRSIZ + 1 > sizeof buf){
      printf(1, "ls: path too long\n");
      break;
    }
    strcpy(buf, path);
    p = buf+strlen(buf);
    *p++ = '/';
    while(read(fd, &de, sizeof(de)) == sizeof(de)){
      if(de.inum == 0)
        continue;
      memmove(p, de.name, DIRSIZ);
      p[DIRSIZ] = 0;
      if(stat(buf, &st) < 0){
        printf(1, "ls: cannot stat %s\n", buf);
        continue;
      }
      printf(1, "%s %d %d %d\n", fmtname(buf), st.type, st.ino, st.size);
    }
    break;
  }
  close(fd);}*/
int
hasstar(char *s)
{
  while(*s){
    if(*s == '*')
      return 1;
    s++;
  }
  return 0;
}

int strncmp(const char *s1, const char *s2, int n){
  int i;
  for(i=0;i<n;i++){
    if(s1[i]!=s2[i])
      return 1;
    if(s1[i]=='\0')
      return 0;}
  return 0;}
int matching(char *a,char *b){
  int n=strlen(a),m=strlen(b);
  int i=0,pos=0;

  while(i<n){
    while(i<n&&a[i]=='*')i++;
    if(i>=n)break;

    int start=i;
    while(i<n&&a[i]!='*')i++;
    int len=i-start;

    int from=pos,to=m-len;

    if(start==0 && a[0]!='*') from=to=0;
    if(i==n && a[n-1]!='*') from=to=m-len;

    int j,found=0;
    for(j=from;j<=to;j++){
      if(!strncmp(b+j,a+start,len)){
        pos=j+len;
        found=1;
        break;
      }
    }

    if(!found)return 0;
  }

  return a[n-1]=='*' || pos==m;
}

void
ls(char *path)
{
  char buf[512], *p;
  int fd;
  struct dirent de;
  struct stat st;

  if(hasstar(path)){
    if((fd = open(".", 0)) < 0){
      printf(2, "ls: cannot open .\n");
      return;
    }

    if(fstat(fd, &st) < 0){
      printf(2, "ls: cannot stat .\n");
      close(fd);
      return;
    }

    if(st.type != T_DIR){
      printf(2, "ls: . is not a directory\n");
      close(fd);
      return;
    }

    strcpy(buf, ".");
    p = buf + strlen(buf);
    *p++ = '/';

    while(read(fd, &de, sizeof(de)) == sizeof(de)){
      if(de.inum == 0)
        continue;

      memmove(p, de.name, DIRSIZ);
      p[DIRSIZ] = 0;

      if(matching(path, de.name)){
        if(stat(buf, &st) < 0){
          printf(1, "ls: cannot stat %s\n", buf);
          continue;
        }
        printf(1, "%s %d %d %d\n", fmtname(buf), st.type, st.ino, st.size);
      }
    }

    close(fd);
    return;
  }

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
  case T_FILE:
    printf(1, "%s %d %d %d\n", fmtname(path), st.type, st.ino, st.size);
    break;

  case T_DIR:
    if(strlen(path) + 1 + DIRSIZ + 1 > sizeof buf){
      printf(1, "ls: path too long\n");
      break;
    }
    strcpy(buf, path);
    p = buf+strlen(buf);
    *p++ = '/';
    while(read(fd, &de, sizeof(de)) == sizeof(de)){
      if(de.inum == 0)
        continue;
      memmove(p, de.name, DIRSIZ);
      p[DIRSIZ] = 0;
      if(stat(buf, &st) < 0){
        printf(1, "ls: cannot stat %s\n", buf);
        continue;
      }
      printf(1, "%s %d %d %d\n", fmtname(buf), st.type, st.ino, st.size);
    }
    break;
  }
  close(fd);
}
int
main(int argc, char *argv[])
{
  int i;

  if(argc < 2){
    ls(".");
    exit();
  }
  for(i=1; i<argc; i++)
    ls(argv[i]);
  exit();
}
