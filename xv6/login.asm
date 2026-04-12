
_login:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:

    return 0; 
}


int main(void){
   0:	8d 4c 24 04          	lea    0x4(%esp),%ecx
   4:	83 e4 f0             	and    $0xfffffff0,%esp
   7:	ff 71 fc             	push   -0x4(%ecx)
   a:	55                   	push   %ebp
   b:	89 e5                	mov    %esp,%ebp
   d:	57                   	push   %edi
   e:	56                   	push   %esi
    char input_username[50] ; 
    char input_password[50] ; 
    char cred_username[50] ; 
    char cred_password[50] ; 
    if (read_credentials(cred_username,cred_password) <0){ 
   f:	8d 45 b6             	lea    -0x4a(%ebp),%eax
  12:	8d 7d 84             	lea    -0x7c(%ebp),%edi
int main(void){
  15:	53                   	push   %ebx
  16:	8d b5 52 ff ff ff    	lea    -0xae(%ebp),%esi
  1c:	8d 9d 20 ff ff ff    	lea    -0xe0(%ebp),%ebx
  22:	51                   	push   %ecx
  23:	81 ec e0 00 00 00    	sub    $0xe0,%esp
    if (read_credentials(cred_username,cred_password) <0){ 
  29:	50                   	push   %eax
  2a:	57                   	push   %edi
  2b:	e8 30 01 00 00       	call   160 <read_credentials>
  30:	83 c4 10             	add    $0x10,%esp
  33:	85 c0                	test   %eax,%eax
  35:	0f 88 fe 00 00 00    	js     139 <main+0x139>
        exit() ; 
    }
    int success =0 ; 
    while(success<1){

        printf(1, "username: ") ;
  3b:	83 ec 08             	sub    $0x8,%esp
  3e:	68 be 09 00 00       	push   $0x9be
  43:	6a 01                	push   $0x1
  45:	e8 16 06 00 00       	call   660 <printf>
        gets(input_username,sizeof(input_username)); 
  4a:	58                   	pop    %eax
  4b:	5a                   	pop    %edx
  4c:	6a 32                	push   $0x32
  4e:	53                   	push   %ebx
  4f:	e8 9c 03 00 00       	call   3f0 <gets>
        printf(1,"password: ") ; 
  54:	59                   	pop    %ecx
  55:	58                   	pop    %eax
  56:	68 c9 09 00 00       	push   $0x9c9
  5b:	6a 01                	push   $0x1
  5d:	e8 fe 05 00 00       	call   660 <printf>
        gets(input_password,sizeof(input_password)); 
  62:	58                   	pop    %eax
  63:	5a                   	pop    %edx
  64:	6a 32                	push   $0x32
  66:	56                   	push   %esi
  67:	e8 84 03 00 00       	call   3f0 <gets>

        int i = 0 ; 
        while(input_password[i]!='\0'){
  6c:	0f b6 95 52 ff ff ff 	movzbl -0xae(%ebp),%edx
  73:	83 c4 10             	add    $0x10,%esp
  76:	89 f0                	mov    %esi,%eax
  78:	84 d2                	test   %dl,%dl
  7a:	74 17                	je     93 <main+0x93>
  7c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
            if (input_password[i]=='\n'){
  80:	80 fa 0a             	cmp    $0xa,%dl
  83:	75 03                	jne    88 <main+0x88>
                input_password[i]='\0' ; 
  85:	c6 00 00             	movb   $0x0,(%eax)
        while(input_password[i]!='\0'){
  88:	0f b6 50 01          	movzbl 0x1(%eax),%edx
  8c:	83 c0 01             	add    $0x1,%eax
  8f:	84 d2                	test   %dl,%dl
  91:	75 ed                	jne    80 <main+0x80>
            }
            i++ ;
        }

        i = 0 ; 
        while(input_username[i]!='\0'){
  93:	0f b6 95 20 ff ff ff 	movzbl -0xe0(%ebp),%edx
  9a:	84 d2                	test   %dl,%dl
  9c:	74 15                	je     b3 <main+0xb3>
  9e:	89 d8                	mov    %ebx,%eax
            if (input_username[i]=='\n'){
  a0:	80 fa 0a             	cmp    $0xa,%dl
  a3:	75 03                	jne    a8 <main+0xa8>
                input_username[i]='\0' ; 
  a5:	c6 00 00             	movb   $0x0,(%eax)
        while(input_username[i]!='\0'){
  a8:	0f b6 50 01          	movzbl 0x1(%eax),%edx
  ac:	83 c0 01             	add    $0x1,%eax
  af:	84 d2                	test   %dl,%dl
  b1:	75 ed                	jne    a0 <main+0xa0>
            }
            i++;
        }
        

        if (strcmp(input_username,cred_username)!=0 || strcmp(input_password,cred_password)!=0){
  b3:	83 ec 08             	sub    $0x8,%esp
  b6:	57                   	push   %edi
  b7:	53                   	push   %ebx
  b8:	e8 43 02 00 00       	call   300 <strcmp>
  bd:	83 c4 10             	add    $0x10,%esp
  c0:	85 c0                	test   %eax,%eax
  c2:	75 55                	jne    119 <main+0x119>
  c4:	83 ec 08             	sub    $0x8,%esp
  c7:	8d 45 b6             	lea    -0x4a(%ebp),%eax
  ca:	50                   	push   %eax
  cb:	56                   	push   %esi
  cc:	e8 2f 02 00 00       	call   300 <strcmp>
  d1:	83 c4 10             	add    $0x10,%esp
  d4:	85 c0                	test   %eax,%eax
  d6:	75 41                	jne    119 <main+0x119>
            printf(1,"wrong credentials...\n"); 
            continue ; 

        }
        printf(1, "login successful.\n") ; 
  d8:	83 ec 08             	sub    $0x8,%esp
  db:	68 ab 09 00 00       	push   $0x9ab
  e0:	6a 01                	push   $0x1
  e2:	e8 79 05 00 00       	call   660 <printf>
        success = 1; 
    }

    // executing shell : this code is the same done in init.c, the program that runs shell 
    int pid = fork();
  e7:	e8 1f 04 00 00       	call   50b <fork>
    if(pid < 0){
  ec:	83 c4 10             	add    $0x10,%esp
  ef:	85 c0                	test   %eax,%eax
  f1:	78 59                	js     14c <main+0x14c>
      printf(1, "init: fork failed\n");
      exit();
    }
    if(pid == 0){
  f3:	75 3a                	jne    12f <main+0x12f>
      exec("sh", argv);
  f5:	50                   	push   %eax
  f6:	50                   	push   %eax
  f7:	68 3c 0d 00 00       	push   $0xd3c
  fc:	68 e7 09 00 00       	push   $0x9e7
 101:	e8 45 04 00 00       	call   54b <exec>
      printf(1, "init: exec sh failed\n");
 106:	5a                   	pop    %edx
 107:	59                   	pop    %ecx
 108:	68 ea 09 00 00       	push   $0x9ea
 10d:	6a 01                	push   $0x1
 10f:	e8 4c 05 00 00       	call   660 <printf>
      exit();
 114:	e8 fa 03 00 00       	call   513 <exit>
            printf(1,"wrong credentials...\n"); 
 119:	51                   	push   %ecx
 11a:	51                   	push   %ecx
 11b:	68 95 09 00 00       	push   $0x995
 120:	6a 01                	push   $0x1
 122:	e8 39 05 00 00       	call   660 <printf>
            continue ; 
 127:	83 c4 10             	add    $0x10,%esp
 12a:	e9 0c ff ff ff       	jmp    3b <main+0x3b>
    }
    wait(); 
 12f:	e8 e7 03 00 00       	call   51b <wait>
    exit();
 134:	e8 da 03 00 00       	call   513 <exit>
        printf(1,"error"); 
 139:	53                   	push   %ebx
 13a:	53                   	push   %ebx
 13b:	68 8f 09 00 00       	push   $0x98f
 140:	6a 01                	push   $0x1
 142:	e8 19 05 00 00       	call   660 <printf>
        exit() ; 
 147:	e8 c7 03 00 00       	call   513 <exit>
      printf(1, "init: fork failed\n");
 14c:	53                   	push   %ebx
 14d:	53                   	push   %ebx
 14e:	68 d4 09 00 00       	push   $0x9d4
 153:	6a 01                	push   $0x1
 155:	e8 06 05 00 00       	call   660 <printf>
      exit();
 15a:	e8 b4 03 00 00       	call   513 <exit>
 15f:	90                   	nop

00000160 <read_credentials>:
int read_credentials(char* usernm, char * passwd){
 160:	55                   	push   %ebp
 161:	89 e5                	mov    %esp,%ebp
 163:	57                   	push   %edi
 164:	56                   	push   %esi
 165:	53                   	push   %ebx
 166:	81 ec 94 00 00 00    	sub    $0x94,%esp
 16c:	8b 75 0c             	mov    0xc(%ebp),%esi
    int file = open("users.txt",0); 
 16f:	6a 00                	push   $0x0
 171:	68 68 09 00 00       	push   $0x968
 176:	e8 d8 03 00 00       	call   553 <open>
    if (file <0){
 17b:	83 c4 10             	add    $0x10,%esp
 17e:	85 c0                	test   %eax,%eax
 180:	0f 88 2a 01 00 00    	js     2b0 <read_credentials+0x150>
    int n = read(file, buf, sizeof(buf)-1); 
 186:	83 ec 04             	sub    $0x4,%esp
 189:	8d 5d 84             	lea    -0x7c(%ebp),%ebx
 18c:	89 c7                	mov    %eax,%edi
 18e:	6a 63                	push   $0x63
 190:	53                   	push   %ebx
 191:	50                   	push   %eax
 192:	e8 94 03 00 00       	call   52b <read>
    if (n <0){
 197:	83 c4 10             	add    $0x10,%esp
 19a:	85 c0                	test   %eax,%eax
 19c:	0f 88 0e 01 00 00    	js     2b0 <read_credentials+0x150>
    close(file) ; 
 1a2:	83 ec 0c             	sub    $0xc,%esp
    buf[n]='\0';
 1a5:	c6 44 05 84 00       	movb   $0x0,-0x7c(%ebp,%eax,1)
    close(file) ; 
 1aa:	57                   	push   %edi
 1ab:	e8 8b 03 00 00       	call   53b <close>
    while (buf[i]==' '|| buf[i]=='\t' || buf[i]=='\n') {
 1b0:	0f b6 45 84          	movzbl -0x7c(%ebp),%eax
 1b4:	83 c4 10             	add    $0x10,%esp
 1b7:	8d 50 f7             	lea    -0x9(%eax),%edx
 1ba:	80 fa 01             	cmp    $0x1,%dl
    int i = 0 ; 
 1bd:	ba 00 00 00 00       	mov    $0x0,%edx
    while (buf[i]==' '|| buf[i]=='\t' || buf[i]=='\n') {
 1c2:	77 13                	ja     1d7 <read_credentials+0x77>
 1c4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        i++ ; 
 1c8:	83 c2 01             	add    $0x1,%edx
    while (buf[i]==' '|| buf[i]=='\t' || buf[i]=='\n') {
 1cb:	0f b6 04 13          	movzbl (%ebx,%edx,1),%eax
 1cf:	8d 48 f7             	lea    -0x9(%eax),%ecx
 1d2:	80 f9 01             	cmp    $0x1,%cl
 1d5:	76 f1                	jbe    1c8 <read_credentials+0x68>
 1d7:	3c 20                	cmp    $0x20,%al
 1d9:	74 ed                	je     1c8 <read_credentials+0x68>
    while (buf[i]!=' '&& buf[i]!='\t'&& buf[i]!='\n'&& buf[i]!='\0' && j<49){
 1db:	a8 df                	test   $0xdf,%al
 1dd:	0f 84 c5 00 00 00    	je     2a8 <read_credentials+0x148>
     int j = 0 ; 
 1e3:	89 95 74 ff ff ff    	mov    %edx,-0x8c(%ebp)
 1e9:	8b 7d 08             	mov    0x8(%ebp),%edi
 1ec:	31 c9                	xor    %ecx,%ecx
 1ee:	89 75 0c             	mov    %esi,0xc(%ebp)
 1f1:	eb 12                	jmp    205 <read_credentials+0xa5>
 1f3:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
    while (buf[i]!=' '&& buf[i]!='\t'&& buf[i]!='\n'&& buf[i]!='\0' && j<49){
 1f8:	a8 df                	test   $0xdf,%al
 1fa:	74 2a                	je     226 <read_credentials+0xc6>
 1fc:	83 f9 31             	cmp    $0x31,%ecx
 1ff:	0f 84 8d 00 00 00    	je     292 <read_credentials+0x132>
        usernm[j] = buf[i] ; 
 205:	88 04 0f             	mov    %al,(%edi,%ecx,1)
        i++ ; j++ ; 
 208:	83 c1 01             	add    $0x1,%ecx
 20b:	83 85 74 ff ff ff 01 	addl   $0x1,-0x8c(%ebp)
 212:	8b 85 74 ff ff ff    	mov    -0x8c(%ebp),%eax
    while (buf[i]!=' '&& buf[i]!='\t'&& buf[i]!='\n'&& buf[i]!='\0' && j<49){
 218:	0f b6 04 03          	movzbl (%ebx,%eax,1),%eax
 21c:	8d 70 f7             	lea    -0x9(%eax),%esi
 21f:	89 f2                	mov    %esi,%edx
 221:	80 fa 01             	cmp    $0x1,%dl
 224:	77 d2                	ja     1f8 <read_credentials+0x98>
    usernm[j]='\0' ; 
 226:	8b 95 74 ff ff ff    	mov    -0x8c(%ebp),%edx
 22c:	8b 75 0c             	mov    0xc(%ebp),%esi
 22f:	03 4d 08             	add    0x8(%ebp),%ecx
 232:	c6 01 00             	movb   $0x0,(%ecx)
    while (buf[i]==' '|| buf[i]=='\t') {
 235:	3c 20                	cmp    $0x20,%al
 237:	75 12                	jne    24b <read_credentials+0xeb>
 239:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        i++ ; 
 240:	83 c2 01             	add    $0x1,%edx
    while (buf[i]==' '|| buf[i]=='\t') {
 243:	0f b6 04 13          	movzbl (%ebx,%edx,1),%eax
 247:	3c 20                	cmp    $0x20,%al
 249:	74 f5                	je     240 <read_credentials+0xe0>
 24b:	3c 09                	cmp    $0x9,%al
 24d:	74 f1                	je     240 <read_credentials+0xe0>
    while (buf[i]!=' '&& buf[i]!='\t'&& buf[i]!='\n'&& buf[i]!='\0' && k<49){
 24f:	8d 48 f7             	lea    -0x9(%eax),%ecx
 252:	80 f9 01             	cmp    $0x1,%cl
 255:	76 2e                	jbe    285 <read_credentials+0x125>
 257:	a8 df                	test   $0xdf,%al
 259:	74 2a                	je     285 <read_credentials+0x125>
   int k = 0 ; 
 25b:	31 c9                	xor    %ecx,%ecx
    while (buf[i]!=' '&& buf[i]!='\t'&& buf[i]!='\n'&& buf[i]!='\0' && k<49){
 25d:	01 d3                	add    %edx,%ebx
 25f:	eb 14                	jmp    275 <read_credentials+0x115>
 261:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 268:	8d 50 f7             	lea    -0x9(%eax),%edx
 26b:	80 fa 01             	cmp    $0x1,%dl
 26e:	76 13                	jbe    283 <read_credentials+0x123>
 270:	83 f9 31             	cmp    $0x31,%ecx
 273:	74 2e                	je     2a3 <read_credentials+0x143>
        passwd[k]= buf[i] ; 
 275:	88 04 0e             	mov    %al,(%esi,%ecx,1)
        i++ ; k++ ; 
 278:	83 c1 01             	add    $0x1,%ecx
    while (buf[i]!=' '&& buf[i]!='\t'&& buf[i]!='\n'&& buf[i]!='\0' && k<49){
 27b:	0f b6 04 0b          	movzbl (%ebx,%ecx,1),%eax
 27f:	a8 df                	test   $0xdf,%al
 281:	75 e5                	jne    268 <read_credentials+0x108>
    passwd[k] = '\0' ; 
 283:	01 ce                	add    %ecx,%esi
 285:	c6 06 00             	movb   $0x0,(%esi)
    return 0; 
 288:	31 c0                	xor    %eax,%eax
}
 28a:	8d 65 f4             	lea    -0xc(%ebp),%esp
 28d:	5b                   	pop    %ebx
 28e:	5e                   	pop    %esi
 28f:	5f                   	pop    %edi
 290:	5d                   	pop    %ebp
 291:	c3                   	ret
    usernm[j]='\0' ; 
 292:	8b 7d 08             	mov    0x8(%ebp),%edi
 295:	8b 95 74 ff ff ff    	mov    -0x8c(%ebp),%edx
 29b:	8b 75 0c             	mov    0xc(%ebp),%esi
 29e:	8d 4f 31             	lea    0x31(%edi),%ecx
 2a1:	eb 8f                	jmp    232 <read_credentials+0xd2>
    passwd[k] = '\0' ; 
 2a3:	83 c6 31             	add    $0x31,%esi
 2a6:	eb dd                	jmp    285 <read_credentials+0x125>
    usernm[j]='\0' ; 
 2a8:	8b 45 08             	mov    0x8(%ebp),%eax
 2ab:	c6 00 00             	movb   $0x0,(%eax)
    while (buf[i]!=' '&& buf[i]!='\t'&& buf[i]!='\n'&& buf[i]!='\0' && k<49){
 2ae:	eb d5                	jmp    285 <read_credentials+0x125>
        printf(1,"error reading credentials..\n"); 
 2b0:	83 ec 08             	sub    $0x8,%esp
 2b3:	68 72 09 00 00       	push   $0x972
 2b8:	6a 01                	push   $0x1
 2ba:	e8 a1 03 00 00       	call   660 <printf>
        return -1; 
 2bf:	83 c4 10             	add    $0x10,%esp
 2c2:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 2c7:	eb c1                	jmp    28a <read_credentials+0x12a>
 2c9:	66 90                	xchg   %ax,%ax
 2cb:	66 90                	xchg   %ax,%ax
 2cd:	66 90                	xchg   %ax,%ax
 2cf:	90                   	nop

000002d0 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, const char *t)
{
 2d0:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 2d1:	31 c0                	xor    %eax,%eax
{
 2d3:	89 e5                	mov    %esp,%ebp
 2d5:	53                   	push   %ebx
 2d6:	8b 4d 08             	mov    0x8(%ebp),%ecx
 2d9:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 2dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while((*s++ = *t++) != 0)
 2e0:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
 2e4:	88 14 01             	mov    %dl,(%ecx,%eax,1)
 2e7:	83 c0 01             	add    $0x1,%eax
 2ea:	84 d2                	test   %dl,%dl
 2ec:	75 f2                	jne    2e0 <strcpy+0x10>
    ;
  return os;
}
 2ee:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 2f1:	89 c8                	mov    %ecx,%eax
 2f3:	c9                   	leave
 2f4:	c3                   	ret
 2f5:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 2fc:	00 
 2fd:	8d 76 00             	lea    0x0(%esi),%esi

00000300 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 300:	55                   	push   %ebp
 301:	89 e5                	mov    %esp,%ebp
 303:	53                   	push   %ebx
 304:	8b 55 08             	mov    0x8(%ebp),%edx
 307:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 30a:	0f b6 02             	movzbl (%edx),%eax
 30d:	84 c0                	test   %al,%al
 30f:	75 17                	jne    328 <strcmp+0x28>
 311:	eb 3a                	jmp    34d <strcmp+0x4d>
 313:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
 318:	0f b6 42 01          	movzbl 0x1(%edx),%eax
    p++, q++;
 31c:	83 c2 01             	add    $0x1,%edx
 31f:	8d 59 01             	lea    0x1(%ecx),%ebx
  while(*p && *p == *q)
 322:	84 c0                	test   %al,%al
 324:	74 1a                	je     340 <strcmp+0x40>
 326:	89 d9                	mov    %ebx,%ecx
 328:	0f b6 19             	movzbl (%ecx),%ebx
 32b:	38 c3                	cmp    %al,%bl
 32d:	74 e9                	je     318 <strcmp+0x18>
  return (uchar)*p - (uchar)*q;
 32f:	29 d8                	sub    %ebx,%eax
}
 331:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 334:	c9                   	leave
 335:	c3                   	ret
 336:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 33d:	00 
 33e:	66 90                	xchg   %ax,%ax
  return (uchar)*p - (uchar)*q;
 340:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
 344:	31 c0                	xor    %eax,%eax
 346:	29 d8                	sub    %ebx,%eax
}
 348:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 34b:	c9                   	leave
 34c:	c3                   	ret
  return (uchar)*p - (uchar)*q;
 34d:	0f b6 19             	movzbl (%ecx),%ebx
 350:	31 c0                	xor    %eax,%eax
 352:	eb db                	jmp    32f <strcmp+0x2f>
 354:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 35b:	00 
 35c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000360 <strlen>:

uint
strlen(const char *s)
{
 360:	55                   	push   %ebp
 361:	89 e5                	mov    %esp,%ebp
 363:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
 366:	80 3a 00             	cmpb   $0x0,(%edx)
 369:	74 15                	je     380 <strlen+0x20>
 36b:	31 c0                	xor    %eax,%eax
 36d:	8d 76 00             	lea    0x0(%esi),%esi
 370:	83 c0 01             	add    $0x1,%eax
 373:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
 377:	89 c1                	mov    %eax,%ecx
 379:	75 f5                	jne    370 <strlen+0x10>
    ;
  return n;
}
 37b:	89 c8                	mov    %ecx,%eax
 37d:	5d                   	pop    %ebp
 37e:	c3                   	ret
 37f:	90                   	nop
  for(n = 0; s[n]; n++)
 380:	31 c9                	xor    %ecx,%ecx
}
 382:	5d                   	pop    %ebp
 383:	89 c8                	mov    %ecx,%eax
 385:	c3                   	ret
 386:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 38d:	00 
 38e:	66 90                	xchg   %ax,%ax

00000390 <memset>:

void*
memset(void *dst, int c, uint n)
{
 390:	55                   	push   %ebp
 391:	89 e5                	mov    %esp,%ebp
 393:	57                   	push   %edi
 394:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
 397:	8b 4d 10             	mov    0x10(%ebp),%ecx
 39a:	8b 45 0c             	mov    0xc(%ebp),%eax
 39d:	89 d7                	mov    %edx,%edi
 39f:	fc                   	cld
 3a0:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 3a2:	8b 7d fc             	mov    -0x4(%ebp),%edi
 3a5:	89 d0                	mov    %edx,%eax
 3a7:	c9                   	leave
 3a8:	c3                   	ret
 3a9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000003b0 <strchr>:

char*
strchr(const char *s, char c)
{
 3b0:	55                   	push   %ebp
 3b1:	89 e5                	mov    %esp,%ebp
 3b3:	8b 45 08             	mov    0x8(%ebp),%eax
 3b6:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
 3ba:	0f b6 10             	movzbl (%eax),%edx
 3bd:	84 d2                	test   %dl,%dl
 3bf:	75 12                	jne    3d3 <strchr+0x23>
 3c1:	eb 1d                	jmp    3e0 <strchr+0x30>
 3c3:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
 3c8:	0f b6 50 01          	movzbl 0x1(%eax),%edx
 3cc:	83 c0 01             	add    $0x1,%eax
 3cf:	84 d2                	test   %dl,%dl
 3d1:	74 0d                	je     3e0 <strchr+0x30>
    if(*s == c)
 3d3:	38 d1                	cmp    %dl,%cl
 3d5:	75 f1                	jne    3c8 <strchr+0x18>
      return (char*)s;
  return 0;
}
 3d7:	5d                   	pop    %ebp
 3d8:	c3                   	ret
 3d9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
 3e0:	31 c0                	xor    %eax,%eax
}
 3e2:	5d                   	pop    %ebp
 3e3:	c3                   	ret
 3e4:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 3eb:	00 
 3ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000003f0 <gets>:

char*
gets(char *buf, int max)
{
 3f0:	55                   	push   %ebp
 3f1:	89 e5                	mov    %esp,%ebp
 3f3:	57                   	push   %edi
 3f4:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
 3f5:	8d 75 e7             	lea    -0x19(%ebp),%esi
{
 3f8:	53                   	push   %ebx
  for(i=0; i+1 < max; ){
 3f9:	31 db                	xor    %ebx,%ebx
{
 3fb:	83 ec 1c             	sub    $0x1c,%esp
  for(i=0; i+1 < max; ){
 3fe:	eb 27                	jmp    427 <gets+0x37>
    cc = read(0, &c, 1);
 400:	83 ec 04             	sub    $0x4,%esp
 403:	6a 01                	push   $0x1
 405:	56                   	push   %esi
 406:	6a 00                	push   $0x0
 408:	e8 1e 01 00 00       	call   52b <read>
    if(cc < 1)
 40d:	83 c4 10             	add    $0x10,%esp
 410:	85 c0                	test   %eax,%eax
 412:	7e 1d                	jle    431 <gets+0x41>
      break;
    buf[i++] = c;
 414:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 418:	8b 55 08             	mov    0x8(%ebp),%edx
 41b:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 41f:	3c 0a                	cmp    $0xa,%al
 421:	74 10                	je     433 <gets+0x43>
 423:	3c 0d                	cmp    $0xd,%al
 425:	74 0c                	je     433 <gets+0x43>
  for(i=0; i+1 < max; ){
 427:	89 df                	mov    %ebx,%edi
 429:	83 c3 01             	add    $0x1,%ebx
 42c:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 42f:	7c cf                	jl     400 <gets+0x10>
 431:	89 fb                	mov    %edi,%ebx
      break;
  }
  buf[i] = '\0';
 433:	8b 45 08             	mov    0x8(%ebp),%eax
 436:	c6 04 18 00          	movb   $0x0,(%eax,%ebx,1)
  return buf;
}
 43a:	8d 65 f4             	lea    -0xc(%ebp),%esp
 43d:	5b                   	pop    %ebx
 43e:	5e                   	pop    %esi
 43f:	5f                   	pop    %edi
 440:	5d                   	pop    %ebp
 441:	c3                   	ret
 442:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 449:	00 
 44a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000450 <stat>:

int
stat(const char *n, struct stat *st)
{
 450:	55                   	push   %ebp
 451:	89 e5                	mov    %esp,%ebp
 453:	56                   	push   %esi
 454:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 455:	83 ec 08             	sub    $0x8,%esp
 458:	6a 00                	push   $0x0
 45a:	ff 75 08             	push   0x8(%ebp)
 45d:	e8 f1 00 00 00       	call   553 <open>
  if(fd < 0)
 462:	83 c4 10             	add    $0x10,%esp
 465:	85 c0                	test   %eax,%eax
 467:	78 27                	js     490 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 469:	83 ec 08             	sub    $0x8,%esp
 46c:	ff 75 0c             	push   0xc(%ebp)
 46f:	89 c3                	mov    %eax,%ebx
 471:	50                   	push   %eax
 472:	e8 f4 00 00 00       	call   56b <fstat>
  close(fd);
 477:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 47a:	89 c6                	mov    %eax,%esi
  close(fd);
 47c:	e8 ba 00 00 00       	call   53b <close>
  return r;
 481:	83 c4 10             	add    $0x10,%esp
}
 484:	8d 65 f8             	lea    -0x8(%ebp),%esp
 487:	89 f0                	mov    %esi,%eax
 489:	5b                   	pop    %ebx
 48a:	5e                   	pop    %esi
 48b:	5d                   	pop    %ebp
 48c:	c3                   	ret
 48d:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
 490:	be ff ff ff ff       	mov    $0xffffffff,%esi
 495:	eb ed                	jmp    484 <stat+0x34>
 497:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 49e:	00 
 49f:	90                   	nop

000004a0 <atoi>:

int
atoi(const char *s)
{
 4a0:	55                   	push   %ebp
 4a1:	89 e5                	mov    %esp,%ebp
 4a3:	53                   	push   %ebx
 4a4:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 4a7:	0f be 02             	movsbl (%edx),%eax
 4aa:	8d 48 d0             	lea    -0x30(%eax),%ecx
 4ad:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
 4b0:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
 4b5:	77 1e                	ja     4d5 <atoi+0x35>
 4b7:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 4be:	00 
 4bf:	90                   	nop
    n = n*10 + *s++ - '0';
 4c0:	83 c2 01             	add    $0x1,%edx
 4c3:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
 4c6:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
 4ca:	0f be 02             	movsbl (%edx),%eax
 4cd:	8d 58 d0             	lea    -0x30(%eax),%ebx
 4d0:	80 fb 09             	cmp    $0x9,%bl
 4d3:	76 eb                	jbe    4c0 <atoi+0x20>
  return n;
}
 4d5:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 4d8:	89 c8                	mov    %ecx,%eax
 4da:	c9                   	leave
 4db:	c3                   	ret
 4dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000004e0 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
 4e0:	55                   	push   %ebp
 4e1:	89 e5                	mov    %esp,%ebp
 4e3:	57                   	push   %edi
 4e4:	8b 45 10             	mov    0x10(%ebp),%eax
 4e7:	8b 55 08             	mov    0x8(%ebp),%edx
 4ea:	56                   	push   %esi
 4eb:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 4ee:	85 c0                	test   %eax,%eax
 4f0:	7e 13                	jle    505 <memmove+0x25>
 4f2:	01 d0                	add    %edx,%eax
  dst = vdst;
 4f4:	89 d7                	mov    %edx,%edi
 4f6:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 4fd:	00 
 4fe:	66 90                	xchg   %ax,%ax
    *dst++ = *src++;
 500:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
 501:	39 f8                	cmp    %edi,%eax
 503:	75 fb                	jne    500 <memmove+0x20>
  return vdst;
}
 505:	5e                   	pop    %esi
 506:	89 d0                	mov    %edx,%eax
 508:	5f                   	pop    %edi
 509:	5d                   	pop    %ebp
 50a:	c3                   	ret

0000050b <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 50b:	b8 01 00 00 00       	mov    $0x1,%eax
 510:	cd 40                	int    $0x40
 512:	c3                   	ret

00000513 <exit>:
SYSCALL(exit)
 513:	b8 02 00 00 00       	mov    $0x2,%eax
 518:	cd 40                	int    $0x40
 51a:	c3                   	ret

0000051b <wait>:
SYSCALL(wait)
 51b:	b8 03 00 00 00       	mov    $0x3,%eax
 520:	cd 40                	int    $0x40
 522:	c3                   	ret

00000523 <pipe>:
SYSCALL(pipe)
 523:	b8 04 00 00 00       	mov    $0x4,%eax
 528:	cd 40                	int    $0x40
 52a:	c3                   	ret

0000052b <read>:
SYSCALL(read)
 52b:	b8 05 00 00 00       	mov    $0x5,%eax
 530:	cd 40                	int    $0x40
 532:	c3                   	ret

00000533 <write>:
SYSCALL(write)
 533:	b8 10 00 00 00       	mov    $0x10,%eax
 538:	cd 40                	int    $0x40
 53a:	c3                   	ret

0000053b <close>:
SYSCALL(close)
 53b:	b8 15 00 00 00       	mov    $0x15,%eax
 540:	cd 40                	int    $0x40
 542:	c3                   	ret

00000543 <kill>:
SYSCALL(kill)
 543:	b8 06 00 00 00       	mov    $0x6,%eax
 548:	cd 40                	int    $0x40
 54a:	c3                   	ret

0000054b <exec>:
SYSCALL(exec)
 54b:	b8 07 00 00 00       	mov    $0x7,%eax
 550:	cd 40                	int    $0x40
 552:	c3                   	ret

00000553 <open>:
SYSCALL(open)
 553:	b8 0f 00 00 00       	mov    $0xf,%eax
 558:	cd 40                	int    $0x40
 55a:	c3                   	ret

0000055b <mknod>:
SYSCALL(mknod)
 55b:	b8 11 00 00 00       	mov    $0x11,%eax
 560:	cd 40                	int    $0x40
 562:	c3                   	ret

00000563 <unlink>:
SYSCALL(unlink)
 563:	b8 12 00 00 00       	mov    $0x12,%eax
 568:	cd 40                	int    $0x40
 56a:	c3                   	ret

0000056b <fstat>:
SYSCALL(fstat)
 56b:	b8 08 00 00 00       	mov    $0x8,%eax
 570:	cd 40                	int    $0x40
 572:	c3                   	ret

00000573 <link>:
SYSCALL(link)
 573:	b8 13 00 00 00       	mov    $0x13,%eax
 578:	cd 40                	int    $0x40
 57a:	c3                   	ret

0000057b <mkdir>:
SYSCALL(mkdir)
 57b:	b8 14 00 00 00       	mov    $0x14,%eax
 580:	cd 40                	int    $0x40
 582:	c3                   	ret

00000583 <chdir>:
SYSCALL(chdir)
 583:	b8 09 00 00 00       	mov    $0x9,%eax
 588:	cd 40                	int    $0x40
 58a:	c3                   	ret

0000058b <dup>:
SYSCALL(dup)
 58b:	b8 0a 00 00 00       	mov    $0xa,%eax
 590:	cd 40                	int    $0x40
 592:	c3                   	ret

00000593 <getpid>:
SYSCALL(getpid)
 593:	b8 0b 00 00 00       	mov    $0xb,%eax
 598:	cd 40                	int    $0x40
 59a:	c3                   	ret

0000059b <sbrk>:
SYSCALL(sbrk)
 59b:	b8 0c 00 00 00       	mov    $0xc,%eax
 5a0:	cd 40                	int    $0x40
 5a2:	c3                   	ret

000005a3 <sleep>:
SYSCALL(sleep)
 5a3:	b8 0d 00 00 00       	mov    $0xd,%eax
 5a8:	cd 40                	int    $0x40
 5aa:	c3                   	ret

000005ab <uptime>:
SYSCALL(uptime)
 5ab:	b8 0e 00 00 00       	mov    $0xe,%eax
 5b0:	cd 40                	int    $0x40
 5b2:	c3                   	ret

000005b3 <getsysinfo>:
SYSCALL(getsysinfo) 
 5b3:	b8 16 00 00 00       	mov    $0x16,%eax
 5b8:	cd 40                	int    $0x40
 5ba:	c3                   	ret
 5bb:	66 90                	xchg   %ax,%ax
 5bd:	66 90                	xchg   %ax,%ax
 5bf:	90                   	nop

000005c0 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 5c0:	55                   	push   %ebp
 5c1:	89 e5                	mov    %esp,%ebp
 5c3:	57                   	push   %edi
 5c4:	56                   	push   %esi
 5c5:	53                   	push   %ebx
 5c6:	89 cb                	mov    %ecx,%ebx
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
 5c8:	89 d1                	mov    %edx,%ecx
{
 5ca:	83 ec 3c             	sub    $0x3c,%esp
 5cd:	89 45 c0             	mov    %eax,-0x40(%ebp)
  if(sgn && xx < 0){
 5d0:	85 d2                	test   %edx,%edx
 5d2:	0f 89 80 00 00 00    	jns    658 <printint+0x98>
 5d8:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 5dc:	74 7a                	je     658 <printint+0x98>
    x = -xx;
 5de:	f7 d9                	neg    %ecx
    neg = 1;
 5e0:	b8 01 00 00 00       	mov    $0x1,%eax
  } else {
    x = xx;
  }

  i = 0;
 5e5:	89 45 c4             	mov    %eax,-0x3c(%ebp)
 5e8:	31 f6                	xor    %esi,%esi
 5ea:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
 5f0:	89 c8                	mov    %ecx,%eax
 5f2:	31 d2                	xor    %edx,%edx
 5f4:	89 f7                	mov    %esi,%edi
 5f6:	f7 f3                	div    %ebx
 5f8:	8d 76 01             	lea    0x1(%esi),%esi
 5fb:	0f b6 92 60 0a 00 00 	movzbl 0xa60(%edx),%edx
 602:	88 54 35 d7          	mov    %dl,-0x29(%ebp,%esi,1)
  }while((x /= base) != 0);
 606:	89 ca                	mov    %ecx,%edx
 608:	89 c1                	mov    %eax,%ecx
 60a:	39 da                	cmp    %ebx,%edx
 60c:	73 e2                	jae    5f0 <printint+0x30>
  if(neg)
 60e:	8b 45 c4             	mov    -0x3c(%ebp),%eax
 611:	85 c0                	test   %eax,%eax
 613:	74 07                	je     61c <printint+0x5c>
    buf[i++] = '-';
 615:	c6 44 35 d8 2d       	movb   $0x2d,-0x28(%ebp,%esi,1)

  while(--i >= 0)
 61a:	89 f7                	mov    %esi,%edi
 61c:	8d 5d d8             	lea    -0x28(%ebp),%ebx
 61f:	8b 75 c0             	mov    -0x40(%ebp),%esi
 622:	01 df                	add    %ebx,%edi
 624:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    putc(fd, buf[i]);
 628:	0f b6 07             	movzbl (%edi),%eax
  write(fd, &c, 1);
 62b:	83 ec 04             	sub    $0x4,%esp
 62e:	88 45 d7             	mov    %al,-0x29(%ebp)
 631:	8d 45 d7             	lea    -0x29(%ebp),%eax
 634:	6a 01                	push   $0x1
 636:	50                   	push   %eax
 637:	56                   	push   %esi
 638:	e8 f6 fe ff ff       	call   533 <write>
  while(--i >= 0)
 63d:	89 f8                	mov    %edi,%eax
 63f:	83 c4 10             	add    $0x10,%esp
 642:	83 ef 01             	sub    $0x1,%edi
 645:	39 c3                	cmp    %eax,%ebx
 647:	75 df                	jne    628 <printint+0x68>
}
 649:	8d 65 f4             	lea    -0xc(%ebp),%esp
 64c:	5b                   	pop    %ebx
 64d:	5e                   	pop    %esi
 64e:	5f                   	pop    %edi
 64f:	5d                   	pop    %ebp
 650:	c3                   	ret
 651:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 658:	31 c0                	xor    %eax,%eax
 65a:	eb 89                	jmp    5e5 <printint+0x25>
 65c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000660 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 660:	55                   	push   %ebp
 661:	89 e5                	mov    %esp,%ebp
 663:	57                   	push   %edi
 664:	56                   	push   %esi
 665:	53                   	push   %ebx
 666:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 669:	8b 75 0c             	mov    0xc(%ebp),%esi
{
 66c:	8b 7d 08             	mov    0x8(%ebp),%edi
  for(i = 0; fmt[i]; i++){
 66f:	0f b6 1e             	movzbl (%esi),%ebx
 672:	83 c6 01             	add    $0x1,%esi
 675:	84 db                	test   %bl,%bl
 677:	74 67                	je     6e0 <printf+0x80>
 679:	8d 4d 10             	lea    0x10(%ebp),%ecx
 67c:	31 d2                	xor    %edx,%edx
 67e:	89 4d d0             	mov    %ecx,-0x30(%ebp)
 681:	eb 34                	jmp    6b7 <printf+0x57>
 683:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
 688:	89 55 d4             	mov    %edx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
 68b:	ba 25 00 00 00       	mov    $0x25,%edx
      if(c == '%'){
 690:	83 f8 25             	cmp    $0x25,%eax
 693:	74 18                	je     6ad <printf+0x4d>
  write(fd, &c, 1);
 695:	83 ec 04             	sub    $0x4,%esp
 698:	8d 45 e7             	lea    -0x19(%ebp),%eax
 69b:	88 5d e7             	mov    %bl,-0x19(%ebp)
 69e:	6a 01                	push   $0x1
 6a0:	50                   	push   %eax
 6a1:	57                   	push   %edi
 6a2:	e8 8c fe ff ff       	call   533 <write>
 6a7:	8b 55 d4             	mov    -0x2c(%ebp),%edx
      } else {
        putc(fd, c);
 6aa:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 6ad:	0f b6 1e             	movzbl (%esi),%ebx
 6b0:	83 c6 01             	add    $0x1,%esi
 6b3:	84 db                	test   %bl,%bl
 6b5:	74 29                	je     6e0 <printf+0x80>
    c = fmt[i] & 0xff;
 6b7:	0f b6 c3             	movzbl %bl,%eax
    if(state == 0){
 6ba:	85 d2                	test   %edx,%edx
 6bc:	74 ca                	je     688 <printf+0x28>
      }
    } else if(state == '%'){
 6be:	83 fa 25             	cmp    $0x25,%edx
 6c1:	75 ea                	jne    6ad <printf+0x4d>
      if(c == 'd'){
 6c3:	83 f8 25             	cmp    $0x25,%eax
 6c6:	0f 84 04 01 00 00    	je     7d0 <printf+0x170>
 6cc:	83 e8 63             	sub    $0x63,%eax
 6cf:	83 f8 15             	cmp    $0x15,%eax
 6d2:	77 1c                	ja     6f0 <printf+0x90>
 6d4:	ff 24 85 08 0a 00 00 	jmp    *0xa08(,%eax,4)
 6db:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 6e0:	8d 65 f4             	lea    -0xc(%ebp),%esp
 6e3:	5b                   	pop    %ebx
 6e4:	5e                   	pop    %esi
 6e5:	5f                   	pop    %edi
 6e6:	5d                   	pop    %ebp
 6e7:	c3                   	ret
 6e8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 6ef:	00 
  write(fd, &c, 1);
 6f0:	83 ec 04             	sub    $0x4,%esp
 6f3:	8d 55 e7             	lea    -0x19(%ebp),%edx
 6f6:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 6fa:	6a 01                	push   $0x1
 6fc:	52                   	push   %edx
 6fd:	89 55 d4             	mov    %edx,-0x2c(%ebp)
 700:	57                   	push   %edi
 701:	e8 2d fe ff ff       	call   533 <write>
 706:	83 c4 0c             	add    $0xc,%esp
 709:	88 5d e7             	mov    %bl,-0x19(%ebp)
 70c:	6a 01                	push   $0x1
 70e:	8b 55 d4             	mov    -0x2c(%ebp),%edx
 711:	52                   	push   %edx
 712:	57                   	push   %edi
 713:	e8 1b fe ff ff       	call   533 <write>
        putc(fd, c);
 718:	83 c4 10             	add    $0x10,%esp
      state = 0;
 71b:	31 d2                	xor    %edx,%edx
 71d:	eb 8e                	jmp    6ad <printf+0x4d>
 71f:	90                   	nop
        printint(fd, *ap, 16, 0);
 720:	8b 5d d0             	mov    -0x30(%ebp),%ebx
 723:	83 ec 0c             	sub    $0xc,%esp
 726:	b9 10 00 00 00       	mov    $0x10,%ecx
 72b:	8b 13                	mov    (%ebx),%edx
 72d:	6a 00                	push   $0x0
 72f:	89 f8                	mov    %edi,%eax
        ap++;
 731:	83 c3 04             	add    $0x4,%ebx
        printint(fd, *ap, 16, 0);
 734:	e8 87 fe ff ff       	call   5c0 <printint>
        ap++;
 739:	89 5d d0             	mov    %ebx,-0x30(%ebp)
 73c:	83 c4 10             	add    $0x10,%esp
      state = 0;
 73f:	31 d2                	xor    %edx,%edx
 741:	e9 67 ff ff ff       	jmp    6ad <printf+0x4d>
        s = (char*)*ap;
 746:	8b 45 d0             	mov    -0x30(%ebp),%eax
 749:	8b 18                	mov    (%eax),%ebx
        ap++;
 74b:	83 c0 04             	add    $0x4,%eax
 74e:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
 751:	85 db                	test   %ebx,%ebx
 753:	0f 84 87 00 00 00    	je     7e0 <printf+0x180>
        while(*s != 0){
 759:	0f b6 03             	movzbl (%ebx),%eax
      state = 0;
 75c:	31 d2                	xor    %edx,%edx
        while(*s != 0){
 75e:	84 c0                	test   %al,%al
 760:	0f 84 47 ff ff ff    	je     6ad <printf+0x4d>
 766:	8d 55 e7             	lea    -0x19(%ebp),%edx
 769:	89 75 d4             	mov    %esi,-0x2c(%ebp)
 76c:	89 de                	mov    %ebx,%esi
 76e:	89 d3                	mov    %edx,%ebx
  write(fd, &c, 1);
 770:	83 ec 04             	sub    $0x4,%esp
 773:	88 45 e7             	mov    %al,-0x19(%ebp)
          s++;
 776:	83 c6 01             	add    $0x1,%esi
  write(fd, &c, 1);
 779:	6a 01                	push   $0x1
 77b:	53                   	push   %ebx
 77c:	57                   	push   %edi
 77d:	e8 b1 fd ff ff       	call   533 <write>
        while(*s != 0){
 782:	0f b6 06             	movzbl (%esi),%eax
 785:	83 c4 10             	add    $0x10,%esp
 788:	84 c0                	test   %al,%al
 78a:	75 e4                	jne    770 <printf+0x110>
      state = 0;
 78c:	8b 75 d4             	mov    -0x2c(%ebp),%esi
 78f:	31 d2                	xor    %edx,%edx
 791:	e9 17 ff ff ff       	jmp    6ad <printf+0x4d>
        printint(fd, *ap, 10, 1);
 796:	8b 5d d0             	mov    -0x30(%ebp),%ebx
 799:	83 ec 0c             	sub    $0xc,%esp
 79c:	b9 0a 00 00 00       	mov    $0xa,%ecx
 7a1:	8b 13                	mov    (%ebx),%edx
 7a3:	6a 01                	push   $0x1
 7a5:	eb 88                	jmp    72f <printf+0xcf>
        putc(fd, *ap);
 7a7:	8b 5d d0             	mov    -0x30(%ebp),%ebx
  write(fd, &c, 1);
 7aa:	83 ec 04             	sub    $0x4,%esp
 7ad:	8d 55 e7             	lea    -0x19(%ebp),%edx
        putc(fd, *ap);
 7b0:	8b 03                	mov    (%ebx),%eax
        ap++;
 7b2:	83 c3 04             	add    $0x4,%ebx
        putc(fd, *ap);
 7b5:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 7b8:	6a 01                	push   $0x1
 7ba:	52                   	push   %edx
 7bb:	57                   	push   %edi
 7bc:	e8 72 fd ff ff       	call   533 <write>
        ap++;
 7c1:	89 5d d0             	mov    %ebx,-0x30(%ebp)
 7c4:	83 c4 10             	add    $0x10,%esp
      state = 0;
 7c7:	31 d2                	xor    %edx,%edx
 7c9:	e9 df fe ff ff       	jmp    6ad <printf+0x4d>
 7ce:	66 90                	xchg   %ax,%ax
  write(fd, &c, 1);
 7d0:	83 ec 04             	sub    $0x4,%esp
 7d3:	88 5d e7             	mov    %bl,-0x19(%ebp)
 7d6:	8d 55 e7             	lea    -0x19(%ebp),%edx
 7d9:	6a 01                	push   $0x1
 7db:	e9 31 ff ff ff       	jmp    711 <printf+0xb1>
 7e0:	b8 28 00 00 00       	mov    $0x28,%eax
          s = "(null)";
 7e5:	bb 00 0a 00 00       	mov    $0xa00,%ebx
 7ea:	e9 77 ff ff ff       	jmp    766 <printf+0x106>
 7ef:	90                   	nop

000007f0 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 7f0:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 7f1:	a1 44 0d 00 00       	mov    0xd44,%eax
{
 7f6:	89 e5                	mov    %esp,%ebp
 7f8:	57                   	push   %edi
 7f9:	56                   	push   %esi
 7fa:	53                   	push   %ebx
 7fb:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 7fe:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 801:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 808:	8b 10                	mov    (%eax),%edx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 80a:	39 c8                	cmp    %ecx,%eax
 80c:	73 32                	jae    840 <free+0x50>
 80e:	39 d1                	cmp    %edx,%ecx
 810:	72 04                	jb     816 <free+0x26>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 812:	39 d0                	cmp    %edx,%eax
 814:	72 32                	jb     848 <free+0x58>
      break;
  if(bp + bp->s.size == p->s.ptr){
 816:	8b 73 fc             	mov    -0x4(%ebx),%esi
 819:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 81c:	39 fa                	cmp    %edi,%edx
 81e:	74 30                	je     850 <free+0x60>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
 820:	89 53 f8             	mov    %edx,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 823:	8b 50 04             	mov    0x4(%eax),%edx
 826:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 829:	39 f1                	cmp    %esi,%ecx
 82b:	74 3a                	je     867 <free+0x77>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
 82d:	89 08                	mov    %ecx,(%eax)
  } else
    p->s.ptr = bp;
  freep = p;
}
 82f:	5b                   	pop    %ebx
  freep = p;
 830:	a3 44 0d 00 00       	mov    %eax,0xd44
}
 835:	5e                   	pop    %esi
 836:	5f                   	pop    %edi
 837:	5d                   	pop    %ebp
 838:	c3                   	ret
 839:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 840:	39 d0                	cmp    %edx,%eax
 842:	72 04                	jb     848 <free+0x58>
 844:	39 d1                	cmp    %edx,%ecx
 846:	72 ce                	jb     816 <free+0x26>
{
 848:	89 d0                	mov    %edx,%eax
 84a:	eb bc                	jmp    808 <free+0x18>
 84c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    bp->s.size += p->s.ptr->s.size;
 850:	03 72 04             	add    0x4(%edx),%esi
 853:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 856:	8b 10                	mov    (%eax),%edx
 858:	8b 12                	mov    (%edx),%edx
 85a:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
 85d:	8b 50 04             	mov    0x4(%eax),%edx
 860:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 863:	39 f1                	cmp    %esi,%ecx
 865:	75 c6                	jne    82d <free+0x3d>
    p->s.size += bp->s.size;
 867:	03 53 fc             	add    -0x4(%ebx),%edx
  freep = p;
 86a:	a3 44 0d 00 00       	mov    %eax,0xd44
    p->s.size += bp->s.size;
 86f:	89 50 04             	mov    %edx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
 872:	8b 4b f8             	mov    -0x8(%ebx),%ecx
 875:	89 08                	mov    %ecx,(%eax)
}
 877:	5b                   	pop    %ebx
 878:	5e                   	pop    %esi
 879:	5f                   	pop    %edi
 87a:	5d                   	pop    %ebp
 87b:	c3                   	ret
 87c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000880 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 880:	55                   	push   %ebp
 881:	89 e5                	mov    %esp,%ebp
 883:	57                   	push   %edi
 884:	56                   	push   %esi
 885:	53                   	push   %ebx
 886:	83 ec 0c             	sub    $0xc,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 889:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 88c:	8b 15 44 0d 00 00    	mov    0xd44,%edx
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 892:	8d 78 07             	lea    0x7(%eax),%edi
 895:	c1 ef 03             	shr    $0x3,%edi
 898:	83 c7 01             	add    $0x1,%edi
  if((prevp = freep) == 0){
 89b:	85 d2                	test   %edx,%edx
 89d:	0f 84 8d 00 00 00    	je     930 <malloc+0xb0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 8a3:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 8a5:	8b 48 04             	mov    0x4(%eax),%ecx
 8a8:	39 f9                	cmp    %edi,%ecx
 8aa:	73 64                	jae    910 <malloc+0x90>
  if(nu < 4096)
 8ac:	bb 00 10 00 00       	mov    $0x1000,%ebx
 8b1:	39 df                	cmp    %ebx,%edi
 8b3:	0f 43 df             	cmovae %edi,%ebx
  p = sbrk(nu * sizeof(Header));
 8b6:	8d 34 dd 00 00 00 00 	lea    0x0(,%ebx,8),%esi
 8bd:	eb 0a                	jmp    8c9 <malloc+0x49>
 8bf:	90                   	nop
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 8c0:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 8c2:	8b 48 04             	mov    0x4(%eax),%ecx
 8c5:	39 f9                	cmp    %edi,%ecx
 8c7:	73 47                	jae    910 <malloc+0x90>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 8c9:	89 c2                	mov    %eax,%edx
 8cb:	3b 05 44 0d 00 00    	cmp    0xd44,%eax
 8d1:	75 ed                	jne    8c0 <malloc+0x40>
  p = sbrk(nu * sizeof(Header));
 8d3:	83 ec 0c             	sub    $0xc,%esp
 8d6:	56                   	push   %esi
 8d7:	e8 bf fc ff ff       	call   59b <sbrk>
  if(p == (char*)-1)
 8dc:	83 c4 10             	add    $0x10,%esp
 8df:	83 f8 ff             	cmp    $0xffffffff,%eax
 8e2:	74 1c                	je     900 <malloc+0x80>
  hp->s.size = nu;
 8e4:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 8e7:	83 ec 0c             	sub    $0xc,%esp
 8ea:	83 c0 08             	add    $0x8,%eax
 8ed:	50                   	push   %eax
 8ee:	e8 fd fe ff ff       	call   7f0 <free>
  return freep;
 8f3:	8b 15 44 0d 00 00    	mov    0xd44,%edx
      if((p = morecore(nunits)) == 0)
 8f9:	83 c4 10             	add    $0x10,%esp
 8fc:	85 d2                	test   %edx,%edx
 8fe:	75 c0                	jne    8c0 <malloc+0x40>
        return 0;
  }
}
 900:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 903:	31 c0                	xor    %eax,%eax
}
 905:	5b                   	pop    %ebx
 906:	5e                   	pop    %esi
 907:	5f                   	pop    %edi
 908:	5d                   	pop    %ebp
 909:	c3                   	ret
 90a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 910:	39 cf                	cmp    %ecx,%edi
 912:	74 4c                	je     960 <malloc+0xe0>
        p->s.size -= nunits;
 914:	29 f9                	sub    %edi,%ecx
 916:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 919:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 91c:	89 78 04             	mov    %edi,0x4(%eax)
      freep = prevp;
 91f:	89 15 44 0d 00 00    	mov    %edx,0xd44
}
 925:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 928:	83 c0 08             	add    $0x8,%eax
}
 92b:	5b                   	pop    %ebx
 92c:	5e                   	pop    %esi
 92d:	5f                   	pop    %edi
 92e:	5d                   	pop    %ebp
 92f:	c3                   	ret
    base.s.ptr = freep = prevp = &base;
 930:	c7 05 44 0d 00 00 48 	movl   $0xd48,0xd44
 937:	0d 00 00 
    base.s.size = 0;
 93a:	b8 48 0d 00 00       	mov    $0xd48,%eax
    base.s.ptr = freep = prevp = &base;
 93f:	c7 05 48 0d 00 00 48 	movl   $0xd48,0xd48
 946:	0d 00 00 
    base.s.size = 0;
 949:	c7 05 4c 0d 00 00 00 	movl   $0x0,0xd4c
 950:	00 00 00 
    if(p->s.size >= nunits){
 953:	e9 54 ff ff ff       	jmp    8ac <malloc+0x2c>
 958:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 95f:	00 
        prevp->s.ptr = p->s.ptr;
 960:	8b 08                	mov    (%eax),%ecx
 962:	89 0a                	mov    %ecx,(%edx)
 964:	eb b9                	jmp    91f <malloc+0x9f>
