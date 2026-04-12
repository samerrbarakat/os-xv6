
_chnguser:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
        close(file); return -1 ; 

    }
    close(file) ; return 0 ; 
}
int main(void){
   0:	8d 4c 24 04          	lea    0x4(%esp),%ecx
   4:	83 e4 f0             	and    $0xfffffff0,%esp
   7:	ff 71 fc             	push   -0x4(%ecx)
   a:	55                   	push   %ebp
   b:	89 e5                	mov    %esp,%ebp
   d:	57                   	push   %edi
   e:	56                   	push   %esi
    char pswrd[50] ; 
    char current[50] ; 
    char new_usrnm[50] ; 
    char confirm_usrnm[50] ;
    
    if (read_credentials(old_usrnm,pswrd)<0){
   f:	8d 85 ee fe ff ff    	lea    -0x112(%ebp),%eax
  15:	8d bd 20 ff ff ff    	lea    -0xe0(%ebp),%edi
int main(void){
  1b:	53                   	push   %ebx
  1c:	51                   	push   %ecx
  1d:	81 ec 20 01 00 00    	sub    $0x120,%esp
    if (read_credentials(old_usrnm,pswrd)<0){
  23:	57                   	push   %edi
  24:	50                   	push   %eax
  25:	e8 d6 01 00 00       	call   200 <read_credentials>
  2a:	83 c4 10             	add    $0x10,%esp
  2d:	85 c0                	test   %eax,%eax
  2f:	0f 88 17 01 00 00    	js     14c <main+0x14c>
        printf(1,"error reading creds\n"); 
        exit(); 
    }

    printf(1,"Enter current password: ");
  35:	50                   	push   %eax
    gets(current,sizeof(current)); 
  36:	8d 9d 52 ff ff ff    	lea    -0xae(%ebp),%ebx
    printf(1,"Enter current password: ");
  3c:	50                   	push   %eax
  3d:	68 48 0c 00 00       	push   $0xc48
  42:	6a 01                	push   $0x1
  44:	e8 67 08 00 00       	call   8b0 <printf>
    gets(current,sizeof(current)); 
  49:	58                   	pop    %eax
  4a:	5a                   	pop    %edx
  4b:	6a 32                	push   $0x32
  4d:	53                   	push   %ebx
  4e:	e8 ed 05 00 00       	call   640 <gets>
    int i = 0 ; 
    while(current[i]!='\0'){
  53:	0f b6 85 52 ff ff ff 	movzbl -0xae(%ebp),%eax
  5a:	83 c4 10             	add    $0x10,%esp
  5d:	84 c0                	test   %al,%al
  5f:	74 1e                	je     7f <main+0x7f>
    int i = 0 ; 
  61:	31 d2                	xor    %edx,%edx
  63:	eb 0e                	jmp    73 <main+0x73>
  65:	8d 76 00             	lea    0x0(%esi),%esi
        if (current[i]=='\n') {
            current[i]='\0' ; 
            break ; 
        }
        i++ ; 
  68:	83 c2 01             	add    $0x1,%edx
    while(current[i]!='\0'){
  6b:	0f b6 04 13          	movzbl (%ebx,%edx,1),%eax
  6f:	84 c0                	test   %al,%al
  71:	74 0c                	je     7f <main+0x7f>
        if (current[i]=='\n') {
  73:	3c 0a                	cmp    $0xa,%al
  75:	75 f1                	jne    68 <main+0x68>
            current[i]='\0' ; 
  77:	c6 84 15 52 ff ff ff 	movb   $0x0,-0xae(%ebp,%edx,1)
  7e:	00 
    }
    if (strcmp(pswrd,current)!=0){
  7f:	50                   	push   %eax
  80:	50                   	push   %eax
  81:	53                   	push   %ebx
  82:	57                   	push   %edi
  83:	e8 c8 04 00 00       	call   550 <strcmp>
  88:	83 c4 10             	add    $0x10,%esp
  8b:	85 c0                	test   %eax,%eax
  8d:	0f 85 a6 00 00 00    	jne    139 <main+0x139>
        printf(1,"wrong password\n") ; 
        exit();
    }

    printf(1,"Enter new username: ") ; 
  93:	53                   	push   %ebx
  94:	53                   	push   %ebx
  95:	68 71 0c 00 00       	push   $0xc71
  9a:	6a 01                	push   $0x1
  9c:	89 85 e4 fe ff ff    	mov    %eax,-0x11c(%ebp)
  a2:	e8 09 08 00 00       	call   8b0 <printf>
    gets(new_usrnm,sizeof(new_usrnm)); 
  a7:	5e                   	pop    %esi
  a8:	58                   	pop    %eax
  a9:	8d 45 84             	lea    -0x7c(%ebp),%eax
  ac:	6a 32                	push   $0x32
  ae:	50                   	push   %eax
  af:	e8 8c 05 00 00       	call   640 <gets>
    i = 0 ; 
    while(new_usrnm[i]!='\0'){
  b4:	0f b6 45 84          	movzbl -0x7c(%ebp),%eax
  b8:	83 c4 10             	add    $0x10,%esp
    i = 0 ; 
  bb:	31 d2                	xor    %edx,%edx
    while(new_usrnm[i]!='\0'){
  bd:	8b 8d e4 fe ff ff    	mov    -0x11c(%ebp),%ecx
  c3:	84 c0                	test   %al,%al
  c5:	75 15                	jne    dc <main+0xdc>
  c7:	eb 5d                	jmp    126 <main+0x126>
  c9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        if (new_usrnm[i]=='\n') {
            new_usrnm[i]='\0' ; 
            break ; 
        }
        i++ ; 
  d0:	83 c2 01             	add    $0x1,%edx
    while(new_usrnm[i]!='\0'){
  d3:	0f b6 44 15 84       	movzbl -0x7c(%ebp,%edx,1),%eax
  d8:	84 c0                	test   %al,%al
  da:	74 09                	je     e5 <main+0xe5>
        if (new_usrnm[i]=='\n') {
  dc:	3c 0a                	cmp    $0xa,%al
  de:	75 f0                	jne    d0 <main+0xd0>
            new_usrnm[i]='\0' ; 
  e0:	c6 44 15 84 00       	movb   $0x0,-0x7c(%ebp,%edx,1)
    if (s[i]=='\0') return 0 ; 
  e5:	0f b6 45 84          	movzbl -0x7c(%ebp),%eax
  e9:	a8 df                	test   $0xdf,%al
  eb:	74 39                	je     126 <main+0x126>
        if (s[i]==' ' || s[i]=='\t' || s[i]=='\n') return 0 ; 
  ed:	83 e8 09             	sub    $0x9,%eax
        if (i>=49) return 0 ; 
  f0:	3c 01                	cmp    $0x1,%al
  f2:	76 32                	jbe    126 <main+0x126>
  f4:	89 8d e4 fe ff ff    	mov    %ecx,-0x11c(%ebp)
    int i = 0 ; 
  fa:	31 d2                	xor    %edx,%edx
  fc:	eb 09                	jmp    107 <main+0x107>
  fe:	66 90                	xchg   %ax,%ax
        if (s[i]==' ' || s[i]=='\t' || s[i]=='\n') return 0 ; 
 100:	83 e8 09             	sub    $0x9,%eax
        if (i>=49) return 0 ; 
 103:	3c 01                	cmp    $0x1,%al
 105:	76 1f                	jbe    126 <main+0x126>
        i++  ; 
 107:	83 c2 01             	add    $0x1,%edx
    while (s[i]!='\0'){
 10a:	0f b6 44 15 84       	movzbl -0x7c(%ebp,%edx,1),%eax
 10f:	84 c0                	test   %al,%al
 111:	74 4c                	je     15f <main+0x15f>
        if (s[i]==' ' || s[i]=='\t' || s[i]=='\n') return 0 ; 
 113:	3c 20                	cmp    $0x20,%al
 115:	0f 94 c1             	sete   %cl
        if (i>=49) return 0 ; 
 118:	83 fa 31             	cmp    $0x31,%edx
        if (s[i]==' ' || s[i]=='\t' || s[i]=='\n') return 0 ; 
 11b:	89 ce                	mov    %ecx,%esi
        if (i>=49) return 0 ; 
 11d:	0f 94 c1             	sete   %cl
 120:	89 f3                	mov    %esi,%ebx
 122:	08 d9                	or     %bl,%cl
 124:	74 da                	je     100 <main+0x100>
    }
    int checkvalid_user = validate_field(new_usrnm); 
    if (!checkvalid_user){
        printf(1,"invalid username, your username, must contain no spaces and less than 49 characters.\n"); 
 126:	51                   	push   %ecx
 127:	51                   	push   %ecx
 128:	68 d4 0c 00 00       	push   $0xcd4
 12d:	6a 01                	push   $0x1
 12f:	e8 7c 07 00 00       	call   8b0 <printf>
        exit(); 
 134:	e8 2a 06 00 00       	call   763 <exit>
        printf(1,"wrong password\n") ; 
 139:	50                   	push   %eax
 13a:	50                   	push   %eax
 13b:	68 61 0c 00 00       	push   $0xc61
 140:	6a 01                	push   $0x1
 142:	e8 69 07 00 00       	call   8b0 <printf>
        exit();
 147:	e8 17 06 00 00       	call   763 <exit>
        printf(1,"error reading creds\n"); 
 14c:	51                   	push   %ecx
 14d:	51                   	push   %ecx
 14e:	68 33 0c 00 00       	push   $0xc33
 153:	6a 01                	push   $0x1
 155:	e8 56 07 00 00       	call   8b0 <printf>
        exit(); 
 15a:	e8 04 06 00 00       	call   763 <exit>
    }
    printf(1,"Confirm new username: ") ; 
 15f:	50                   	push   %eax
    gets(confirm_usrnm,sizeof(confirm_usrnm)); 
 160:	8d 75 b6             	lea    -0x4a(%ebp),%esi
    printf(1,"Confirm new username: ") ; 
 163:	50                   	push   %eax
 164:	68 b4 0c 00 00       	push   $0xcb4
 169:	6a 01                	push   $0x1
 16b:	e8 40 07 00 00       	call   8b0 <printf>
    gets(confirm_usrnm,sizeof(confirm_usrnm)); 
 170:	58                   	pop    %eax
 171:	5a                   	pop    %edx
 172:	6a 32                	push   $0x32
 174:	56                   	push   %esi
 175:	e8 c6 04 00 00       	call   640 <gets>
    i=0 ; 
    while(confirm_usrnm[i]!='\0'){
 17a:	8b 8d e4 fe ff ff    	mov    -0x11c(%ebp),%ecx
 180:	83 c4 10             	add    $0x10,%esp
 183:	eb 07                	jmp    18c <main+0x18c>
        if (confirm_usrnm[i]=='\n') {
 185:	3c 0a                	cmp    $0xa,%al
 187:	74 57                	je     1e0 <main+0x1e0>
            confirm_usrnm[i]='\0' ; 
            break ; 
        }
        i++ ; 
 189:	83 c1 01             	add    $0x1,%ecx
    while(confirm_usrnm[i]!='\0'){
 18c:	0f b6 04 0e          	movzbl (%esi,%ecx,1),%eax
 190:	84 c0                	test   %al,%al
 192:	75 f1                	jne    185 <main+0x185>
    }

    if (strcmp(new_usrnm,confirm_usrnm)!=0){
 194:	50                   	push   %eax
 195:	50                   	push   %eax
 196:	8d 45 84             	lea    -0x7c(%ebp),%eax
 199:	56                   	push   %esi
 19a:	50                   	push   %eax
 19b:	e8 b0 03 00 00       	call   550 <strcmp>
 1a0:	83 c4 10             	add    $0x10,%esp
 1a3:	85 c0                	test   %eax,%eax
 1a5:	74 13                	je     1ba <main+0x1ba>
        printf(1,"usernames dont match\n"); 
 1a7:	53                   	push   %ebx
 1a8:	53                   	push   %ebx
 1a9:	68 86 0c 00 00       	push   $0xc86
 1ae:	6a 01                	push   $0x1
 1b0:	e8 fb 06 00 00       	call   8b0 <printf>
        exit();
 1b5:	e8 a9 05 00 00       	call   763 <exit>
    }

    int check_write = write_credentials(new_usrnm,pswrd); 
 1ba:	8d 45 84             	lea    -0x7c(%ebp),%eax
 1bd:	51                   	push   %ecx
 1be:	51                   	push   %ecx
 1bf:	57                   	push   %edi
 1c0:	50                   	push   %eax
 1c1:	e8 0a 02 00 00       	call   3d0 <write_credentials>
    if (check_write<0){
 1c6:	83 c4 10             	add    $0x10,%esp
 1c9:	85 c0                	test   %eax,%eax
 1cb:	78 1a                	js     1e7 <main+0x1e7>
        printf(1,"failed to change creds\n") ; 
        exit() ; 
    }

    printf(1,"username change was successful\n") ; 
 1cd:	50                   	push   %eax
 1ce:	50                   	push   %eax
 1cf:	68 2c 0d 00 00       	push   $0xd2c
 1d4:	6a 01                	push   $0x1
 1d6:	e8 d5 06 00 00       	call   8b0 <printf>
    exit(); 
 1db:	e8 83 05 00 00       	call   763 <exit>
            confirm_usrnm[i]='\0' ; 
 1e0:	c6 44 0d b6 00       	movb   $0x0,-0x4a(%ebp,%ecx,1)
            break ; 
 1e5:	eb ad                	jmp    194 <main+0x194>
        printf(1,"failed to change creds\n") ; 
 1e7:	52                   	push   %edx
 1e8:	52                   	push   %edx
 1e9:	68 9c 0c 00 00       	push   $0xc9c
 1ee:	6a 01                	push   $0x1
 1f0:	e8 bb 06 00 00       	call   8b0 <printf>
        exit() ; 
 1f5:	e8 69 05 00 00       	call   763 <exit>
 1fa:	66 90                	xchg   %ax,%ax
 1fc:	66 90                	xchg   %ax,%ax
 1fe:	66 90                	xchg   %ax,%ax

00000200 <read_credentials>:
int read_credentials(char* usernm, char * passwd){
 200:	55                   	push   %ebp
 201:	89 e5                	mov    %esp,%ebp
 203:	57                   	push   %edi
 204:	56                   	push   %esi
 205:	53                   	push   %ebx
 206:	81 ec 94 00 00 00    	sub    $0x94,%esp
 20c:	8b 75 0c             	mov    0xc(%ebp),%esi
    int file = open("users.txt",0); 
 20f:	6a 00                	push   $0x0
 211:	68 b8 0b 00 00       	push   $0xbb8
 216:	e8 88 05 00 00       	call   7a3 <open>
    if (file <0){
 21b:	83 c4 10             	add    $0x10,%esp
 21e:	85 c0                	test   %eax,%eax
 220:	0f 88 2a 01 00 00    	js     350 <read_credentials+0x150>
    int n = read(file, buf, sizeof(buf)-1); 
 226:	83 ec 04             	sub    $0x4,%esp
 229:	8d 5d 84             	lea    -0x7c(%ebp),%ebx
 22c:	89 c7                	mov    %eax,%edi
 22e:	6a 63                	push   $0x63
 230:	53                   	push   %ebx
 231:	50                   	push   %eax
 232:	e8 44 05 00 00       	call   77b <read>
    if (n <0){
 237:	83 c4 10             	add    $0x10,%esp
 23a:	85 c0                	test   %eax,%eax
 23c:	0f 88 0e 01 00 00    	js     350 <read_credentials+0x150>
    close(file) ; 
 242:	83 ec 0c             	sub    $0xc,%esp
    buf[n]='\0';
 245:	c6 44 05 84 00       	movb   $0x0,-0x7c(%ebp,%eax,1)
    close(file) ; 
 24a:	57                   	push   %edi
 24b:	e8 3b 05 00 00       	call   78b <close>
    while (buf[i]==' '|| buf[i]=='\t' || buf[i]=='\n') {
 250:	0f b6 45 84          	movzbl -0x7c(%ebp),%eax
 254:	83 c4 10             	add    $0x10,%esp
 257:	8d 50 f7             	lea    -0x9(%eax),%edx
 25a:	80 fa 01             	cmp    $0x1,%dl
    int i = 0 ; 
 25d:	ba 00 00 00 00       	mov    $0x0,%edx
    while (buf[i]==' '|| buf[i]=='\t' || buf[i]=='\n') {
 262:	77 13                	ja     277 <read_credentials+0x77>
 264:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        i++ ; 
 268:	83 c2 01             	add    $0x1,%edx
    while (buf[i]==' '|| buf[i]=='\t' || buf[i]=='\n') {
 26b:	0f b6 04 13          	movzbl (%ebx,%edx,1),%eax
 26f:	8d 48 f7             	lea    -0x9(%eax),%ecx
 272:	80 f9 01             	cmp    $0x1,%cl
 275:	76 f1                	jbe    268 <read_credentials+0x68>
 277:	3c 20                	cmp    $0x20,%al
 279:	74 ed                	je     268 <read_credentials+0x68>
    while (buf[i]!=' '&& buf[i]!='\t'&& buf[i]!='\n'&& buf[i]!='\0' && j<49){
 27b:	a8 df                	test   $0xdf,%al
 27d:	0f 84 c5 00 00 00    	je     348 <read_credentials+0x148>
     int j = 0 ; 
 283:	89 95 74 ff ff ff    	mov    %edx,-0x8c(%ebp)
 289:	8b 7d 08             	mov    0x8(%ebp),%edi
 28c:	31 c9                	xor    %ecx,%ecx
 28e:	89 75 0c             	mov    %esi,0xc(%ebp)
 291:	eb 12                	jmp    2a5 <read_credentials+0xa5>
 293:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
    while (buf[i]!=' '&& buf[i]!='\t'&& buf[i]!='\n'&& buf[i]!='\0' && j<49){
 298:	a8 df                	test   $0xdf,%al
 29a:	74 2a                	je     2c6 <read_credentials+0xc6>
 29c:	83 f9 31             	cmp    $0x31,%ecx
 29f:	0f 84 8d 00 00 00    	je     332 <read_credentials+0x132>
        usernm[j] = buf[i] ; 
 2a5:	88 04 0f             	mov    %al,(%edi,%ecx,1)
        i++ ; j++ ; 
 2a8:	83 c1 01             	add    $0x1,%ecx
 2ab:	83 85 74 ff ff ff 01 	addl   $0x1,-0x8c(%ebp)
 2b2:	8b 85 74 ff ff ff    	mov    -0x8c(%ebp),%eax
    while (buf[i]!=' '&& buf[i]!='\t'&& buf[i]!='\n'&& buf[i]!='\0' && j<49){
 2b8:	0f b6 04 03          	movzbl (%ebx,%eax,1),%eax
 2bc:	8d 70 f7             	lea    -0x9(%eax),%esi
 2bf:	89 f2                	mov    %esi,%edx
 2c1:	80 fa 01             	cmp    $0x1,%dl
 2c4:	77 d2                	ja     298 <read_credentials+0x98>
    usernm[j]='\0' ; 
 2c6:	8b 95 74 ff ff ff    	mov    -0x8c(%ebp),%edx
 2cc:	8b 75 0c             	mov    0xc(%ebp),%esi
 2cf:	03 4d 08             	add    0x8(%ebp),%ecx
 2d2:	c6 01 00             	movb   $0x0,(%ecx)
    while (buf[i]==' '|| buf[i]=='\t') {
 2d5:	3c 20                	cmp    $0x20,%al
 2d7:	75 12                	jne    2eb <read_credentials+0xeb>
 2d9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        i++ ; 
 2e0:	83 c2 01             	add    $0x1,%edx
    while (buf[i]==' '|| buf[i]=='\t') {
 2e3:	0f b6 04 13          	movzbl (%ebx,%edx,1),%eax
 2e7:	3c 20                	cmp    $0x20,%al
 2e9:	74 f5                	je     2e0 <read_credentials+0xe0>
 2eb:	3c 09                	cmp    $0x9,%al
 2ed:	74 f1                	je     2e0 <read_credentials+0xe0>
    while (buf[i]!=' '&& buf[i]!='\t'&& buf[i]!='\n'&& buf[i]!='\0' && k<49){
 2ef:	8d 48 f7             	lea    -0x9(%eax),%ecx
 2f2:	80 f9 01             	cmp    $0x1,%cl
 2f5:	76 2e                	jbe    325 <read_credentials+0x125>
 2f7:	a8 df                	test   $0xdf,%al
 2f9:	74 2a                	je     325 <read_credentials+0x125>
   int k = 0 ; 
 2fb:	31 c9                	xor    %ecx,%ecx
    while (buf[i]!=' '&& buf[i]!='\t'&& buf[i]!='\n'&& buf[i]!='\0' && k<49){
 2fd:	01 d3                	add    %edx,%ebx
 2ff:	eb 14                	jmp    315 <read_credentials+0x115>
 301:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 308:	8d 50 f7             	lea    -0x9(%eax),%edx
 30b:	80 fa 01             	cmp    $0x1,%dl
 30e:	76 13                	jbe    323 <read_credentials+0x123>
 310:	83 f9 31             	cmp    $0x31,%ecx
 313:	74 2e                	je     343 <read_credentials+0x143>
        passwd[k]= buf[i] ; 
 315:	88 04 0e             	mov    %al,(%esi,%ecx,1)
        i++ ; k++ ; 
 318:	83 c1 01             	add    $0x1,%ecx
    while (buf[i]!=' '&& buf[i]!='\t'&& buf[i]!='\n'&& buf[i]!='\0' && k<49){
 31b:	0f b6 04 0b          	movzbl (%ebx,%ecx,1),%eax
 31f:	a8 df                	test   $0xdf,%al
 321:	75 e5                	jne    308 <read_credentials+0x108>
    passwd[k] = '\0' ; 
 323:	01 ce                	add    %ecx,%esi
 325:	c6 06 00             	movb   $0x0,(%esi)
    return 0; 
 328:	31 c0                	xor    %eax,%eax
}
 32a:	8d 65 f4             	lea    -0xc(%ebp),%esp
 32d:	5b                   	pop    %ebx
 32e:	5e                   	pop    %esi
 32f:	5f                   	pop    %edi
 330:	5d                   	pop    %ebp
 331:	c3                   	ret
    usernm[j]='\0' ; 
 332:	8b 7d 08             	mov    0x8(%ebp),%edi
 335:	8b 95 74 ff ff ff    	mov    -0x8c(%ebp),%edx
 33b:	8b 75 0c             	mov    0xc(%ebp),%esi
 33e:	8d 4f 31             	lea    0x31(%edi),%ecx
 341:	eb 8f                	jmp    2d2 <read_credentials+0xd2>
    passwd[k] = '\0' ; 
 343:	83 c6 31             	add    $0x31,%esi
 346:	eb dd                	jmp    325 <read_credentials+0x125>
    usernm[j]='\0' ; 
 348:	8b 45 08             	mov    0x8(%ebp),%eax
 34b:	c6 00 00             	movb   $0x0,(%eax)
    while (buf[i]!=' '&& buf[i]!='\t'&& buf[i]!='\n'&& buf[i]!='\0' && k<49){
 34e:	eb d5                	jmp    325 <read_credentials+0x125>
        printf(1,"error reading credentials..\n"); 
 350:	83 ec 08             	sub    $0x8,%esp
 353:	68 c2 0b 00 00       	push   $0xbc2
 358:	6a 01                	push   $0x1
 35a:	e8 51 05 00 00       	call   8b0 <printf>
        return -1; 
 35f:	83 c4 10             	add    $0x10,%esp
 362:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 367:	eb c1                	jmp    32a <read_credentials+0x12a>
 369:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000370 <validate_field>:
int validate_field(char* s){
 370:	55                   	push   %ebp
    if (s[i]=='\0') return 0 ; 
 371:	31 d2                	xor    %edx,%edx
int validate_field(char* s){
 373:	89 e5                	mov    %esp,%ebp
 375:	57                   	push   %edi
 376:	8b 7d 08             	mov    0x8(%ebp),%edi
 379:	56                   	push   %esi
 37a:	53                   	push   %ebx
    if (s[i]=='\0') return 0 ; 
 37b:	0f b6 07             	movzbl (%edi),%eax
 37e:	a8 df                	test   $0xdf,%al
 380:	74 31                	je     3b3 <validate_field+0x43>
        if (s[i]==' ' || s[i]=='\t' || s[i]=='\n') return 0 ; 
 382:	83 e8 09             	sub    $0x9,%eax
        if (i>=49) return 0 ; 
 385:	3c 01                	cmp    $0x1,%al
 387:	77 0e                	ja     397 <validate_field+0x27>
 389:	eb 28                	jmp    3b3 <validate_field+0x43>
 38b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
        if (s[i]==' ' || s[i]=='\t' || s[i]=='\n') return 0 ; 
 390:	83 e8 09             	sub    $0x9,%eax
        if (i>=49) return 0 ; 
 393:	3c 01                	cmp    $0x1,%al
 395:	76 1a                	jbe    3b1 <validate_field+0x41>
        i++  ; 
 397:	83 c2 01             	add    $0x1,%edx
    while (s[i]!='\0'){
 39a:	0f b6 04 17          	movzbl (%edi,%edx,1),%eax
 39e:	84 c0                	test   %al,%al
 3a0:	74 1e                	je     3c0 <validate_field+0x50>
        if (i>=49) return 0 ; 
 3a2:	83 fa 31             	cmp    $0x31,%edx
 3a5:	0f 94 c1             	sete   %cl
        if (s[i]==' ' || s[i]=='\t' || s[i]=='\n') return 0 ; 
 3a8:	3c 20                	cmp    $0x20,%al
 3aa:	0f 94 c3             	sete   %bl
        if (i>=49) return 0 ; 
 3ad:	08 d9                	or     %bl,%cl
 3af:	74 df                	je     390 <validate_field+0x20>
    if (s[i]=='\0') return 0 ; 
 3b1:	31 d2                	xor    %edx,%edx
}
 3b3:	5b                   	pop    %ebx
 3b4:	89 d0                	mov    %edx,%eax
 3b6:	5e                   	pop    %esi
 3b7:	5f                   	pop    %edi
 3b8:	5d                   	pop    %ebp
 3b9:	c3                   	ret
 3ba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    return 1 ; 
 3c0:	ba 01 00 00 00       	mov    $0x1,%edx
}
 3c5:	5b                   	pop    %ebx
 3c6:	5e                   	pop    %esi
 3c7:	89 d0                	mov    %edx,%eax
 3c9:	5f                   	pop    %edi
 3ca:	5d                   	pop    %ebp
 3cb:	c3                   	ret
 3cc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000003d0 <write_credentials>:
int write_credentials(char* new_usernm, char* old_passwd){
 3d0:	55                   	push   %ebp
 3d1:	89 e5                	mov    %esp,%ebp
 3d3:	57                   	push   %edi
 3d4:	56                   	push   %esi
 3d5:	53                   	push   %ebx
 3d6:	81 ec 88 00 00 00    	sub    $0x88,%esp
 3dc:	8b 7d 08             	mov    0x8(%ebp),%edi
    if (unlink("users.txt")<0){
 3df:	68 b8 0b 00 00       	push   $0xbb8
 3e4:	e8 ca 03 00 00       	call   7b3 <unlink>
 3e9:	83 c4 10             	add    $0x10,%esp
 3ec:	85 c0                	test   %eax,%eax
 3ee:	0f 88 f8 00 00 00    	js     4ec <write_credentials+0x11c>
    file = open("users.txt",O_CREATE | O_WRONLY) ; 
 3f4:	83 ec 08             	sub    $0x8,%esp
 3f7:	68 01 02 00 00       	push   $0x201
 3fc:	68 b8 0b 00 00       	push   $0xbb8
 401:	e8 9d 03 00 00       	call   7a3 <open>
    if (file<0){
 406:	83 c4 10             	add    $0x10,%esp
    file = open("users.txt",O_CREATE | O_WRONLY) ; 
 409:	89 c6                	mov    %eax,%esi
    if (file<0){
 40b:	85 c0                	test   %eax,%eax
 40d:	0f 88 ed 00 00 00    	js     500 <write_credentials+0x130>
    while (new_usernm[j]!='\0' && i<49){
 413:	0f b6 17             	movzbl (%edi),%edx
    int  i=0 ; int j=0; int k = 0 ; 
 416:	31 c0                	xor    %eax,%eax
 418:	8d 5d 84             	lea    -0x7c(%ebp),%ebx
    while (new_usernm[j]!='\0' && i<49){
 41b:	84 d2                	test   %dl,%dl
 41d:	75 12                	jne    431 <write_credentials+0x61>
 41f:	e9 98 00 00 00       	jmp    4bc <write_credentials+0xec>
 424:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 428:	83 f8 31             	cmp    $0x31,%eax
 42b:	0f 84 7f 00 00 00    	je     4b0 <write_credentials+0xe0>
        buf[i] = new_usernm[j] ; i++ ; j++ ; 
 431:	88 14 03             	mov    %dl,(%ebx,%eax,1)
 434:	89 c1                	mov    %eax,%ecx
 436:	83 c0 01             	add    $0x1,%eax
    while (new_usernm[j]!='\0' && i<49){
 439:	0f b6 14 07          	movzbl (%edi,%eax,1),%edx
 43d:	84 d2                	test   %dl,%dl
 43f:	75 e7                	jne    428 <write_credentials+0x58>
    i++ ; 
 441:	8d 51 02             	lea    0x2(%ecx),%edx
    buf[i]='\n' ; i++ ; 
 444:	8d 79 03             	lea    0x3(%ecx),%edi
    buf[i] = ' ' ; 
 447:	c6 44 05 84 20       	movb   $0x20,-0x7c(%ebp,%eax,1)
    while(old_passwd[k]!='\0' && i <99) {
 44c:	8b 45 0c             	mov    0xc(%ebp),%eax
 44f:	0f b6 00             	movzbl (%eax),%eax
 452:	84 c0                	test   %al,%al
 454:	74 22                	je     478 <write_credentials+0xa8>
 456:	8b 7d 0c             	mov    0xc(%ebp),%edi
 459:	29 d7                	sub    %edx,%edi
 45b:	eb 08                	jmp    465 <write_credentials+0x95>
 45d:	8d 76 00             	lea    0x0(%esi),%esi
 460:	83 fa 63             	cmp    $0x63,%edx
 463:	74 43                	je     4a8 <write_credentials+0xd8>
        buf[i] = old_passwd[k] ; 
 465:	88 04 13             	mov    %al,(%ebx,%edx,1)
        i++ ; 
 468:	89 d1                	mov    %edx,%ecx
 46a:	83 c2 01             	add    $0x1,%edx
    while(old_passwd[k]!='\0' && i <99) {
 46d:	0f b6 04 17          	movzbl (%edi,%edx,1),%eax
 471:	84 c0                	test   %al,%al
 473:	75 eb                	jne    460 <write_credentials+0x90>
    buf[i]='\n' ; i++ ; 
 475:	8d 79 02             	lea    0x2(%ecx),%edi
    int check_write = write(file,buf,i) ; 
 478:	83 ec 04             	sub    $0x4,%esp
    buf[i]='\n' ; i++ ; 
 47b:	c6 44 15 84 0a       	movb   $0xa,-0x7c(%ebp,%edx,1)
    int check_write = write(file,buf,i) ; 
 480:	57                   	push   %edi
 481:	53                   	push   %ebx
 482:	56                   	push   %esi
 483:	e8 fb 02 00 00       	call   783 <write>
    if (check_write!=i){
 488:	83 c4 10             	add    $0x10,%esp
 48b:	39 f8                	cmp    %edi,%eax
 48d:	75 3c                	jne    4cb <write_credentials+0xfb>
    close(file) ; return 0 ; 
 48f:	83 ec 0c             	sub    $0xc,%esp
 492:	56                   	push   %esi
 493:	e8 f3 02 00 00       	call   78b <close>
 498:	83 c4 10             	add    $0x10,%esp
 49b:	31 c0                	xor    %eax,%eax
}
 49d:	8d 65 f4             	lea    -0xc(%ebp),%esp
 4a0:	5b                   	pop    %ebx
 4a1:	5e                   	pop    %esi
 4a2:	5f                   	pop    %edi
 4a3:	5d                   	pop    %ebp
 4a4:	c3                   	ret
 4a5:	8d 76 00             	lea    0x0(%esi),%esi
 4a8:	bf 64 00 00 00       	mov    $0x64,%edi
 4ad:	eb c9                	jmp    478 <write_credentials+0xa8>
 4af:	90                   	nop
 4b0:	bf 33 00 00 00       	mov    $0x33,%edi
 4b5:	ba 32 00 00 00       	mov    $0x32,%edx
 4ba:	eb 8b                	jmp    447 <write_credentials+0x77>
    while (new_usernm[j]!='\0' && i<49){
 4bc:	bf 02 00 00 00       	mov    $0x2,%edi
 4c1:	ba 01 00 00 00       	mov    $0x1,%edx
 4c6:	e9 7c ff ff ff       	jmp    447 <write_credentials+0x77>
        printf(1,"Error writing to cred file..\n"); 
 4cb:	83 ec 08             	sub    $0x8,%esp
 4ce:	68 15 0c 00 00       	push   $0xc15
 4d3:	6a 01                	push   $0x1
 4d5:	e8 d6 03 00 00       	call   8b0 <printf>
        close(file); return -1 ; 
 4da:	89 34 24             	mov    %esi,(%esp)
 4dd:	e8 a9 02 00 00       	call   78b <close>
 4e2:	83 c4 10             	add    $0x10,%esp
        return -1; 
 4e5:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 4ea:	eb b1                	jmp    49d <write_credentials+0xcd>
        printf(1,"error deleting credentials\n") ; 
 4ec:	83 ec 08             	sub    $0x8,%esp
 4ef:	68 df 0b 00 00       	push   $0xbdf
 4f4:	6a 01                	push   $0x1
 4f6:	e8 b5 03 00 00       	call   8b0 <printf>
        return -1; 
 4fb:	83 c4 10             	add    $0x10,%esp
 4fe:	eb e5                	jmp    4e5 <write_credentials+0x115>
        printf(1,"error creating cred file\n") ; 
 500:	83 ec 08             	sub    $0x8,%esp
 503:	68 fb 0b 00 00       	push   $0xbfb
 508:	6a 01                	push   $0x1
 50a:	e8 a1 03 00 00       	call   8b0 <printf>
        return -1;
 50f:	83 c4 10             	add    $0x10,%esp
 512:	eb d1                	jmp    4e5 <write_credentials+0x115>
 514:	66 90                	xchg   %ax,%ax
 516:	66 90                	xchg   %ax,%ax
 518:	66 90                	xchg   %ax,%ax
 51a:	66 90                	xchg   %ax,%ax
 51c:	66 90                	xchg   %ax,%ax
 51e:	66 90                	xchg   %ax,%ax

00000520 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, const char *t)
{
 520:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 521:	31 c0                	xor    %eax,%eax
{
 523:	89 e5                	mov    %esp,%ebp
 525:	53                   	push   %ebx
 526:	8b 4d 08             	mov    0x8(%ebp),%ecx
 529:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 52c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while((*s++ = *t++) != 0)
 530:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
 534:	88 14 01             	mov    %dl,(%ecx,%eax,1)
 537:	83 c0 01             	add    $0x1,%eax
 53a:	84 d2                	test   %dl,%dl
 53c:	75 f2                	jne    530 <strcpy+0x10>
    ;
  return os;
}
 53e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 541:	89 c8                	mov    %ecx,%eax
 543:	c9                   	leave
 544:	c3                   	ret
 545:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 54c:	00 
 54d:	8d 76 00             	lea    0x0(%esi),%esi

00000550 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 550:	55                   	push   %ebp
 551:	89 e5                	mov    %esp,%ebp
 553:	53                   	push   %ebx
 554:	8b 55 08             	mov    0x8(%ebp),%edx
 557:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 55a:	0f b6 02             	movzbl (%edx),%eax
 55d:	84 c0                	test   %al,%al
 55f:	75 17                	jne    578 <strcmp+0x28>
 561:	eb 3a                	jmp    59d <strcmp+0x4d>
 563:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
 568:	0f b6 42 01          	movzbl 0x1(%edx),%eax
    p++, q++;
 56c:	83 c2 01             	add    $0x1,%edx
 56f:	8d 59 01             	lea    0x1(%ecx),%ebx
  while(*p && *p == *q)
 572:	84 c0                	test   %al,%al
 574:	74 1a                	je     590 <strcmp+0x40>
 576:	89 d9                	mov    %ebx,%ecx
 578:	0f b6 19             	movzbl (%ecx),%ebx
 57b:	38 c3                	cmp    %al,%bl
 57d:	74 e9                	je     568 <strcmp+0x18>
  return (uchar)*p - (uchar)*q;
 57f:	29 d8                	sub    %ebx,%eax
}
 581:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 584:	c9                   	leave
 585:	c3                   	ret
 586:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 58d:	00 
 58e:	66 90                	xchg   %ax,%ax
  return (uchar)*p - (uchar)*q;
 590:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
 594:	31 c0                	xor    %eax,%eax
 596:	29 d8                	sub    %ebx,%eax
}
 598:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 59b:	c9                   	leave
 59c:	c3                   	ret
  return (uchar)*p - (uchar)*q;
 59d:	0f b6 19             	movzbl (%ecx),%ebx
 5a0:	31 c0                	xor    %eax,%eax
 5a2:	eb db                	jmp    57f <strcmp+0x2f>
 5a4:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 5ab:	00 
 5ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000005b0 <strlen>:

uint
strlen(const char *s)
{
 5b0:	55                   	push   %ebp
 5b1:	89 e5                	mov    %esp,%ebp
 5b3:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
 5b6:	80 3a 00             	cmpb   $0x0,(%edx)
 5b9:	74 15                	je     5d0 <strlen+0x20>
 5bb:	31 c0                	xor    %eax,%eax
 5bd:	8d 76 00             	lea    0x0(%esi),%esi
 5c0:	83 c0 01             	add    $0x1,%eax
 5c3:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
 5c7:	89 c1                	mov    %eax,%ecx
 5c9:	75 f5                	jne    5c0 <strlen+0x10>
    ;
  return n;
}
 5cb:	89 c8                	mov    %ecx,%eax
 5cd:	5d                   	pop    %ebp
 5ce:	c3                   	ret
 5cf:	90                   	nop
  for(n = 0; s[n]; n++)
 5d0:	31 c9                	xor    %ecx,%ecx
}
 5d2:	5d                   	pop    %ebp
 5d3:	89 c8                	mov    %ecx,%eax
 5d5:	c3                   	ret
 5d6:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 5dd:	00 
 5de:	66 90                	xchg   %ax,%ax

000005e0 <memset>:

void*
memset(void *dst, int c, uint n)
{
 5e0:	55                   	push   %ebp
 5e1:	89 e5                	mov    %esp,%ebp
 5e3:	57                   	push   %edi
 5e4:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
 5e7:	8b 4d 10             	mov    0x10(%ebp),%ecx
 5ea:	8b 45 0c             	mov    0xc(%ebp),%eax
 5ed:	89 d7                	mov    %edx,%edi
 5ef:	fc                   	cld
 5f0:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 5f2:	8b 7d fc             	mov    -0x4(%ebp),%edi
 5f5:	89 d0                	mov    %edx,%eax
 5f7:	c9                   	leave
 5f8:	c3                   	ret
 5f9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000600 <strchr>:

char*
strchr(const char *s, char c)
{
 600:	55                   	push   %ebp
 601:	89 e5                	mov    %esp,%ebp
 603:	8b 45 08             	mov    0x8(%ebp),%eax
 606:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
 60a:	0f b6 10             	movzbl (%eax),%edx
 60d:	84 d2                	test   %dl,%dl
 60f:	75 12                	jne    623 <strchr+0x23>
 611:	eb 1d                	jmp    630 <strchr+0x30>
 613:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
 618:	0f b6 50 01          	movzbl 0x1(%eax),%edx
 61c:	83 c0 01             	add    $0x1,%eax
 61f:	84 d2                	test   %dl,%dl
 621:	74 0d                	je     630 <strchr+0x30>
    if(*s == c)
 623:	38 d1                	cmp    %dl,%cl
 625:	75 f1                	jne    618 <strchr+0x18>
      return (char*)s;
  return 0;
}
 627:	5d                   	pop    %ebp
 628:	c3                   	ret
 629:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
 630:	31 c0                	xor    %eax,%eax
}
 632:	5d                   	pop    %ebp
 633:	c3                   	ret
 634:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 63b:	00 
 63c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000640 <gets>:

char*
gets(char *buf, int max)
{
 640:	55                   	push   %ebp
 641:	89 e5                	mov    %esp,%ebp
 643:	57                   	push   %edi
 644:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
 645:	8d 75 e7             	lea    -0x19(%ebp),%esi
{
 648:	53                   	push   %ebx
  for(i=0; i+1 < max; ){
 649:	31 db                	xor    %ebx,%ebx
{
 64b:	83 ec 1c             	sub    $0x1c,%esp
  for(i=0; i+1 < max; ){
 64e:	eb 27                	jmp    677 <gets+0x37>
    cc = read(0, &c, 1);
 650:	83 ec 04             	sub    $0x4,%esp
 653:	6a 01                	push   $0x1
 655:	56                   	push   %esi
 656:	6a 00                	push   $0x0
 658:	e8 1e 01 00 00       	call   77b <read>
    if(cc < 1)
 65d:	83 c4 10             	add    $0x10,%esp
 660:	85 c0                	test   %eax,%eax
 662:	7e 1d                	jle    681 <gets+0x41>
      break;
    buf[i++] = c;
 664:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 668:	8b 55 08             	mov    0x8(%ebp),%edx
 66b:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 66f:	3c 0a                	cmp    $0xa,%al
 671:	74 10                	je     683 <gets+0x43>
 673:	3c 0d                	cmp    $0xd,%al
 675:	74 0c                	je     683 <gets+0x43>
  for(i=0; i+1 < max; ){
 677:	89 df                	mov    %ebx,%edi
 679:	83 c3 01             	add    $0x1,%ebx
 67c:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 67f:	7c cf                	jl     650 <gets+0x10>
 681:	89 fb                	mov    %edi,%ebx
      break;
  }
  buf[i] = '\0';
 683:	8b 45 08             	mov    0x8(%ebp),%eax
 686:	c6 04 18 00          	movb   $0x0,(%eax,%ebx,1)
  return buf;
}
 68a:	8d 65 f4             	lea    -0xc(%ebp),%esp
 68d:	5b                   	pop    %ebx
 68e:	5e                   	pop    %esi
 68f:	5f                   	pop    %edi
 690:	5d                   	pop    %ebp
 691:	c3                   	ret
 692:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 699:	00 
 69a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

000006a0 <stat>:

int
stat(const char *n, struct stat *st)
{
 6a0:	55                   	push   %ebp
 6a1:	89 e5                	mov    %esp,%ebp
 6a3:	56                   	push   %esi
 6a4:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 6a5:	83 ec 08             	sub    $0x8,%esp
 6a8:	6a 00                	push   $0x0
 6aa:	ff 75 08             	push   0x8(%ebp)
 6ad:	e8 f1 00 00 00       	call   7a3 <open>
  if(fd < 0)
 6b2:	83 c4 10             	add    $0x10,%esp
 6b5:	85 c0                	test   %eax,%eax
 6b7:	78 27                	js     6e0 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 6b9:	83 ec 08             	sub    $0x8,%esp
 6bc:	ff 75 0c             	push   0xc(%ebp)
 6bf:	89 c3                	mov    %eax,%ebx
 6c1:	50                   	push   %eax
 6c2:	e8 f4 00 00 00       	call   7bb <fstat>
  close(fd);
 6c7:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 6ca:	89 c6                	mov    %eax,%esi
  close(fd);
 6cc:	e8 ba 00 00 00       	call   78b <close>
  return r;
 6d1:	83 c4 10             	add    $0x10,%esp
}
 6d4:	8d 65 f8             	lea    -0x8(%ebp),%esp
 6d7:	89 f0                	mov    %esi,%eax
 6d9:	5b                   	pop    %ebx
 6da:	5e                   	pop    %esi
 6db:	5d                   	pop    %ebp
 6dc:	c3                   	ret
 6dd:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
 6e0:	be ff ff ff ff       	mov    $0xffffffff,%esi
 6e5:	eb ed                	jmp    6d4 <stat+0x34>
 6e7:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 6ee:	00 
 6ef:	90                   	nop

000006f0 <atoi>:

int
atoi(const char *s)
{
 6f0:	55                   	push   %ebp
 6f1:	89 e5                	mov    %esp,%ebp
 6f3:	53                   	push   %ebx
 6f4:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 6f7:	0f be 02             	movsbl (%edx),%eax
 6fa:	8d 48 d0             	lea    -0x30(%eax),%ecx
 6fd:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
 700:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
 705:	77 1e                	ja     725 <atoi+0x35>
 707:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 70e:	00 
 70f:	90                   	nop
    n = n*10 + *s++ - '0';
 710:	83 c2 01             	add    $0x1,%edx
 713:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
 716:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
 71a:	0f be 02             	movsbl (%edx),%eax
 71d:	8d 58 d0             	lea    -0x30(%eax),%ebx
 720:	80 fb 09             	cmp    $0x9,%bl
 723:	76 eb                	jbe    710 <atoi+0x20>
  return n;
}
 725:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 728:	89 c8                	mov    %ecx,%eax
 72a:	c9                   	leave
 72b:	c3                   	ret
 72c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000730 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
 730:	55                   	push   %ebp
 731:	89 e5                	mov    %esp,%ebp
 733:	57                   	push   %edi
 734:	8b 45 10             	mov    0x10(%ebp),%eax
 737:	8b 55 08             	mov    0x8(%ebp),%edx
 73a:	56                   	push   %esi
 73b:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 73e:	85 c0                	test   %eax,%eax
 740:	7e 13                	jle    755 <memmove+0x25>
 742:	01 d0                	add    %edx,%eax
  dst = vdst;
 744:	89 d7                	mov    %edx,%edi
 746:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 74d:	00 
 74e:	66 90                	xchg   %ax,%ax
    *dst++ = *src++;
 750:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
 751:	39 f8                	cmp    %edi,%eax
 753:	75 fb                	jne    750 <memmove+0x20>
  return vdst;
}
 755:	5e                   	pop    %esi
 756:	89 d0                	mov    %edx,%eax
 758:	5f                   	pop    %edi
 759:	5d                   	pop    %ebp
 75a:	c3                   	ret

0000075b <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 75b:	b8 01 00 00 00       	mov    $0x1,%eax
 760:	cd 40                	int    $0x40
 762:	c3                   	ret

00000763 <exit>:
SYSCALL(exit)
 763:	b8 02 00 00 00       	mov    $0x2,%eax
 768:	cd 40                	int    $0x40
 76a:	c3                   	ret

0000076b <wait>:
SYSCALL(wait)
 76b:	b8 03 00 00 00       	mov    $0x3,%eax
 770:	cd 40                	int    $0x40
 772:	c3                   	ret

00000773 <pipe>:
SYSCALL(pipe)
 773:	b8 04 00 00 00       	mov    $0x4,%eax
 778:	cd 40                	int    $0x40
 77a:	c3                   	ret

0000077b <read>:
SYSCALL(read)
 77b:	b8 05 00 00 00       	mov    $0x5,%eax
 780:	cd 40                	int    $0x40
 782:	c3                   	ret

00000783 <write>:
SYSCALL(write)
 783:	b8 10 00 00 00       	mov    $0x10,%eax
 788:	cd 40                	int    $0x40
 78a:	c3                   	ret

0000078b <close>:
SYSCALL(close)
 78b:	b8 15 00 00 00       	mov    $0x15,%eax
 790:	cd 40                	int    $0x40
 792:	c3                   	ret

00000793 <kill>:
SYSCALL(kill)
 793:	b8 06 00 00 00       	mov    $0x6,%eax
 798:	cd 40                	int    $0x40
 79a:	c3                   	ret

0000079b <exec>:
SYSCALL(exec)
 79b:	b8 07 00 00 00       	mov    $0x7,%eax
 7a0:	cd 40                	int    $0x40
 7a2:	c3                   	ret

000007a3 <open>:
SYSCALL(open)
 7a3:	b8 0f 00 00 00       	mov    $0xf,%eax
 7a8:	cd 40                	int    $0x40
 7aa:	c3                   	ret

000007ab <mknod>:
SYSCALL(mknod)
 7ab:	b8 11 00 00 00       	mov    $0x11,%eax
 7b0:	cd 40                	int    $0x40
 7b2:	c3                   	ret

000007b3 <unlink>:
SYSCALL(unlink)
 7b3:	b8 12 00 00 00       	mov    $0x12,%eax
 7b8:	cd 40                	int    $0x40
 7ba:	c3                   	ret

000007bb <fstat>:
SYSCALL(fstat)
 7bb:	b8 08 00 00 00       	mov    $0x8,%eax
 7c0:	cd 40                	int    $0x40
 7c2:	c3                   	ret

000007c3 <link>:
SYSCALL(link)
 7c3:	b8 13 00 00 00       	mov    $0x13,%eax
 7c8:	cd 40                	int    $0x40
 7ca:	c3                   	ret

000007cb <mkdir>:
SYSCALL(mkdir)
 7cb:	b8 14 00 00 00       	mov    $0x14,%eax
 7d0:	cd 40                	int    $0x40
 7d2:	c3                   	ret

000007d3 <chdir>:
SYSCALL(chdir)
 7d3:	b8 09 00 00 00       	mov    $0x9,%eax
 7d8:	cd 40                	int    $0x40
 7da:	c3                   	ret

000007db <dup>:
SYSCALL(dup)
 7db:	b8 0a 00 00 00       	mov    $0xa,%eax
 7e0:	cd 40                	int    $0x40
 7e2:	c3                   	ret

000007e3 <getpid>:
SYSCALL(getpid)
 7e3:	b8 0b 00 00 00       	mov    $0xb,%eax
 7e8:	cd 40                	int    $0x40
 7ea:	c3                   	ret

000007eb <sbrk>:
SYSCALL(sbrk)
 7eb:	b8 0c 00 00 00       	mov    $0xc,%eax
 7f0:	cd 40                	int    $0x40
 7f2:	c3                   	ret

000007f3 <sleep>:
SYSCALL(sleep)
 7f3:	b8 0d 00 00 00       	mov    $0xd,%eax
 7f8:	cd 40                	int    $0x40
 7fa:	c3                   	ret

000007fb <uptime>:
SYSCALL(uptime)
 7fb:	b8 0e 00 00 00       	mov    $0xe,%eax
 800:	cd 40                	int    $0x40
 802:	c3                   	ret

00000803 <getsysinfo>:
SYSCALL(getsysinfo) 
 803:	b8 16 00 00 00       	mov    $0x16,%eax
 808:	cd 40                	int    $0x40
 80a:	c3                   	ret
 80b:	66 90                	xchg   %ax,%ax
 80d:	66 90                	xchg   %ax,%ax
 80f:	90                   	nop

00000810 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 810:	55                   	push   %ebp
 811:	89 e5                	mov    %esp,%ebp
 813:	57                   	push   %edi
 814:	56                   	push   %esi
 815:	53                   	push   %ebx
 816:	89 cb                	mov    %ecx,%ebx
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
 818:	89 d1                	mov    %edx,%ecx
{
 81a:	83 ec 3c             	sub    $0x3c,%esp
 81d:	89 45 c0             	mov    %eax,-0x40(%ebp)
  if(sgn && xx < 0){
 820:	85 d2                	test   %edx,%edx
 822:	0f 89 80 00 00 00    	jns    8a8 <printint+0x98>
 828:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 82c:	74 7a                	je     8a8 <printint+0x98>
    x = -xx;
 82e:	f7 d9                	neg    %ecx
    neg = 1;
 830:	b8 01 00 00 00       	mov    $0x1,%eax
  } else {
    x = xx;
  }

  i = 0;
 835:	89 45 c4             	mov    %eax,-0x3c(%ebp)
 838:	31 f6                	xor    %esi,%esi
 83a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
 840:	89 c8                	mov    %ecx,%eax
 842:	31 d2                	xor    %edx,%edx
 844:	89 f7                	mov    %esi,%edi
 846:	f7 f3                	div    %ebx
 848:	8d 76 01             	lea    0x1(%esi),%esi
 84b:	0f b6 92 a4 0d 00 00 	movzbl 0xda4(%edx),%edx
 852:	88 54 35 d7          	mov    %dl,-0x29(%ebp,%esi,1)
  }while((x /= base) != 0);
 856:	89 ca                	mov    %ecx,%edx
 858:	89 c1                	mov    %eax,%ecx
 85a:	39 da                	cmp    %ebx,%edx
 85c:	73 e2                	jae    840 <printint+0x30>
  if(neg)
 85e:	8b 45 c4             	mov    -0x3c(%ebp),%eax
 861:	85 c0                	test   %eax,%eax
 863:	74 07                	je     86c <printint+0x5c>
    buf[i++] = '-';
 865:	c6 44 35 d8 2d       	movb   $0x2d,-0x28(%ebp,%esi,1)

  while(--i >= 0)
 86a:	89 f7                	mov    %esi,%edi
 86c:	8d 5d d8             	lea    -0x28(%ebp),%ebx
 86f:	8b 75 c0             	mov    -0x40(%ebp),%esi
 872:	01 df                	add    %ebx,%edi
 874:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    putc(fd, buf[i]);
 878:	0f b6 07             	movzbl (%edi),%eax
  write(fd, &c, 1);
 87b:	83 ec 04             	sub    $0x4,%esp
 87e:	88 45 d7             	mov    %al,-0x29(%ebp)
 881:	8d 45 d7             	lea    -0x29(%ebp),%eax
 884:	6a 01                	push   $0x1
 886:	50                   	push   %eax
 887:	56                   	push   %esi
 888:	e8 f6 fe ff ff       	call   783 <write>
  while(--i >= 0)
 88d:	89 f8                	mov    %edi,%eax
 88f:	83 c4 10             	add    $0x10,%esp
 892:	83 ef 01             	sub    $0x1,%edi
 895:	39 c3                	cmp    %eax,%ebx
 897:	75 df                	jne    878 <printint+0x68>
}
 899:	8d 65 f4             	lea    -0xc(%ebp),%esp
 89c:	5b                   	pop    %ebx
 89d:	5e                   	pop    %esi
 89e:	5f                   	pop    %edi
 89f:	5d                   	pop    %ebp
 8a0:	c3                   	ret
 8a1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 8a8:	31 c0                	xor    %eax,%eax
 8aa:	eb 89                	jmp    835 <printint+0x25>
 8ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000008b0 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 8b0:	55                   	push   %ebp
 8b1:	89 e5                	mov    %esp,%ebp
 8b3:	57                   	push   %edi
 8b4:	56                   	push   %esi
 8b5:	53                   	push   %ebx
 8b6:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 8b9:	8b 75 0c             	mov    0xc(%ebp),%esi
{
 8bc:	8b 7d 08             	mov    0x8(%ebp),%edi
  for(i = 0; fmt[i]; i++){
 8bf:	0f b6 1e             	movzbl (%esi),%ebx
 8c2:	83 c6 01             	add    $0x1,%esi
 8c5:	84 db                	test   %bl,%bl
 8c7:	74 67                	je     930 <printf+0x80>
 8c9:	8d 4d 10             	lea    0x10(%ebp),%ecx
 8cc:	31 d2                	xor    %edx,%edx
 8ce:	89 4d d0             	mov    %ecx,-0x30(%ebp)
 8d1:	eb 34                	jmp    907 <printf+0x57>
 8d3:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
 8d8:	89 55 d4             	mov    %edx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
 8db:	ba 25 00 00 00       	mov    $0x25,%edx
      if(c == '%'){
 8e0:	83 f8 25             	cmp    $0x25,%eax
 8e3:	74 18                	je     8fd <printf+0x4d>
  write(fd, &c, 1);
 8e5:	83 ec 04             	sub    $0x4,%esp
 8e8:	8d 45 e7             	lea    -0x19(%ebp),%eax
 8eb:	88 5d e7             	mov    %bl,-0x19(%ebp)
 8ee:	6a 01                	push   $0x1
 8f0:	50                   	push   %eax
 8f1:	57                   	push   %edi
 8f2:	e8 8c fe ff ff       	call   783 <write>
 8f7:	8b 55 d4             	mov    -0x2c(%ebp),%edx
      } else {
        putc(fd, c);
 8fa:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 8fd:	0f b6 1e             	movzbl (%esi),%ebx
 900:	83 c6 01             	add    $0x1,%esi
 903:	84 db                	test   %bl,%bl
 905:	74 29                	je     930 <printf+0x80>
    c = fmt[i] & 0xff;
 907:	0f b6 c3             	movzbl %bl,%eax
    if(state == 0){
 90a:	85 d2                	test   %edx,%edx
 90c:	74 ca                	je     8d8 <printf+0x28>
      }
    } else if(state == '%'){
 90e:	83 fa 25             	cmp    $0x25,%edx
 911:	75 ea                	jne    8fd <printf+0x4d>
      if(c == 'd'){
 913:	83 f8 25             	cmp    $0x25,%eax
 916:	0f 84 04 01 00 00    	je     a20 <printf+0x170>
 91c:	83 e8 63             	sub    $0x63,%eax
 91f:	83 f8 15             	cmp    $0x15,%eax
 922:	77 1c                	ja     940 <printf+0x90>
 924:	ff 24 85 4c 0d 00 00 	jmp    *0xd4c(,%eax,4)
 92b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 930:	8d 65 f4             	lea    -0xc(%ebp),%esp
 933:	5b                   	pop    %ebx
 934:	5e                   	pop    %esi
 935:	5f                   	pop    %edi
 936:	5d                   	pop    %ebp
 937:	c3                   	ret
 938:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 93f:	00 
  write(fd, &c, 1);
 940:	83 ec 04             	sub    $0x4,%esp
 943:	8d 55 e7             	lea    -0x19(%ebp),%edx
 946:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 94a:	6a 01                	push   $0x1
 94c:	52                   	push   %edx
 94d:	89 55 d4             	mov    %edx,-0x2c(%ebp)
 950:	57                   	push   %edi
 951:	e8 2d fe ff ff       	call   783 <write>
 956:	83 c4 0c             	add    $0xc,%esp
 959:	88 5d e7             	mov    %bl,-0x19(%ebp)
 95c:	6a 01                	push   $0x1
 95e:	8b 55 d4             	mov    -0x2c(%ebp),%edx
 961:	52                   	push   %edx
 962:	57                   	push   %edi
 963:	e8 1b fe ff ff       	call   783 <write>
        putc(fd, c);
 968:	83 c4 10             	add    $0x10,%esp
      state = 0;
 96b:	31 d2                	xor    %edx,%edx
 96d:	eb 8e                	jmp    8fd <printf+0x4d>
 96f:	90                   	nop
        printint(fd, *ap, 16, 0);
 970:	8b 5d d0             	mov    -0x30(%ebp),%ebx
 973:	83 ec 0c             	sub    $0xc,%esp
 976:	b9 10 00 00 00       	mov    $0x10,%ecx
 97b:	8b 13                	mov    (%ebx),%edx
 97d:	6a 00                	push   $0x0
 97f:	89 f8                	mov    %edi,%eax
        ap++;
 981:	83 c3 04             	add    $0x4,%ebx
        printint(fd, *ap, 16, 0);
 984:	e8 87 fe ff ff       	call   810 <printint>
        ap++;
 989:	89 5d d0             	mov    %ebx,-0x30(%ebp)
 98c:	83 c4 10             	add    $0x10,%esp
      state = 0;
 98f:	31 d2                	xor    %edx,%edx
 991:	e9 67 ff ff ff       	jmp    8fd <printf+0x4d>
        s = (char*)*ap;
 996:	8b 45 d0             	mov    -0x30(%ebp),%eax
 999:	8b 18                	mov    (%eax),%ebx
        ap++;
 99b:	83 c0 04             	add    $0x4,%eax
 99e:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
 9a1:	85 db                	test   %ebx,%ebx
 9a3:	0f 84 87 00 00 00    	je     a30 <printf+0x180>
        while(*s != 0){
 9a9:	0f b6 03             	movzbl (%ebx),%eax
      state = 0;
 9ac:	31 d2                	xor    %edx,%edx
        while(*s != 0){
 9ae:	84 c0                	test   %al,%al
 9b0:	0f 84 47 ff ff ff    	je     8fd <printf+0x4d>
 9b6:	8d 55 e7             	lea    -0x19(%ebp),%edx
 9b9:	89 75 d4             	mov    %esi,-0x2c(%ebp)
 9bc:	89 de                	mov    %ebx,%esi
 9be:	89 d3                	mov    %edx,%ebx
  write(fd, &c, 1);
 9c0:	83 ec 04             	sub    $0x4,%esp
 9c3:	88 45 e7             	mov    %al,-0x19(%ebp)
          s++;
 9c6:	83 c6 01             	add    $0x1,%esi
  write(fd, &c, 1);
 9c9:	6a 01                	push   $0x1
 9cb:	53                   	push   %ebx
 9cc:	57                   	push   %edi
 9cd:	e8 b1 fd ff ff       	call   783 <write>
        while(*s != 0){
 9d2:	0f b6 06             	movzbl (%esi),%eax
 9d5:	83 c4 10             	add    $0x10,%esp
 9d8:	84 c0                	test   %al,%al
 9da:	75 e4                	jne    9c0 <printf+0x110>
      state = 0;
 9dc:	8b 75 d4             	mov    -0x2c(%ebp),%esi
 9df:	31 d2                	xor    %edx,%edx
 9e1:	e9 17 ff ff ff       	jmp    8fd <printf+0x4d>
        printint(fd, *ap, 10, 1);
 9e6:	8b 5d d0             	mov    -0x30(%ebp),%ebx
 9e9:	83 ec 0c             	sub    $0xc,%esp
 9ec:	b9 0a 00 00 00       	mov    $0xa,%ecx
 9f1:	8b 13                	mov    (%ebx),%edx
 9f3:	6a 01                	push   $0x1
 9f5:	eb 88                	jmp    97f <printf+0xcf>
        putc(fd, *ap);
 9f7:	8b 5d d0             	mov    -0x30(%ebp),%ebx
  write(fd, &c, 1);
 9fa:	83 ec 04             	sub    $0x4,%esp
 9fd:	8d 55 e7             	lea    -0x19(%ebp),%edx
        putc(fd, *ap);
 a00:	8b 03                	mov    (%ebx),%eax
        ap++;
 a02:	83 c3 04             	add    $0x4,%ebx
        putc(fd, *ap);
 a05:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 a08:	6a 01                	push   $0x1
 a0a:	52                   	push   %edx
 a0b:	57                   	push   %edi
 a0c:	e8 72 fd ff ff       	call   783 <write>
        ap++;
 a11:	89 5d d0             	mov    %ebx,-0x30(%ebp)
 a14:	83 c4 10             	add    $0x10,%esp
      state = 0;
 a17:	31 d2                	xor    %edx,%edx
 a19:	e9 df fe ff ff       	jmp    8fd <printf+0x4d>
 a1e:	66 90                	xchg   %ax,%ax
  write(fd, &c, 1);
 a20:	83 ec 04             	sub    $0x4,%esp
 a23:	88 5d e7             	mov    %bl,-0x19(%ebp)
 a26:	8d 55 e7             	lea    -0x19(%ebp),%edx
 a29:	6a 01                	push   $0x1
 a2b:	e9 31 ff ff ff       	jmp    961 <printf+0xb1>
 a30:	b8 28 00 00 00       	mov    $0x28,%eax
          s = "(null)";
 a35:	bb cb 0c 00 00       	mov    $0xccb,%ebx
 a3a:	e9 77 ff ff ff       	jmp    9b6 <printf+0x106>
 a3f:	90                   	nop

00000a40 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 a40:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 a41:	a1 ec 10 00 00       	mov    0x10ec,%eax
{
 a46:	89 e5                	mov    %esp,%ebp
 a48:	57                   	push   %edi
 a49:	56                   	push   %esi
 a4a:	53                   	push   %ebx
 a4b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 a4e:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 a51:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 a58:	8b 10                	mov    (%eax),%edx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 a5a:	39 c8                	cmp    %ecx,%eax
 a5c:	73 32                	jae    a90 <free+0x50>
 a5e:	39 d1                	cmp    %edx,%ecx
 a60:	72 04                	jb     a66 <free+0x26>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 a62:	39 d0                	cmp    %edx,%eax
 a64:	72 32                	jb     a98 <free+0x58>
      break;
  if(bp + bp->s.size == p->s.ptr){
 a66:	8b 73 fc             	mov    -0x4(%ebx),%esi
 a69:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 a6c:	39 fa                	cmp    %edi,%edx
 a6e:	74 30                	je     aa0 <free+0x60>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
 a70:	89 53 f8             	mov    %edx,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 a73:	8b 50 04             	mov    0x4(%eax),%edx
 a76:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 a79:	39 f1                	cmp    %esi,%ecx
 a7b:	74 3a                	je     ab7 <free+0x77>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
 a7d:	89 08                	mov    %ecx,(%eax)
  } else
    p->s.ptr = bp;
  freep = p;
}
 a7f:	5b                   	pop    %ebx
  freep = p;
 a80:	a3 ec 10 00 00       	mov    %eax,0x10ec
}
 a85:	5e                   	pop    %esi
 a86:	5f                   	pop    %edi
 a87:	5d                   	pop    %ebp
 a88:	c3                   	ret
 a89:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 a90:	39 d0                	cmp    %edx,%eax
 a92:	72 04                	jb     a98 <free+0x58>
 a94:	39 d1                	cmp    %edx,%ecx
 a96:	72 ce                	jb     a66 <free+0x26>
{
 a98:	89 d0                	mov    %edx,%eax
 a9a:	eb bc                	jmp    a58 <free+0x18>
 a9c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    bp->s.size += p->s.ptr->s.size;
 aa0:	03 72 04             	add    0x4(%edx),%esi
 aa3:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 aa6:	8b 10                	mov    (%eax),%edx
 aa8:	8b 12                	mov    (%edx),%edx
 aaa:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
 aad:	8b 50 04             	mov    0x4(%eax),%edx
 ab0:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 ab3:	39 f1                	cmp    %esi,%ecx
 ab5:	75 c6                	jne    a7d <free+0x3d>
    p->s.size += bp->s.size;
 ab7:	03 53 fc             	add    -0x4(%ebx),%edx
  freep = p;
 aba:	a3 ec 10 00 00       	mov    %eax,0x10ec
    p->s.size += bp->s.size;
 abf:	89 50 04             	mov    %edx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
 ac2:	8b 4b f8             	mov    -0x8(%ebx),%ecx
 ac5:	89 08                	mov    %ecx,(%eax)
}
 ac7:	5b                   	pop    %ebx
 ac8:	5e                   	pop    %esi
 ac9:	5f                   	pop    %edi
 aca:	5d                   	pop    %ebp
 acb:	c3                   	ret
 acc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000ad0 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 ad0:	55                   	push   %ebp
 ad1:	89 e5                	mov    %esp,%ebp
 ad3:	57                   	push   %edi
 ad4:	56                   	push   %esi
 ad5:	53                   	push   %ebx
 ad6:	83 ec 0c             	sub    $0xc,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 ad9:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 adc:	8b 15 ec 10 00 00    	mov    0x10ec,%edx
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 ae2:	8d 78 07             	lea    0x7(%eax),%edi
 ae5:	c1 ef 03             	shr    $0x3,%edi
 ae8:	83 c7 01             	add    $0x1,%edi
  if((prevp = freep) == 0){
 aeb:	85 d2                	test   %edx,%edx
 aed:	0f 84 8d 00 00 00    	je     b80 <malloc+0xb0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 af3:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 af5:	8b 48 04             	mov    0x4(%eax),%ecx
 af8:	39 f9                	cmp    %edi,%ecx
 afa:	73 64                	jae    b60 <malloc+0x90>
  if(nu < 4096)
 afc:	bb 00 10 00 00       	mov    $0x1000,%ebx
 b01:	39 df                	cmp    %ebx,%edi
 b03:	0f 43 df             	cmovae %edi,%ebx
  p = sbrk(nu * sizeof(Header));
 b06:	8d 34 dd 00 00 00 00 	lea    0x0(,%ebx,8),%esi
 b0d:	eb 0a                	jmp    b19 <malloc+0x49>
 b0f:	90                   	nop
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 b10:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 b12:	8b 48 04             	mov    0x4(%eax),%ecx
 b15:	39 f9                	cmp    %edi,%ecx
 b17:	73 47                	jae    b60 <malloc+0x90>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 b19:	89 c2                	mov    %eax,%edx
 b1b:	3b 05 ec 10 00 00    	cmp    0x10ec,%eax
 b21:	75 ed                	jne    b10 <malloc+0x40>
  p = sbrk(nu * sizeof(Header));
 b23:	83 ec 0c             	sub    $0xc,%esp
 b26:	56                   	push   %esi
 b27:	e8 bf fc ff ff       	call   7eb <sbrk>
  if(p == (char*)-1)
 b2c:	83 c4 10             	add    $0x10,%esp
 b2f:	83 f8 ff             	cmp    $0xffffffff,%eax
 b32:	74 1c                	je     b50 <malloc+0x80>
  hp->s.size = nu;
 b34:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 b37:	83 ec 0c             	sub    $0xc,%esp
 b3a:	83 c0 08             	add    $0x8,%eax
 b3d:	50                   	push   %eax
 b3e:	e8 fd fe ff ff       	call   a40 <free>
  return freep;
 b43:	8b 15 ec 10 00 00    	mov    0x10ec,%edx
      if((p = morecore(nunits)) == 0)
 b49:	83 c4 10             	add    $0x10,%esp
 b4c:	85 d2                	test   %edx,%edx
 b4e:	75 c0                	jne    b10 <malloc+0x40>
        return 0;
  }
}
 b50:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 b53:	31 c0                	xor    %eax,%eax
}
 b55:	5b                   	pop    %ebx
 b56:	5e                   	pop    %esi
 b57:	5f                   	pop    %edi
 b58:	5d                   	pop    %ebp
 b59:	c3                   	ret
 b5a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 b60:	39 cf                	cmp    %ecx,%edi
 b62:	74 4c                	je     bb0 <malloc+0xe0>
        p->s.size -= nunits;
 b64:	29 f9                	sub    %edi,%ecx
 b66:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 b69:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 b6c:	89 78 04             	mov    %edi,0x4(%eax)
      freep = prevp;
 b6f:	89 15 ec 10 00 00    	mov    %edx,0x10ec
}
 b75:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 b78:	83 c0 08             	add    $0x8,%eax
}
 b7b:	5b                   	pop    %ebx
 b7c:	5e                   	pop    %esi
 b7d:	5f                   	pop    %edi
 b7e:	5d                   	pop    %ebp
 b7f:	c3                   	ret
    base.s.ptr = freep = prevp = &base;
 b80:	c7 05 ec 10 00 00 f0 	movl   $0x10f0,0x10ec
 b87:	10 00 00 
    base.s.size = 0;
 b8a:	b8 f0 10 00 00       	mov    $0x10f0,%eax
    base.s.ptr = freep = prevp = &base;
 b8f:	c7 05 f0 10 00 00 f0 	movl   $0x10f0,0x10f0
 b96:	10 00 00 
    base.s.size = 0;
 b99:	c7 05 f4 10 00 00 00 	movl   $0x0,0x10f4
 ba0:	00 00 00 
    if(p->s.size >= nunits){
 ba3:	e9 54 ff ff ff       	jmp    afc <malloc+0x2c>
 ba8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 baf:	00 
        prevp->s.ptr = p->s.ptr;
 bb0:	8b 08                	mov    (%eax),%ecx
 bb2:	89 0a                	mov    %ecx,(%edx)
 bb4:	eb b9                	jmp    b6f <malloc+0x9f>
