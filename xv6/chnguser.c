#include "types.h"
#include "stat.h"
#include "user.h"
#include "fcntl.h"

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

int validate_field(char* s){
    int i = 0 ; 
    if (s[i]=='\0') return 0 ; 
    while (s[i]!='\0'){
        if (s[i]==' ' || s[i]=='\t' || s[i]=='\n') return 0 ; 
        if (i>=49) return 0 ; 
        i++  ; 
    }
    
    return 1 ; 
}


int write_credentials(char* new_usernm, char* old_passwd){
    int file ; 
    char buf[100] ; 

    if (unlink("users.txt")<0){
        printf(1,"error deleting credentials\n") ; 
        return -1; 
    }
    int  i=0 ; int j=0; int k = 0 ; 
    file = open("users.txt",O_CREATE | O_WRONLY) ; 
    if (file<0){
        printf(1,"error creating cred file\n") ; 
        return -1;
    }

    while (new_usernm[j]!='\0' && i<49){
        buf[i] = new_usernm[j] ; i++ ; j++ ; 
    }

    buf[i] = ' ' ; 
    i++ ; 
    while(old_passwd[k]!='\0' && i <99) {
        buf[i] = old_passwd[k] ; 
        i++ ; 
        k++; 
    }
    buf[i]='\n' ; i++ ; 

    int check_write = write(file,buf,i) ; 
    if (check_write!=i){
        printf(1,"Error writing to cred file..\n"); 
        close(file); return -1 ; 

    }
    close(file) ; return 0 ; 
}
int main(void){
    char old_usrnm[50] ;
    char pswrd[50] ; 
    char current[50] ; 
    char new_usrnm[50] ; 
    char confirm_usrnm[50] ;
    
    if (read_credentials(old_usrnm,pswrd)<0){
        printf(1,"error reading creds\n"); 
        exit(); 
    }

    printf(1,"Enter current password: ");
    gets(current,sizeof(current)); 
    int i = 0 ; 
    while(current[i]!='\0'){
        if (current[i]=='\n') {
            current[i]='\0' ; 
            break ; 
        }
        i++ ; 
    }
    if (strcmp(pswrd,current)!=0){
        printf(1,"wrong password\n") ; 
        exit();
    }

    printf(1,"Enter new username: ") ; 
    gets(new_usrnm,sizeof(new_usrnm)); 
    i = 0 ; 
    while(new_usrnm[i]!='\0'){
        if (new_usrnm[i]=='\n') {
            new_usrnm[i]='\0' ; 
            break ; 
        }
        i++ ; 
    }
    int checkvalid_user = validate_field(new_usrnm); 
    if (!checkvalid_user){
        printf(1,"invalid username, your username, must contain no spaces and less than 49 characters.\n"); 
        exit(); 
    }
    printf(1,"Confirm new username: ") ; 
    gets(confirm_usrnm,sizeof(confirm_usrnm)); 
    i=0 ; 
    while(confirm_usrnm[i]!='\0'){
        if (confirm_usrnm[i]=='\n') {
            confirm_usrnm[i]='\0' ; 
            break ; 
        }
        i++ ; 
    }

    if (strcmp(new_usrnm,confirm_usrnm)!=0){
        printf(1,"usernames dont match\n"); 
        exit();
    }

    int check_write = write_credentials(new_usrnm,pswrd); 
    if (check_write<0){
        printf(1,"failed to change creds\n") ; 
        exit() ; 
    }

    printf(1,"username change was successful\n") ; 
    exit(); 

}