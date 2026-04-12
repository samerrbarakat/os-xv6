
#include "types.h"
#include "stat.h"
#include "user.h"
#include "fcntl.h"

char *argv[] = { "sh", 0 };
int read_credentials(char* usernm, char * passwd){
    int file = open("users.txt",0); 
    if (file <0){
        printf(1,"error reading credentials..\n"); 
        return -1; 
    }
    char buf[100]; 
    int n = read(file, buf, sizeof(buf)-1); 
    if (n <0){
        printf(1,"error reading credentials..\n"); 
        return -1; 
    }
    buf[n]='\0';
    close(file) ; 

     int j = 0 ; 
   int k = 0 ; 
    int i = 0 ; 
    while (buf[i]==' '|| buf[i]=='\t' || buf[i]=='\n') {
        i++ ; 
    }
    // now we parse the usernme 
    while (buf[i]!=' '&& buf[i]!='\t'&& buf[i]!='\n'&& buf[i]!='\0' && j<49){
        usernm[j] = buf[i] ; 
        i++ ; j++ ; 
    }
    usernm[j]='\0' ; 
    
    while (buf[i]==' '|| buf[i]=='\t') {
        i++ ; 
    }
    while (buf[i]!=' '&& buf[i]!='\t'&& buf[i]!='\n'&& buf[i]!='\0' && k<49){
        passwd[k]= buf[i] ; 
        i++ ; k++ ; 
    }
    passwd[k] = '\0' ; 

    return 0; 
}


int main(void){
    char input_username[50] ; 
    char input_password[50] ; 
    char cred_username[50] ; 
    char cred_password[50] ; 
    if (read_credentials(cred_username,cred_password) <0){ 
        printf(1,"error"); 
        exit() ; 
    }
    int success =0 ; 
    while(success<1){

        printf(1, "username: ") ;
        gets(input_username,sizeof(input_username)); 
        printf(1,"password: ") ; 
        gets(input_password,sizeof(input_password)); 

        int i = 0 ; 
        while(input_password[i]!='\0'){
            if (input_password[i]=='\n'){
                input_password[i]='\0' ; 
            }
            i++ ;
        }

        i = 0 ; 
        while(input_username[i]!='\0'){
            if (input_username[i]=='\n'){
                input_username[i]='\0' ; 
            }
            i++;
        }
        

        if (strcmp(input_username,cred_username)!=0 || strcmp(input_password,cred_password)!=0){
            printf(1,"wrong credentials...\n"); 
            continue ; 

        }
        printf(1, "login successful.\n") ; 
        success = 1; 
    }

    // executing shell : this code is the same done in init.c, the program that runs shell 
    int pid = fork();
    if(pid < 0){
      printf(1, "init: fork failed\n");
      exit();
    }
    if(pid == 0){
      exec("sh", argv);
      printf(1, "init: exec sh failed\n");
      exit();
    }
    wait(); 
    exit();

}