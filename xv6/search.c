#include "types.h"
#include "stat.h"
#include "user.h"
#include "fcntl.h"
#define MAX 512

int check(char *line, char *word){
    int count=0;
    int i=0;//to walk through the line character by character
    char current[200];//to build one word at a time
    int j=0;//to track how many chars we have put in the current word
    while (line[i]!='\0'){
        if ((line[i]>='a' && line[i]<='z')||(line[i]>='A' && line[i]<='Z')||(line[i]>='0' && line[i]<='9')||line[i]=='_'){
            current[j]=line[i];
            j++;
        }
        else{//punctuation, space or newline means end of current word
            if (j>0){
                current[j]='\0';//for the word to become a valid string
                if (strcmp(current, word)==0)
                    count++;
                j=0;
            }
        }
         i++;
    }
    if (j>0){//check last word bcz theres no space after it
        current[j]='\0';
        if (strcmp(current,word)==0)
            count++;
    }
    return count;
}

int main(int argc, char * argv[]){
if(argc<3){
        printf(1,"You did not provide all the arguments\n");
        exit();
    }
char *file_name=argv[1];
char *keyword=argv[2];
int line_nb=1;
int fd=open(file_name,0);
char c;
char line[MAX];
int index=0;
int line_total=0;
while (read(fd,&c,1)==1){
      if (c=='\n'){//now print the line_total
      line[index]='\0';
      line_total=check(line,keyword);
      if (line_total>0) printf(1,"Found %d times on line %d\n", line_total, line_nb);
      index=0;
      line_total=0;
      line_nb++;}
     else{
      if(index<MAX-1){
       line[index]=c;
       index++;
  }
}
}
//to check last line:
if (index>0){
   line[index]='\0';
   line_total=check(line,keyword);
   if (line_total>0) printf(1,"Found %d times on line %d\n", line_total, line_nb);}
close(fd);
exit();}


