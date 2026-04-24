#include "types.h"
#include "stat.h"
#include "user.h"
#include "fcntl.h"
//since itoa(to convert an integer to a string) is not built in in xv6, we have to write it manually
void itoa(int n, char*string){
   char temp[20];
   int i=0;
   if (n==0){
      string[0]='0';
      string[1]='\0'; 
      return;}
   //we take the digits backwards
   while (n>0){
     temp[i]='0'+(n%10);
     n=n/10;
     i++;
  }
  //we reverse the string
  for (int j=0;j<i;j++){
     string[j]=temp[i-j-1];
  }
  string[i]='\0';
}
int main(int argc, char * argv[]){
if(argc<3){
        printf(1,"You did not provide all the arguments\n");
        exit();
    }
char *file_name=argv[1];
int desired_size=atoi(argv[2]);
int fd=open(file_name,0);
char c;
int nb=1;
int current_size=0;
int outfd=-1;
while (read(fd,&c,1)==1){
   if (current_size==0){
      char new_file_name[100];
      char number[20];
      strcpy(new_file_name,file_name);
      itoa(nb,number);
      strcpy(new_file_name+strlen(new_file_name),number);
      outfd=open(new_file_name, O_CREATE|O_WRONLY);
      nb++;
      }
   write(outfd,&c,1);
   current_size=current_size+1;
   if (current_size==desired_size) {
    current_size=0;
    close(outfd);
    outfd=-1;}}
   if(outfd != -1) close(outfd);
  close(fd);
exit();}
