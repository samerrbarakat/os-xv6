
_chngpass:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:

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
    char old_pswrd[50] ; 
    char current[50] ; 
    char new_pswrd[50] ; 
    char confirm_pswrd[50] ;
    
    if (read_credentials(usrnm,old_pswrd)<0){
   f:	8d 85 ee fe ff ff    	lea    -0x112(%ebp),%eax
int main(void){
  15:	53                   	push   %ebx
    if (read_credentials(usrnm,old_pswrd)<0){
  16:	8d 9d 20 ff ff ff    	lea    -0xe0(%ebp),%ebx
int main(void){
  1c:	51                   	push   %ecx
  1d:	81 ec 20 01 00 00    	sub    $0x120,%esp
    if (read_credentials(usrnm,old_pswrd)<0){
  23:	53                   	push   %ebx
  24:	50                   	push   %eax
  25:	e8 c6 01 00 00       	call   1f0 <read_credentials>
  2a:	83 c4 10             	add    $0x10,%esp
  2d:	85 c0                	test   %eax,%eax
  2f:	0f 88 0a 01 00 00    	js     13f <main+0x13f>
        printf(1,"error reading creds\n"); 
        exit(); 
    }

    printf(1,"Enter current password: ");
  35:	50                   	push   %eax
    gets(current,sizeof(current)); 
  36:	8d b5 52 ff ff ff    	lea    -0xae(%ebp),%esi
    printf(1,"Enter current password: ");
  3c:	50                   	push   %eax
  3d:	68 38 0c 00 00       	push   $0xc38
  42:	6a 01                	push   $0x1
  44:	e8 57 08 00 00       	call   8a0 <printf>
    gets(current,sizeof(current)); 
  49:	58                   	pop    %eax
  4a:	5a                   	pop    %edx
  4b:	6a 32                	push   $0x32
  4d:	56                   	push   %esi
  4e:	e8 dd 05 00 00       	call   630 <gets>
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
  6b:	0f b6 04 16          	movzbl (%esi,%edx,1),%eax
  6f:	84 c0                	test   %al,%al
  71:	74 0c                	je     7f <main+0x7f>
        if (current[i]=='\n') {
  73:	3c 0a                	cmp    $0xa,%al
  75:	75 f1                	jne    68 <main+0x68>
            current[i]='\0' ; 
  77:	c6 84 15 52 ff ff ff 	movb   $0x0,-0xae(%ebp,%edx,1)
  7e:	00 
    }
    if (strcmp(old_pswrd,current)!=0){
  7f:	57                   	push   %edi
  80:	57                   	push   %edi
  81:	56                   	push   %esi
  82:	53                   	push   %ebx
  83:	e8 b8 04 00 00       	call   540 <strcmp>
  88:	83 c4 10             	add    $0x10,%esp
  8b:	89 c6                	mov    %eax,%esi
  8d:	85 c0                	test   %eax,%eax
  8f:	0f 85 97 00 00 00    	jne    12c <main+0x12c>
        printf(1,"wrong password\n") ; 
        exit();
    }

    printf(1,"Enter new password: ") ; 
  95:	50                   	push   %eax
    gets(new_pswrd,sizeof(new_pswrd)); 
  96:	8d 5d 84             	lea    -0x7c(%ebp),%ebx
    printf(1,"Enter new password: ") ; 
  99:	50                   	push   %eax
  9a:	68 61 0c 00 00       	push   $0xc61
  9f:	6a 01                	push   $0x1
  a1:	e8 fa 07 00 00       	call   8a0 <printf>
    gets(new_pswrd,sizeof(new_pswrd)); 
  a6:	58                   	pop    %eax
  a7:	5a                   	pop    %edx
  a8:	6a 32                	push   $0x32
  aa:	53                   	push   %ebx
  ab:	e8 80 05 00 00       	call   630 <gets>
    i = 0 ; 
    while(new_pswrd[i]!='\0'){
  b0:	0f b6 45 84          	movzbl -0x7c(%ebp),%eax
  b4:	83 c4 10             	add    $0x10,%esp
    i = 0 ; 
  b7:	31 d2                	xor    %edx,%edx
    while(new_pswrd[i]!='\0'){
  b9:	84 c0                	test   %al,%al
  bb:	75 0e                	jne    cb <main+0xcb>
  bd:	eb 5a                	jmp    119 <main+0x119>
  bf:	90                   	nop
        if (new_pswrd[i]=='\n') {
            new_pswrd[i]='\0' ; 
            break ; 
        }
        i++ ; 
  c0:	83 c2 01             	add    $0x1,%edx
    while(new_pswrd[i]!='\0'){
  c3:	0f b6 04 13          	movzbl (%ebx,%edx,1),%eax
  c7:	84 c0                	test   %al,%al
  c9:	74 09                	je     d4 <main+0xd4>
        if (new_pswrd[i]=='\n') {
  cb:	3c 0a                	cmp    $0xa,%al
  cd:	75 f1                	jne    c0 <main+0xc0>
            new_pswrd[i]='\0' ; 
  cf:	c6 44 15 84 00       	movb   $0x0,-0x7c(%ebp,%edx,1)
    if (s[i]=='\0') return 0 ; 
  d4:	0f b6 45 84          	movzbl -0x7c(%ebp),%eax
  d8:	a8 df                	test   $0xdf,%al
  da:	74 3d                	je     119 <main+0x119>
        if (s[i]==' ' || s[i]=='\t' || s[i]=='\n') return 0 ; 
  dc:	83 e8 09             	sub    $0x9,%eax
        if (i>=49) return 0 ; 
  df:	3c 01                	cmp    $0x1,%al
  e1:	76 36                	jbe    119 <main+0x119>
    int i = 0 ; 
  e3:	31 d2                	xor    %edx,%edx
  e5:	eb 10                	jmp    f7 <main+0xf7>
  e7:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  ee:	00 
  ef:	90                   	nop
        if (s[i]==' ' || s[i]=='\t' || s[i]=='\n') return 0 ; 
  f0:	83 e8 09             	sub    $0x9,%eax
        if (i>=49) return 0 ; 
  f3:	3c 01                	cmp    $0x1,%al
  f5:	76 22                	jbe    119 <main+0x119>
        i++  ; 
  f7:	83 c2 01             	add    $0x1,%edx
    while (s[i]!='\0'){
  fa:	0f b6 04 13          	movzbl (%ebx,%edx,1),%eax
  fe:	84 c0                	test   %al,%al
 100:	74 50                	je     152 <main+0x152>
        if (s[i]==' ' || s[i]=='\t' || s[i]=='\n') return 0 ; 
 102:	3c 20                	cmp    $0x20,%al
 104:	0f 94 85 e7 fe ff ff 	sete   -0x119(%ebp)
        if (i>=49) return 0 ; 
 10b:	83 fa 31             	cmp    $0x31,%edx
 10e:	0f 94 c1             	sete   %cl
 111:	0a 8d e7 fe ff ff    	or     -0x119(%ebp),%cl
 117:	74 d7                	je     f0 <main+0xf0>
    }
    int checkvalid_pass = validate_field(new_pswrd); 
    if (!checkvalid_pass){
        printf(1,"invalid password, your password, must contain no spaces and less than 49 characters\n."); 
 119:	50                   	push   %eax
 11a:	50                   	push   %eax
 11b:	68 c4 0c 00 00       	push   $0xcc4
 120:	6a 01                	push   $0x1
 122:	e8 79 07 00 00       	call   8a0 <printf>
        exit(); 
 127:	e8 27 06 00 00       	call   753 <exit>
        printf(1,"wrong password\n") ; 
 12c:	51                   	push   %ecx
 12d:	51                   	push   %ecx
 12e:	68 51 0c 00 00       	push   $0xc51
 133:	6a 01                	push   $0x1
 135:	e8 66 07 00 00       	call   8a0 <printf>
        exit();
 13a:	e8 14 06 00 00       	call   753 <exit>
        printf(1,"error reading creds\n"); 
 13f:	51                   	push   %ecx
 140:	51                   	push   %ecx
 141:	68 23 0c 00 00       	push   $0xc23
 146:	6a 01                	push   $0x1
 148:	e8 53 07 00 00       	call   8a0 <printf>
        exit(); 
 14d:	e8 01 06 00 00       	call   753 <exit>
    }
    printf(1,"Confirm new password: ") ; 
 152:	50                   	push   %eax
    gets(confirm_pswrd,sizeof(confirm_pswrd)); 
 153:	8d 7d b6             	lea    -0x4a(%ebp),%edi
    printf(1,"Confirm new password: ") ; 
 156:	50                   	push   %eax
 157:	68 a4 0c 00 00       	push   $0xca4
 15c:	6a 01                	push   $0x1
 15e:	e8 3d 07 00 00       	call   8a0 <printf>
    gets(confirm_pswrd,sizeof(confirm_pswrd)); 
 163:	5a                   	pop    %edx
 164:	59                   	pop    %ecx
 165:	6a 32                	push   $0x32
 167:	57                   	push   %edi
 168:	e8 c3 04 00 00       	call   630 <gets>
    i=0 ; 
    while(confirm_pswrd[i]!='\0'){
 16d:	83 c4 10             	add    $0x10,%esp
 170:	eb 07                	jmp    179 <main+0x179>
        if (confirm_pswrd[i]=='\n') {
 172:	3c 0a                	cmp    $0xa,%al
 174:	74 57                	je     1cd <main+0x1cd>
            confirm_pswrd[i]='\0' ; 
            break ; 
        }
        i++ ; 
 176:	83 c6 01             	add    $0x1,%esi
    while(confirm_pswrd[i]!='\0'){
 179:	0f b6 04 37          	movzbl (%edi,%esi,1),%eax
 17d:	84 c0                	test   %al,%al
 17f:	75 f1                	jne    172 <main+0x172>
    }

    if (strcmp(new_pswrd,confirm_pswrd)!=0){
 181:	50                   	push   %eax
 182:	50                   	push   %eax
 183:	57                   	push   %edi
 184:	53                   	push   %ebx
 185:	e8 b6 03 00 00       	call   540 <strcmp>
 18a:	83 c4 10             	add    $0x10,%esp
 18d:	85 c0                	test   %eax,%eax
 18f:	75 29                	jne    1ba <main+0x1ba>
        printf(1,"passwords dont match\n"); 
        exit();
    }

    int check_write = write_credentials(usrnm,new_pswrd); 
 191:	8d 85 ee fe ff ff    	lea    -0x112(%ebp),%eax
 197:	57                   	push   %edi
 198:	57                   	push   %edi
 199:	53                   	push   %ebx
 19a:	50                   	push   %eax
 19b:	e8 20 02 00 00       	call   3c0 <write_credentials>
    if (check_write<0){
 1a0:	83 c4 10             	add    $0x10,%esp
 1a3:	85 c0                	test   %eax,%eax
 1a5:	78 2d                	js     1d4 <main+0x1d4>
        printf(1,"failed to change creds\n") ; 
        exit() ; 
    }

    printf(1,"password change was successful\n") ; 
 1a7:	53                   	push   %ebx
 1a8:	53                   	push   %ebx
 1a9:	68 1c 0d 00 00       	push   $0xd1c
 1ae:	6a 01                	push   $0x1
 1b0:	e8 eb 06 00 00       	call   8a0 <printf>
    exit(); 
 1b5:	e8 99 05 00 00       	call   753 <exit>
        printf(1,"passwords dont match\n"); 
 1ba:	50                   	push   %eax
 1bb:	50                   	push   %eax
 1bc:	68 76 0c 00 00       	push   $0xc76
 1c1:	6a 01                	push   $0x1
 1c3:	e8 d8 06 00 00       	call   8a0 <printf>
        exit();
 1c8:	e8 86 05 00 00       	call   753 <exit>
            confirm_pswrd[i]='\0' ; 
 1cd:	c6 44 35 b6 00       	movb   $0x0,-0x4a(%ebp,%esi,1)
            break ; 
 1d2:	eb ad                	jmp    181 <main+0x181>
        printf(1,"failed to change creds\n") ; 
 1d4:	56                   	push   %esi
 1d5:	56                   	push   %esi
 1d6:	68 8c 0c 00 00       	push   $0xc8c
 1db:	6a 01                	push   $0x1
 1dd:	e8 be 06 00 00       	call   8a0 <printf>
        exit() ; 
 1e2:	e8 6c 05 00 00       	call   753 <exit>
 1e7:	66 90                	xchg   %ax,%ax
 1e9:	66 90                	xchg   %ax,%ax
 1eb:	66 90                	xchg   %ax,%ax
 1ed:	66 90                	xchg   %ax,%ax
 1ef:	90                   	nop

000001f0 <read_credentials>:
int read_credentials(char* usernm, char * passwd){
 1f0:	55                   	push   %ebp
 1f1:	89 e5                	mov    %esp,%ebp
 1f3:	57                   	push   %edi
 1f4:	56                   	push   %esi
 1f5:	53                   	push   %ebx
 1f6:	81 ec 94 00 00 00    	sub    $0x94,%esp
 1fc:	8b 75 0c             	mov    0xc(%ebp),%esi
    int file = open("users.txt",0); 
 1ff:	6a 00                	push   $0x0
 201:	68 a8 0b 00 00       	push   $0xba8
 206:	e8 88 05 00 00       	call   793 <open>
    if (file <0){
 20b:	83 c4 10             	add    $0x10,%esp
 20e:	85 c0                	test   %eax,%eax
 210:	0f 88 2a 01 00 00    	js     340 <read_credentials+0x150>
    int n = read(file, buf, sizeof(buf)-1); 
 216:	83 ec 04             	sub    $0x4,%esp
 219:	8d 5d 84             	lea    -0x7c(%ebp),%ebx
 21c:	89 c7                	mov    %eax,%edi
 21e:	6a 63                	push   $0x63
 220:	53                   	push   %ebx
 221:	50                   	push   %eax
 222:	e8 44 05 00 00       	call   76b <read>
    if (n <0){
 227:	83 c4 10             	add    $0x10,%esp
 22a:	85 c0                	test   %eax,%eax
 22c:	0f 88 0e 01 00 00    	js     340 <read_credentials+0x150>
    close(file) ; 
 232:	83 ec 0c             	sub    $0xc,%esp
    buf[n]='\0';
 235:	c6 44 05 84 00       	movb   $0x0,-0x7c(%ebp,%eax,1)
    close(file) ; 
 23a:	57                   	push   %edi
 23b:	e8 3b 05 00 00       	call   77b <close>
    while (buf[i]==' '|| buf[i]=='\t' || buf[i]=='\n') {
 240:	0f b6 45 84          	movzbl -0x7c(%ebp),%eax
 244:	83 c4 10             	add    $0x10,%esp
 247:	8d 50 f7             	lea    -0x9(%eax),%edx
 24a:	80 fa 01             	cmp    $0x1,%dl
    int i = 0 ; 
 24d:	ba 00 00 00 00       	mov    $0x0,%edx
    while (buf[i]==' '|| buf[i]=='\t' || buf[i]=='\n') {
 252:	77 13                	ja     267 <read_credentials+0x77>
 254:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        i++ ; 
 258:	83 c2 01             	add    $0x1,%edx
    while (buf[i]==' '|| buf[i]=='\t' || buf[i]=='\n') {
 25b:	0f b6 04 13          	movzbl (%ebx,%edx,1),%eax
 25f:	8d 48 f7             	lea    -0x9(%eax),%ecx
 262:	80 f9 01             	cmp    $0x1,%cl
 265:	76 f1                	jbe    258 <read_credentials+0x68>
 267:	3c 20                	cmp    $0x20,%al
 269:	74 ed                	je     258 <read_credentials+0x68>
    while (buf[i]!=' '&& buf[i]!='\t'&& buf[i]!='\n'&& buf[i]!='\0' && j<49){
 26b:	a8 df                	test   $0xdf,%al
 26d:	0f 84 c5 00 00 00    	je     338 <read_credentials+0x148>
     int j = 0 ; 
 273:	89 95 74 ff ff ff    	mov    %edx,-0x8c(%ebp)
 279:	8b 7d 08             	mov    0x8(%ebp),%edi
 27c:	31 c9                	xor    %ecx,%ecx
 27e:	89 75 0c             	mov    %esi,0xc(%ebp)
 281:	eb 12                	jmp    295 <read_credentials+0xa5>
 283:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
    while (buf[i]!=' '&& buf[i]!='\t'&& buf[i]!='\n'&& buf[i]!='\0' && j<49){
 288:	a8 df                	test   $0xdf,%al
 28a:	74 2a                	je     2b6 <read_credentials+0xc6>
 28c:	83 f9 31             	cmp    $0x31,%ecx
 28f:	0f 84 8d 00 00 00    	je     322 <read_credentials+0x132>
        usernm[j] = buf[i] ; 
 295:	88 04 0f             	mov    %al,(%edi,%ecx,1)
        i++ ; j++ ; 
 298:	83 c1 01             	add    $0x1,%ecx
 29b:	83 85 74 ff ff ff 01 	addl   $0x1,-0x8c(%ebp)
 2a2:	8b 85 74 ff ff ff    	mov    -0x8c(%ebp),%eax
    while (buf[i]!=' '&& buf[i]!='\t'&& buf[i]!='\n'&& buf[i]!='\0' && j<49){
 2a8:	0f b6 04 03          	movzbl (%ebx,%eax,1),%eax
 2ac:	8d 70 f7             	lea    -0x9(%eax),%esi
 2af:	89 f2                	mov    %esi,%edx
 2b1:	80 fa 01             	cmp    $0x1,%dl
 2b4:	77 d2                	ja     288 <read_credentials+0x98>
    usernm[j]='\0' ; 
 2b6:	8b 95 74 ff ff ff    	mov    -0x8c(%ebp),%edx
 2bc:	8b 75 0c             	mov    0xc(%ebp),%esi
 2bf:	03 4d 08             	add    0x8(%ebp),%ecx
 2c2:	c6 01 00             	movb   $0x0,(%ecx)
    while (buf[i]==' '|| buf[i]=='\t') {
 2c5:	3c 20                	cmp    $0x20,%al
 2c7:	75 12                	jne    2db <read_credentials+0xeb>
 2c9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        i++ ; 
 2d0:	83 c2 01             	add    $0x1,%edx
    while (buf[i]==' '|| buf[i]=='\t') {
 2d3:	0f b6 04 13          	movzbl (%ebx,%edx,1),%eax
 2d7:	3c 20                	cmp    $0x20,%al
 2d9:	74 f5                	je     2d0 <read_credentials+0xe0>
 2db:	3c 09                	cmp    $0x9,%al
 2dd:	74 f1                	je     2d0 <read_credentials+0xe0>
    while (buf[i]!=' '&& buf[i]!='\t'&& buf[i]!='\n'&& buf[i]!='\0' && k<49){
 2df:	8d 48 f7             	lea    -0x9(%eax),%ecx
 2e2:	80 f9 01             	cmp    $0x1,%cl
 2e5:	76 2e                	jbe    315 <read_credentials+0x125>
 2e7:	a8 df                	test   $0xdf,%al
 2e9:	74 2a                	je     315 <read_credentials+0x125>
   int k = 0 ; 
 2eb:	31 c9                	xor    %ecx,%ecx
    while (buf[i]!=' '&& buf[i]!='\t'&& buf[i]!='\n'&& buf[i]!='\0' && k<49){
 2ed:	01 d3                	add    %edx,%ebx
 2ef:	eb 14                	jmp    305 <read_credentials+0x115>
 2f1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 2f8:	8d 50 f7             	lea    -0x9(%eax),%edx
 2fb:	80 fa 01             	cmp    $0x1,%dl
 2fe:	76 13                	jbe    313 <read_credentials+0x123>
 300:	83 f9 31             	cmp    $0x31,%ecx
 303:	74 2e                	je     333 <read_credentials+0x143>
        passwd[k]= buf[i] ; 
 305:	88 04 0e             	mov    %al,(%esi,%ecx,1)
        i++ ; k++ ; 
 308:	83 c1 01             	add    $0x1,%ecx
    while (buf[i]!=' '&& buf[i]!='\t'&& buf[i]!='\n'&& buf[i]!='\0' && k<49){
 30b:	0f b6 04 0b          	movzbl (%ebx,%ecx,1),%eax
 30f:	a8 df                	test   $0xdf,%al
 311:	75 e5                	jne    2f8 <read_credentials+0x108>
    passwd[k] = '\0' ; 
 313:	01 ce                	add    %ecx,%esi
 315:	c6 06 00             	movb   $0x0,(%esi)
    return 0; 
 318:	31 c0                	xor    %eax,%eax
}
 31a:	8d 65 f4             	lea    -0xc(%ebp),%esp
 31d:	5b                   	pop    %ebx
 31e:	5e                   	pop    %esi
 31f:	5f                   	pop    %edi
 320:	5d                   	pop    %ebp
 321:	c3                   	ret
    usernm[j]='\0' ; 
 322:	8b 7d 08             	mov    0x8(%ebp),%edi
 325:	8b 95 74 ff ff ff    	mov    -0x8c(%ebp),%edx
 32b:	8b 75 0c             	mov    0xc(%ebp),%esi
 32e:	8d 4f 31             	lea    0x31(%edi),%ecx
 331:	eb 8f                	jmp    2c2 <read_credentials+0xd2>
    passwd[k] = '\0' ; 
 333:	83 c6 31             	add    $0x31,%esi
 336:	eb dd                	jmp    315 <read_credentials+0x125>
    usernm[j]='\0' ; 
 338:	8b 45 08             	mov    0x8(%ebp),%eax
 33b:	c6 00 00             	movb   $0x0,(%eax)
    while (buf[i]!=' '&& buf[i]!='\t'&& buf[i]!='\n'&& buf[i]!='\0' && k<49){
 33e:	eb d5                	jmp    315 <read_credentials+0x125>
        printf(1,"error reading credentials..\n"); 
 340:	83 ec 08             	sub    $0x8,%esp
 343:	68 b2 0b 00 00       	push   $0xbb2
 348:	6a 01                	push   $0x1
 34a:	e8 51 05 00 00       	call   8a0 <printf>
        return -1; 
 34f:	83 c4 10             	add    $0x10,%esp
 352:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 357:	eb c1                	jmp    31a <read_credentials+0x12a>
 359:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000360 <validate_field>:
int validate_field(char* s){
 360:	55                   	push   %ebp
    if (s[i]=='\0') return 0 ; 
 361:	31 d2                	xor    %edx,%edx
int validate_field(char* s){
 363:	89 e5                	mov    %esp,%ebp
 365:	57                   	push   %edi
 366:	8b 7d 08             	mov    0x8(%ebp),%edi
 369:	56                   	push   %esi
 36a:	53                   	push   %ebx
    if (s[i]=='\0') return 0 ; 
 36b:	0f b6 07             	movzbl (%edi),%eax
 36e:	a8 df                	test   $0xdf,%al
 370:	74 31                	je     3a3 <validate_field+0x43>
        if (s[i]==' ' || s[i]=='\t' || s[i]=='\n') return 0 ; 
 372:	83 e8 09             	sub    $0x9,%eax
        if (i>=49) return 0 ; 
 375:	3c 01                	cmp    $0x1,%al
 377:	77 0e                	ja     387 <validate_field+0x27>
 379:	eb 28                	jmp    3a3 <validate_field+0x43>
 37b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
        if (s[i]==' ' || s[i]=='\t' || s[i]=='\n') return 0 ; 
 380:	83 e8 09             	sub    $0x9,%eax
        if (i>=49) return 0 ; 
 383:	3c 01                	cmp    $0x1,%al
 385:	76 1a                	jbe    3a1 <validate_field+0x41>
        i++  ; 
 387:	83 c2 01             	add    $0x1,%edx
    while (s[i]!='\0'){
 38a:	0f b6 04 17          	movzbl (%edi,%edx,1),%eax
 38e:	84 c0                	test   %al,%al
 390:	74 1e                	je     3b0 <validate_field+0x50>
        if (i>=49) return 0 ; 
 392:	83 fa 31             	cmp    $0x31,%edx
 395:	0f 94 c1             	sete   %cl
        if (s[i]==' ' || s[i]=='\t' || s[i]=='\n') return 0 ; 
 398:	3c 20                	cmp    $0x20,%al
 39a:	0f 94 c3             	sete   %bl
        if (i>=49) return 0 ; 
 39d:	08 d9                	or     %bl,%cl
 39f:	74 df                	je     380 <validate_field+0x20>
    if (s[i]=='\0') return 0 ; 
 3a1:	31 d2                	xor    %edx,%edx
}
 3a3:	5b                   	pop    %ebx
 3a4:	89 d0                	mov    %edx,%eax
 3a6:	5e                   	pop    %esi
 3a7:	5f                   	pop    %edi
 3a8:	5d                   	pop    %ebp
 3a9:	c3                   	ret
 3aa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    return 1 ; 
 3b0:	ba 01 00 00 00       	mov    $0x1,%edx
}
 3b5:	5b                   	pop    %ebx
 3b6:	5e                   	pop    %esi
 3b7:	89 d0                	mov    %edx,%eax
 3b9:	5f                   	pop    %edi
 3ba:	5d                   	pop    %ebp
 3bb:	c3                   	ret
 3bc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000003c0 <write_credentials>:
int write_credentials(char* old_usernm, char* new_passwd){
 3c0:	55                   	push   %ebp
 3c1:	89 e5                	mov    %esp,%ebp
 3c3:	57                   	push   %edi
 3c4:	56                   	push   %esi
 3c5:	53                   	push   %ebx
 3c6:	81 ec 88 00 00 00    	sub    $0x88,%esp
 3cc:	8b 7d 08             	mov    0x8(%ebp),%edi
    if (unlink("users.txt")<0){
 3cf:	68 a8 0b 00 00       	push   $0xba8
 3d4:	e8 ca 03 00 00       	call   7a3 <unlink>
 3d9:	83 c4 10             	add    $0x10,%esp
 3dc:	85 c0                	test   %eax,%eax
 3de:	0f 88 f8 00 00 00    	js     4dc <write_credentials+0x11c>
    file = open("users.txt",O_CREATE | O_WRONLY) ; 
 3e4:	83 ec 08             	sub    $0x8,%esp
 3e7:	68 01 02 00 00       	push   $0x201
 3ec:	68 a8 0b 00 00       	push   $0xba8
 3f1:	e8 9d 03 00 00       	call   793 <open>
    if (file<0){
 3f6:	83 c4 10             	add    $0x10,%esp
    file = open("users.txt",O_CREATE | O_WRONLY) ; 
 3f9:	89 c6                	mov    %eax,%esi
    if (file<0){
 3fb:	85 c0                	test   %eax,%eax
 3fd:	0f 88 ed 00 00 00    	js     4f0 <write_credentials+0x130>
    while (old_usernm[j]!='\0' && i<49){
 403:	0f b6 17             	movzbl (%edi),%edx
    int  i=0 ; int j=0; int k = 0 ; 
 406:	31 c0                	xor    %eax,%eax
 408:	8d 5d 84             	lea    -0x7c(%ebp),%ebx
    while (old_usernm[j]!='\0' && i<49){
 40b:	84 d2                	test   %dl,%dl
 40d:	75 12                	jne    421 <write_credentials+0x61>
 40f:	e9 98 00 00 00       	jmp    4ac <write_credentials+0xec>
 414:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 418:	83 f8 31             	cmp    $0x31,%eax
 41b:	0f 84 7f 00 00 00    	je     4a0 <write_credentials+0xe0>
        buf[i] = old_usernm[j] ; i++ ; j++ ; 
 421:	88 14 03             	mov    %dl,(%ebx,%eax,1)
 424:	89 c1                	mov    %eax,%ecx
 426:	83 c0 01             	add    $0x1,%eax
    while (old_usernm[j]!='\0' && i<49){
 429:	0f b6 14 07          	movzbl (%edi,%eax,1),%edx
 42d:	84 d2                	test   %dl,%dl
 42f:	75 e7                	jne    418 <write_credentials+0x58>
    i++ ; 
 431:	8d 51 02             	lea    0x2(%ecx),%edx
    buf[i]='\n' ; i++ ; 
 434:	8d 79 03             	lea    0x3(%ecx),%edi
    buf[i] = ' ' ; 
 437:	c6 44 05 84 20       	movb   $0x20,-0x7c(%ebp,%eax,1)
    while(new_passwd[k]!='\0' && i <99) {
 43c:	8b 45 0c             	mov    0xc(%ebp),%eax
 43f:	0f b6 00             	movzbl (%eax),%eax
 442:	84 c0                	test   %al,%al
 444:	74 22                	je     468 <write_credentials+0xa8>
 446:	8b 7d 0c             	mov    0xc(%ebp),%edi
 449:	29 d7                	sub    %edx,%edi
 44b:	eb 08                	jmp    455 <write_credentials+0x95>
 44d:	8d 76 00             	lea    0x0(%esi),%esi
 450:	83 fa 63             	cmp    $0x63,%edx
 453:	74 43                	je     498 <write_credentials+0xd8>
        buf[i] = new_passwd[k] ; 
 455:	88 04 13             	mov    %al,(%ebx,%edx,1)
        i++ ; 
 458:	89 d1                	mov    %edx,%ecx
 45a:	83 c2 01             	add    $0x1,%edx
    while(new_passwd[k]!='\0' && i <99) {
 45d:	0f b6 04 17          	movzbl (%edi,%edx,1),%eax
 461:	84 c0                	test   %al,%al
 463:	75 eb                	jne    450 <write_credentials+0x90>
    buf[i]='\n' ; i++ ; 
 465:	8d 79 02             	lea    0x2(%ecx),%edi
    int check_write = write(file,buf,i) ; 
 468:	83 ec 04             	sub    $0x4,%esp
    buf[i]='\n' ; i++ ; 
 46b:	c6 44 15 84 0a       	movb   $0xa,-0x7c(%ebp,%edx,1)
    int check_write = write(file,buf,i) ; 
 470:	57                   	push   %edi
 471:	53                   	push   %ebx
 472:	56                   	push   %esi
 473:	e8 fb 02 00 00       	call   773 <write>
    if (check_write!=i){
 478:	83 c4 10             	add    $0x10,%esp
 47b:	39 f8                	cmp    %edi,%eax
 47d:	75 3c                	jne    4bb <write_credentials+0xfb>
    close(file) ; return 0 ; 
 47f:	83 ec 0c             	sub    $0xc,%esp
 482:	56                   	push   %esi
 483:	e8 f3 02 00 00       	call   77b <close>
 488:	83 c4 10             	add    $0x10,%esp
 48b:	31 c0                	xor    %eax,%eax
}
 48d:	8d 65 f4             	lea    -0xc(%ebp),%esp
 490:	5b                   	pop    %ebx
 491:	5e                   	pop    %esi
 492:	5f                   	pop    %edi
 493:	5d                   	pop    %ebp
 494:	c3                   	ret
 495:	8d 76 00             	lea    0x0(%esi),%esi
 498:	bf 64 00 00 00       	mov    $0x64,%edi
 49d:	eb c9                	jmp    468 <write_credentials+0xa8>
 49f:	90                   	nop
 4a0:	bf 33 00 00 00       	mov    $0x33,%edi
 4a5:	ba 32 00 00 00       	mov    $0x32,%edx
 4aa:	eb 8b                	jmp    437 <write_credentials+0x77>
    while (old_usernm[j]!='\0' && i<49){
 4ac:	bf 02 00 00 00       	mov    $0x2,%edi
 4b1:	ba 01 00 00 00       	mov    $0x1,%edx
 4b6:	e9 7c ff ff ff       	jmp    437 <write_credentials+0x77>
        printf(1,"Error writing to cred file.\n."); 
 4bb:	83 ec 08             	sub    $0x8,%esp
 4be:	68 05 0c 00 00       	push   $0xc05
 4c3:	6a 01                	push   $0x1
 4c5:	e8 d6 03 00 00       	call   8a0 <printf>
        close(file); return -1 ; 
 4ca:	89 34 24             	mov    %esi,(%esp)
 4cd:	e8 a9 02 00 00       	call   77b <close>
 4d2:	83 c4 10             	add    $0x10,%esp
        return -1; 
 4d5:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 4da:	eb b1                	jmp    48d <write_credentials+0xcd>
        printf(1,"error deleting credentials\n") ; 
 4dc:	83 ec 08             	sub    $0x8,%esp
 4df:	68 cf 0b 00 00       	push   $0xbcf
 4e4:	6a 01                	push   $0x1
 4e6:	e8 b5 03 00 00       	call   8a0 <printf>
        return -1; 
 4eb:	83 c4 10             	add    $0x10,%esp
 4ee:	eb e5                	jmp    4d5 <write_credentials+0x115>
        printf(1,"error creating cred file\n") ; 
 4f0:	83 ec 08             	sub    $0x8,%esp
 4f3:	68 eb 0b 00 00       	push   $0xbeb
 4f8:	6a 01                	push   $0x1
 4fa:	e8 a1 03 00 00       	call   8a0 <printf>
        return -1;
 4ff:	83 c4 10             	add    $0x10,%esp
 502:	eb d1                	jmp    4d5 <write_credentials+0x115>
 504:	66 90                	xchg   %ax,%ax
 506:	66 90                	xchg   %ax,%ax
 508:	66 90                	xchg   %ax,%ax
 50a:	66 90                	xchg   %ax,%ax
 50c:	66 90                	xchg   %ax,%ax
 50e:	66 90                	xchg   %ax,%ax

00000510 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, const char *t)
{
 510:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 511:	31 c0                	xor    %eax,%eax
{
 513:	89 e5                	mov    %esp,%ebp
 515:	53                   	push   %ebx
 516:	8b 4d 08             	mov    0x8(%ebp),%ecx
 519:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 51c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while((*s++ = *t++) != 0)
 520:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
 524:	88 14 01             	mov    %dl,(%ecx,%eax,1)
 527:	83 c0 01             	add    $0x1,%eax
 52a:	84 d2                	test   %dl,%dl
 52c:	75 f2                	jne    520 <strcpy+0x10>
    ;
  return os;
}
 52e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 531:	89 c8                	mov    %ecx,%eax
 533:	c9                   	leave
 534:	c3                   	ret
 535:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 53c:	00 
 53d:	8d 76 00             	lea    0x0(%esi),%esi

00000540 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 540:	55                   	push   %ebp
 541:	89 e5                	mov    %esp,%ebp
 543:	53                   	push   %ebx
 544:	8b 55 08             	mov    0x8(%ebp),%edx
 547:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 54a:	0f b6 02             	movzbl (%edx),%eax
 54d:	84 c0                	test   %al,%al
 54f:	75 17                	jne    568 <strcmp+0x28>
 551:	eb 3a                	jmp    58d <strcmp+0x4d>
 553:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
 558:	0f b6 42 01          	movzbl 0x1(%edx),%eax
    p++, q++;
 55c:	83 c2 01             	add    $0x1,%edx
 55f:	8d 59 01             	lea    0x1(%ecx),%ebx
  while(*p && *p == *q)
 562:	84 c0                	test   %al,%al
 564:	74 1a                	je     580 <strcmp+0x40>
 566:	89 d9                	mov    %ebx,%ecx
 568:	0f b6 19             	movzbl (%ecx),%ebx
 56b:	38 c3                	cmp    %al,%bl
 56d:	74 e9                	je     558 <strcmp+0x18>
  return (uchar)*p - (uchar)*q;
 56f:	29 d8                	sub    %ebx,%eax
}
 571:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 574:	c9                   	leave
 575:	c3                   	ret
 576:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 57d:	00 
 57e:	66 90                	xchg   %ax,%ax
  return (uchar)*p - (uchar)*q;
 580:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
 584:	31 c0                	xor    %eax,%eax
 586:	29 d8                	sub    %ebx,%eax
}
 588:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 58b:	c9                   	leave
 58c:	c3                   	ret
  return (uchar)*p - (uchar)*q;
 58d:	0f b6 19             	movzbl (%ecx),%ebx
 590:	31 c0                	xor    %eax,%eax
 592:	eb db                	jmp    56f <strcmp+0x2f>
 594:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 59b:	00 
 59c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000005a0 <strlen>:

uint
strlen(const char *s)
{
 5a0:	55                   	push   %ebp
 5a1:	89 e5                	mov    %esp,%ebp
 5a3:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
 5a6:	80 3a 00             	cmpb   $0x0,(%edx)
 5a9:	74 15                	je     5c0 <strlen+0x20>
 5ab:	31 c0                	xor    %eax,%eax
 5ad:	8d 76 00             	lea    0x0(%esi),%esi
 5b0:	83 c0 01             	add    $0x1,%eax
 5b3:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
 5b7:	89 c1                	mov    %eax,%ecx
 5b9:	75 f5                	jne    5b0 <strlen+0x10>
    ;
  return n;
}
 5bb:	89 c8                	mov    %ecx,%eax
 5bd:	5d                   	pop    %ebp
 5be:	c3                   	ret
 5bf:	90                   	nop
  for(n = 0; s[n]; n++)
 5c0:	31 c9                	xor    %ecx,%ecx
}
 5c2:	5d                   	pop    %ebp
 5c3:	89 c8                	mov    %ecx,%eax
 5c5:	c3                   	ret
 5c6:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 5cd:	00 
 5ce:	66 90                	xchg   %ax,%ax

000005d0 <memset>:

void*
memset(void *dst, int c, uint n)
{
 5d0:	55                   	push   %ebp
 5d1:	89 e5                	mov    %esp,%ebp
 5d3:	57                   	push   %edi
 5d4:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
 5d7:	8b 4d 10             	mov    0x10(%ebp),%ecx
 5da:	8b 45 0c             	mov    0xc(%ebp),%eax
 5dd:	89 d7                	mov    %edx,%edi
 5df:	fc                   	cld
 5e0:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 5e2:	8b 7d fc             	mov    -0x4(%ebp),%edi
 5e5:	89 d0                	mov    %edx,%eax
 5e7:	c9                   	leave
 5e8:	c3                   	ret
 5e9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000005f0 <strchr>:

char*
strchr(const char *s, char c)
{
 5f0:	55                   	push   %ebp
 5f1:	89 e5                	mov    %esp,%ebp
 5f3:	8b 45 08             	mov    0x8(%ebp),%eax
 5f6:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
 5fa:	0f b6 10             	movzbl (%eax),%edx
 5fd:	84 d2                	test   %dl,%dl
 5ff:	75 12                	jne    613 <strchr+0x23>
 601:	eb 1d                	jmp    620 <strchr+0x30>
 603:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
 608:	0f b6 50 01          	movzbl 0x1(%eax),%edx
 60c:	83 c0 01             	add    $0x1,%eax
 60f:	84 d2                	test   %dl,%dl
 611:	74 0d                	je     620 <strchr+0x30>
    if(*s == c)
 613:	38 d1                	cmp    %dl,%cl
 615:	75 f1                	jne    608 <strchr+0x18>
      return (char*)s;
  return 0;
}
 617:	5d                   	pop    %ebp
 618:	c3                   	ret
 619:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
 620:	31 c0                	xor    %eax,%eax
}
 622:	5d                   	pop    %ebp
 623:	c3                   	ret
 624:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 62b:	00 
 62c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000630 <gets>:

char*
gets(char *buf, int max)
{
 630:	55                   	push   %ebp
 631:	89 e5                	mov    %esp,%ebp
 633:	57                   	push   %edi
 634:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
 635:	8d 75 e7             	lea    -0x19(%ebp),%esi
{
 638:	53                   	push   %ebx
  for(i=0; i+1 < max; ){
 639:	31 db                	xor    %ebx,%ebx
{
 63b:	83 ec 1c             	sub    $0x1c,%esp
  for(i=0; i+1 < max; ){
 63e:	eb 27                	jmp    667 <gets+0x37>
    cc = read(0, &c, 1);
 640:	83 ec 04             	sub    $0x4,%esp
 643:	6a 01                	push   $0x1
 645:	56                   	push   %esi
 646:	6a 00                	push   $0x0
 648:	e8 1e 01 00 00       	call   76b <read>
    if(cc < 1)
 64d:	83 c4 10             	add    $0x10,%esp
 650:	85 c0                	test   %eax,%eax
 652:	7e 1d                	jle    671 <gets+0x41>
      break;
    buf[i++] = c;
 654:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 658:	8b 55 08             	mov    0x8(%ebp),%edx
 65b:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 65f:	3c 0a                	cmp    $0xa,%al
 661:	74 10                	je     673 <gets+0x43>
 663:	3c 0d                	cmp    $0xd,%al
 665:	74 0c                	je     673 <gets+0x43>
  for(i=0; i+1 < max; ){
 667:	89 df                	mov    %ebx,%edi
 669:	83 c3 01             	add    $0x1,%ebx
 66c:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 66f:	7c cf                	jl     640 <gets+0x10>
 671:	89 fb                	mov    %edi,%ebx
      break;
  }
  buf[i] = '\0';
 673:	8b 45 08             	mov    0x8(%ebp),%eax
 676:	c6 04 18 00          	movb   $0x0,(%eax,%ebx,1)
  return buf;
}
 67a:	8d 65 f4             	lea    -0xc(%ebp),%esp
 67d:	5b                   	pop    %ebx
 67e:	5e                   	pop    %esi
 67f:	5f                   	pop    %edi
 680:	5d                   	pop    %ebp
 681:	c3                   	ret
 682:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 689:	00 
 68a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000690 <stat>:

int
stat(const char *n, struct stat *st)
{
 690:	55                   	push   %ebp
 691:	89 e5                	mov    %esp,%ebp
 693:	56                   	push   %esi
 694:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 695:	83 ec 08             	sub    $0x8,%esp
 698:	6a 00                	push   $0x0
 69a:	ff 75 08             	push   0x8(%ebp)
 69d:	e8 f1 00 00 00       	call   793 <open>
  if(fd < 0)
 6a2:	83 c4 10             	add    $0x10,%esp
 6a5:	85 c0                	test   %eax,%eax
 6a7:	78 27                	js     6d0 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 6a9:	83 ec 08             	sub    $0x8,%esp
 6ac:	ff 75 0c             	push   0xc(%ebp)
 6af:	89 c3                	mov    %eax,%ebx
 6b1:	50                   	push   %eax
 6b2:	e8 f4 00 00 00       	call   7ab <fstat>
  close(fd);
 6b7:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 6ba:	89 c6                	mov    %eax,%esi
  close(fd);
 6bc:	e8 ba 00 00 00       	call   77b <close>
  return r;
 6c1:	83 c4 10             	add    $0x10,%esp
}
 6c4:	8d 65 f8             	lea    -0x8(%ebp),%esp
 6c7:	89 f0                	mov    %esi,%eax
 6c9:	5b                   	pop    %ebx
 6ca:	5e                   	pop    %esi
 6cb:	5d                   	pop    %ebp
 6cc:	c3                   	ret
 6cd:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
 6d0:	be ff ff ff ff       	mov    $0xffffffff,%esi
 6d5:	eb ed                	jmp    6c4 <stat+0x34>
 6d7:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 6de:	00 
 6df:	90                   	nop

000006e0 <atoi>:

int
atoi(const char *s)
{
 6e0:	55                   	push   %ebp
 6e1:	89 e5                	mov    %esp,%ebp
 6e3:	53                   	push   %ebx
 6e4:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 6e7:	0f be 02             	movsbl (%edx),%eax
 6ea:	8d 48 d0             	lea    -0x30(%eax),%ecx
 6ed:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
 6f0:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
 6f5:	77 1e                	ja     715 <atoi+0x35>
 6f7:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 6fe:	00 
 6ff:	90                   	nop
    n = n*10 + *s++ - '0';
 700:	83 c2 01             	add    $0x1,%edx
 703:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
 706:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
 70a:	0f be 02             	movsbl (%edx),%eax
 70d:	8d 58 d0             	lea    -0x30(%eax),%ebx
 710:	80 fb 09             	cmp    $0x9,%bl
 713:	76 eb                	jbe    700 <atoi+0x20>
  return n;
}
 715:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 718:	89 c8                	mov    %ecx,%eax
 71a:	c9                   	leave
 71b:	c3                   	ret
 71c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000720 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
 720:	55                   	push   %ebp
 721:	89 e5                	mov    %esp,%ebp
 723:	57                   	push   %edi
 724:	8b 45 10             	mov    0x10(%ebp),%eax
 727:	8b 55 08             	mov    0x8(%ebp),%edx
 72a:	56                   	push   %esi
 72b:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 72e:	85 c0                	test   %eax,%eax
 730:	7e 13                	jle    745 <memmove+0x25>
 732:	01 d0                	add    %edx,%eax
  dst = vdst;
 734:	89 d7                	mov    %edx,%edi
 736:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 73d:	00 
 73e:	66 90                	xchg   %ax,%ax
    *dst++ = *src++;
 740:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
 741:	39 f8                	cmp    %edi,%eax
 743:	75 fb                	jne    740 <memmove+0x20>
  return vdst;
}
 745:	5e                   	pop    %esi
 746:	89 d0                	mov    %edx,%eax
 748:	5f                   	pop    %edi
 749:	5d                   	pop    %ebp
 74a:	c3                   	ret

0000074b <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 74b:	b8 01 00 00 00       	mov    $0x1,%eax
 750:	cd 40                	int    $0x40
 752:	c3                   	ret

00000753 <exit>:
SYSCALL(exit)
 753:	b8 02 00 00 00       	mov    $0x2,%eax
 758:	cd 40                	int    $0x40
 75a:	c3                   	ret

0000075b <wait>:
SYSCALL(wait)
 75b:	b8 03 00 00 00       	mov    $0x3,%eax
 760:	cd 40                	int    $0x40
 762:	c3                   	ret

00000763 <pipe>:
SYSCALL(pipe)
 763:	b8 04 00 00 00       	mov    $0x4,%eax
 768:	cd 40                	int    $0x40
 76a:	c3                   	ret

0000076b <read>:
SYSCALL(read)
 76b:	b8 05 00 00 00       	mov    $0x5,%eax
 770:	cd 40                	int    $0x40
 772:	c3                   	ret

00000773 <write>:
SYSCALL(write)
 773:	b8 10 00 00 00       	mov    $0x10,%eax
 778:	cd 40                	int    $0x40
 77a:	c3                   	ret

0000077b <close>:
SYSCALL(close)
 77b:	b8 15 00 00 00       	mov    $0x15,%eax
 780:	cd 40                	int    $0x40
 782:	c3                   	ret

00000783 <kill>:
SYSCALL(kill)
 783:	b8 06 00 00 00       	mov    $0x6,%eax
 788:	cd 40                	int    $0x40
 78a:	c3                   	ret

0000078b <exec>:
SYSCALL(exec)
 78b:	b8 07 00 00 00       	mov    $0x7,%eax
 790:	cd 40                	int    $0x40
 792:	c3                   	ret

00000793 <open>:
SYSCALL(open)
 793:	b8 0f 00 00 00       	mov    $0xf,%eax
 798:	cd 40                	int    $0x40
 79a:	c3                   	ret

0000079b <mknod>:
SYSCALL(mknod)
 79b:	b8 11 00 00 00       	mov    $0x11,%eax
 7a0:	cd 40                	int    $0x40
 7a2:	c3                   	ret

000007a3 <unlink>:
SYSCALL(unlink)
 7a3:	b8 12 00 00 00       	mov    $0x12,%eax
 7a8:	cd 40                	int    $0x40
 7aa:	c3                   	ret

000007ab <fstat>:
SYSCALL(fstat)
 7ab:	b8 08 00 00 00       	mov    $0x8,%eax
 7b0:	cd 40                	int    $0x40
 7b2:	c3                   	ret

000007b3 <link>:
SYSCALL(link)
 7b3:	b8 13 00 00 00       	mov    $0x13,%eax
 7b8:	cd 40                	int    $0x40
 7ba:	c3                   	ret

000007bb <mkdir>:
SYSCALL(mkdir)
 7bb:	b8 14 00 00 00       	mov    $0x14,%eax
 7c0:	cd 40                	int    $0x40
 7c2:	c3                   	ret

000007c3 <chdir>:
SYSCALL(chdir)
 7c3:	b8 09 00 00 00       	mov    $0x9,%eax
 7c8:	cd 40                	int    $0x40
 7ca:	c3                   	ret

000007cb <dup>:
SYSCALL(dup)
 7cb:	b8 0a 00 00 00       	mov    $0xa,%eax
 7d0:	cd 40                	int    $0x40
 7d2:	c3                   	ret

000007d3 <getpid>:
SYSCALL(getpid)
 7d3:	b8 0b 00 00 00       	mov    $0xb,%eax
 7d8:	cd 40                	int    $0x40
 7da:	c3                   	ret

000007db <sbrk>:
SYSCALL(sbrk)
 7db:	b8 0c 00 00 00       	mov    $0xc,%eax
 7e0:	cd 40                	int    $0x40
 7e2:	c3                   	ret

000007e3 <sleep>:
SYSCALL(sleep)
 7e3:	b8 0d 00 00 00       	mov    $0xd,%eax
 7e8:	cd 40                	int    $0x40
 7ea:	c3                   	ret

000007eb <uptime>:
SYSCALL(uptime)
 7eb:	b8 0e 00 00 00       	mov    $0xe,%eax
 7f0:	cd 40                	int    $0x40
 7f2:	c3                   	ret

000007f3 <getsysinfo>:
SYSCALL(getsysinfo) 
 7f3:	b8 16 00 00 00       	mov    $0x16,%eax
 7f8:	cd 40                	int    $0x40
 7fa:	c3                   	ret
 7fb:	66 90                	xchg   %ax,%ax
 7fd:	66 90                	xchg   %ax,%ax
 7ff:	90                   	nop

00000800 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 800:	55                   	push   %ebp
 801:	89 e5                	mov    %esp,%ebp
 803:	57                   	push   %edi
 804:	56                   	push   %esi
 805:	53                   	push   %ebx
 806:	89 cb                	mov    %ecx,%ebx
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
 808:	89 d1                	mov    %edx,%ecx
{
 80a:	83 ec 3c             	sub    $0x3c,%esp
 80d:	89 45 c0             	mov    %eax,-0x40(%ebp)
  if(sgn && xx < 0){
 810:	85 d2                	test   %edx,%edx
 812:	0f 89 80 00 00 00    	jns    898 <printint+0x98>
 818:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 81c:	74 7a                	je     898 <printint+0x98>
    x = -xx;
 81e:	f7 d9                	neg    %ecx
    neg = 1;
 820:	b8 01 00 00 00       	mov    $0x1,%eax
  } else {
    x = xx;
  }

  i = 0;
 825:	89 45 c4             	mov    %eax,-0x3c(%ebp)
 828:	31 f6                	xor    %esi,%esi
 82a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
 830:	89 c8                	mov    %ecx,%eax
 832:	31 d2                	xor    %edx,%edx
 834:	89 f7                	mov    %esi,%edi
 836:	f7 f3                	div    %ebx
 838:	8d 76 01             	lea    0x1(%esi),%esi
 83b:	0f b6 92 94 0d 00 00 	movzbl 0xd94(%edx),%edx
 842:	88 54 35 d7          	mov    %dl,-0x29(%ebp,%esi,1)
  }while((x /= base) != 0);
 846:	89 ca                	mov    %ecx,%edx
 848:	89 c1                	mov    %eax,%ecx
 84a:	39 da                	cmp    %ebx,%edx
 84c:	73 e2                	jae    830 <printint+0x30>
  if(neg)
 84e:	8b 45 c4             	mov    -0x3c(%ebp),%eax
 851:	85 c0                	test   %eax,%eax
 853:	74 07                	je     85c <printint+0x5c>
    buf[i++] = '-';
 855:	c6 44 35 d8 2d       	movb   $0x2d,-0x28(%ebp,%esi,1)

  while(--i >= 0)
 85a:	89 f7                	mov    %esi,%edi
 85c:	8d 5d d8             	lea    -0x28(%ebp),%ebx
 85f:	8b 75 c0             	mov    -0x40(%ebp),%esi
 862:	01 df                	add    %ebx,%edi
 864:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    putc(fd, buf[i]);
 868:	0f b6 07             	movzbl (%edi),%eax
  write(fd, &c, 1);
 86b:	83 ec 04             	sub    $0x4,%esp
 86e:	88 45 d7             	mov    %al,-0x29(%ebp)
 871:	8d 45 d7             	lea    -0x29(%ebp),%eax
 874:	6a 01                	push   $0x1
 876:	50                   	push   %eax
 877:	56                   	push   %esi
 878:	e8 f6 fe ff ff       	call   773 <write>
  while(--i >= 0)
 87d:	89 f8                	mov    %edi,%eax
 87f:	83 c4 10             	add    $0x10,%esp
 882:	83 ef 01             	sub    $0x1,%edi
 885:	39 c3                	cmp    %eax,%ebx
 887:	75 df                	jne    868 <printint+0x68>
}
 889:	8d 65 f4             	lea    -0xc(%ebp),%esp
 88c:	5b                   	pop    %ebx
 88d:	5e                   	pop    %esi
 88e:	5f                   	pop    %edi
 88f:	5d                   	pop    %ebp
 890:	c3                   	ret
 891:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 898:	31 c0                	xor    %eax,%eax
 89a:	eb 89                	jmp    825 <printint+0x25>
 89c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000008a0 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 8a0:	55                   	push   %ebp
 8a1:	89 e5                	mov    %esp,%ebp
 8a3:	57                   	push   %edi
 8a4:	56                   	push   %esi
 8a5:	53                   	push   %ebx
 8a6:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 8a9:	8b 75 0c             	mov    0xc(%ebp),%esi
{
 8ac:	8b 7d 08             	mov    0x8(%ebp),%edi
  for(i = 0; fmt[i]; i++){
 8af:	0f b6 1e             	movzbl (%esi),%ebx
 8b2:	83 c6 01             	add    $0x1,%esi
 8b5:	84 db                	test   %bl,%bl
 8b7:	74 67                	je     920 <printf+0x80>
 8b9:	8d 4d 10             	lea    0x10(%ebp),%ecx
 8bc:	31 d2                	xor    %edx,%edx
 8be:	89 4d d0             	mov    %ecx,-0x30(%ebp)
 8c1:	eb 34                	jmp    8f7 <printf+0x57>
 8c3:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
 8c8:	89 55 d4             	mov    %edx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
 8cb:	ba 25 00 00 00       	mov    $0x25,%edx
      if(c == '%'){
 8d0:	83 f8 25             	cmp    $0x25,%eax
 8d3:	74 18                	je     8ed <printf+0x4d>
  write(fd, &c, 1);
 8d5:	83 ec 04             	sub    $0x4,%esp
 8d8:	8d 45 e7             	lea    -0x19(%ebp),%eax
 8db:	88 5d e7             	mov    %bl,-0x19(%ebp)
 8de:	6a 01                	push   $0x1
 8e0:	50                   	push   %eax
 8e1:	57                   	push   %edi
 8e2:	e8 8c fe ff ff       	call   773 <write>
 8e7:	8b 55 d4             	mov    -0x2c(%ebp),%edx
      } else {
        putc(fd, c);
 8ea:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 8ed:	0f b6 1e             	movzbl (%esi),%ebx
 8f0:	83 c6 01             	add    $0x1,%esi
 8f3:	84 db                	test   %bl,%bl
 8f5:	74 29                	je     920 <printf+0x80>
    c = fmt[i] & 0xff;
 8f7:	0f b6 c3             	movzbl %bl,%eax
    if(state == 0){
 8fa:	85 d2                	test   %edx,%edx
 8fc:	74 ca                	je     8c8 <printf+0x28>
      }
    } else if(state == '%'){
 8fe:	83 fa 25             	cmp    $0x25,%edx
 901:	75 ea                	jne    8ed <printf+0x4d>
      if(c == 'd'){
 903:	83 f8 25             	cmp    $0x25,%eax
 906:	0f 84 04 01 00 00    	je     a10 <printf+0x170>
 90c:	83 e8 63             	sub    $0x63,%eax
 90f:	83 f8 15             	cmp    $0x15,%eax
 912:	77 1c                	ja     930 <printf+0x90>
 914:	ff 24 85 3c 0d 00 00 	jmp    *0xd3c(,%eax,4)
 91b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 920:	8d 65 f4             	lea    -0xc(%ebp),%esp
 923:	5b                   	pop    %ebx
 924:	5e                   	pop    %esi
 925:	5f                   	pop    %edi
 926:	5d                   	pop    %ebp
 927:	c3                   	ret
 928:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 92f:	00 
  write(fd, &c, 1);
 930:	83 ec 04             	sub    $0x4,%esp
 933:	8d 55 e7             	lea    -0x19(%ebp),%edx
 936:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 93a:	6a 01                	push   $0x1
 93c:	52                   	push   %edx
 93d:	89 55 d4             	mov    %edx,-0x2c(%ebp)
 940:	57                   	push   %edi
 941:	e8 2d fe ff ff       	call   773 <write>
 946:	83 c4 0c             	add    $0xc,%esp
 949:	88 5d e7             	mov    %bl,-0x19(%ebp)
 94c:	6a 01                	push   $0x1
 94e:	8b 55 d4             	mov    -0x2c(%ebp),%edx
 951:	52                   	push   %edx
 952:	57                   	push   %edi
 953:	e8 1b fe ff ff       	call   773 <write>
        putc(fd, c);
 958:	83 c4 10             	add    $0x10,%esp
      state = 0;
 95b:	31 d2                	xor    %edx,%edx
 95d:	eb 8e                	jmp    8ed <printf+0x4d>
 95f:	90                   	nop
        printint(fd, *ap, 16, 0);
 960:	8b 5d d0             	mov    -0x30(%ebp),%ebx
 963:	83 ec 0c             	sub    $0xc,%esp
 966:	b9 10 00 00 00       	mov    $0x10,%ecx
 96b:	8b 13                	mov    (%ebx),%edx
 96d:	6a 00                	push   $0x0
 96f:	89 f8                	mov    %edi,%eax
        ap++;
 971:	83 c3 04             	add    $0x4,%ebx
        printint(fd, *ap, 16, 0);
 974:	e8 87 fe ff ff       	call   800 <printint>
        ap++;
 979:	89 5d d0             	mov    %ebx,-0x30(%ebp)
 97c:	83 c4 10             	add    $0x10,%esp
      state = 0;
 97f:	31 d2                	xor    %edx,%edx
 981:	e9 67 ff ff ff       	jmp    8ed <printf+0x4d>
        s = (char*)*ap;
 986:	8b 45 d0             	mov    -0x30(%ebp),%eax
 989:	8b 18                	mov    (%eax),%ebx
        ap++;
 98b:	83 c0 04             	add    $0x4,%eax
 98e:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
 991:	85 db                	test   %ebx,%ebx
 993:	0f 84 87 00 00 00    	je     a20 <printf+0x180>
        while(*s != 0){
 999:	0f b6 03             	movzbl (%ebx),%eax
      state = 0;
 99c:	31 d2                	xor    %edx,%edx
        while(*s != 0){
 99e:	84 c0                	test   %al,%al
 9a0:	0f 84 47 ff ff ff    	je     8ed <printf+0x4d>
 9a6:	8d 55 e7             	lea    -0x19(%ebp),%edx
 9a9:	89 75 d4             	mov    %esi,-0x2c(%ebp)
 9ac:	89 de                	mov    %ebx,%esi
 9ae:	89 d3                	mov    %edx,%ebx
  write(fd, &c, 1);
 9b0:	83 ec 04             	sub    $0x4,%esp
 9b3:	88 45 e7             	mov    %al,-0x19(%ebp)
          s++;
 9b6:	83 c6 01             	add    $0x1,%esi
  write(fd, &c, 1);
 9b9:	6a 01                	push   $0x1
 9bb:	53                   	push   %ebx
 9bc:	57                   	push   %edi
 9bd:	e8 b1 fd ff ff       	call   773 <write>
        while(*s != 0){
 9c2:	0f b6 06             	movzbl (%esi),%eax
 9c5:	83 c4 10             	add    $0x10,%esp
 9c8:	84 c0                	test   %al,%al
 9ca:	75 e4                	jne    9b0 <printf+0x110>
      state = 0;
 9cc:	8b 75 d4             	mov    -0x2c(%ebp),%esi
 9cf:	31 d2                	xor    %edx,%edx
 9d1:	e9 17 ff ff ff       	jmp    8ed <printf+0x4d>
        printint(fd, *ap, 10, 1);
 9d6:	8b 5d d0             	mov    -0x30(%ebp),%ebx
 9d9:	83 ec 0c             	sub    $0xc,%esp
 9dc:	b9 0a 00 00 00       	mov    $0xa,%ecx
 9e1:	8b 13                	mov    (%ebx),%edx
 9e3:	6a 01                	push   $0x1
 9e5:	eb 88                	jmp    96f <printf+0xcf>
        putc(fd, *ap);
 9e7:	8b 5d d0             	mov    -0x30(%ebp),%ebx
  write(fd, &c, 1);
 9ea:	83 ec 04             	sub    $0x4,%esp
 9ed:	8d 55 e7             	lea    -0x19(%ebp),%edx
        putc(fd, *ap);
 9f0:	8b 03                	mov    (%ebx),%eax
        ap++;
 9f2:	83 c3 04             	add    $0x4,%ebx
        putc(fd, *ap);
 9f5:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 9f8:	6a 01                	push   $0x1
 9fa:	52                   	push   %edx
 9fb:	57                   	push   %edi
 9fc:	e8 72 fd ff ff       	call   773 <write>
        ap++;
 a01:	89 5d d0             	mov    %ebx,-0x30(%ebp)
 a04:	83 c4 10             	add    $0x10,%esp
      state = 0;
 a07:	31 d2                	xor    %edx,%edx
 a09:	e9 df fe ff ff       	jmp    8ed <printf+0x4d>
 a0e:	66 90                	xchg   %ax,%ax
  write(fd, &c, 1);
 a10:	83 ec 04             	sub    $0x4,%esp
 a13:	88 5d e7             	mov    %bl,-0x19(%ebp)
 a16:	8d 55 e7             	lea    -0x19(%ebp),%edx
 a19:	6a 01                	push   $0x1
 a1b:	e9 31 ff ff ff       	jmp    951 <printf+0xb1>
 a20:	b8 28 00 00 00       	mov    $0x28,%eax
          s = "(null)";
 a25:	bb bb 0c 00 00       	mov    $0xcbb,%ebx
 a2a:	e9 77 ff ff ff       	jmp    9a6 <printf+0x106>
 a2f:	90                   	nop

00000a30 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 a30:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 a31:	a1 dc 10 00 00       	mov    0x10dc,%eax
{
 a36:	89 e5                	mov    %esp,%ebp
 a38:	57                   	push   %edi
 a39:	56                   	push   %esi
 a3a:	53                   	push   %ebx
 a3b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 a3e:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 a41:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 a48:	8b 10                	mov    (%eax),%edx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 a4a:	39 c8                	cmp    %ecx,%eax
 a4c:	73 32                	jae    a80 <free+0x50>
 a4e:	39 d1                	cmp    %edx,%ecx
 a50:	72 04                	jb     a56 <free+0x26>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 a52:	39 d0                	cmp    %edx,%eax
 a54:	72 32                	jb     a88 <free+0x58>
      break;
  if(bp + bp->s.size == p->s.ptr){
 a56:	8b 73 fc             	mov    -0x4(%ebx),%esi
 a59:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 a5c:	39 fa                	cmp    %edi,%edx
 a5e:	74 30                	je     a90 <free+0x60>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
 a60:	89 53 f8             	mov    %edx,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 a63:	8b 50 04             	mov    0x4(%eax),%edx
 a66:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 a69:	39 f1                	cmp    %esi,%ecx
 a6b:	74 3a                	je     aa7 <free+0x77>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
 a6d:	89 08                	mov    %ecx,(%eax)
  } else
    p->s.ptr = bp;
  freep = p;
}
 a6f:	5b                   	pop    %ebx
  freep = p;
 a70:	a3 dc 10 00 00       	mov    %eax,0x10dc
}
 a75:	5e                   	pop    %esi
 a76:	5f                   	pop    %edi
 a77:	5d                   	pop    %ebp
 a78:	c3                   	ret
 a79:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 a80:	39 d0                	cmp    %edx,%eax
 a82:	72 04                	jb     a88 <free+0x58>
 a84:	39 d1                	cmp    %edx,%ecx
 a86:	72 ce                	jb     a56 <free+0x26>
{
 a88:	89 d0                	mov    %edx,%eax
 a8a:	eb bc                	jmp    a48 <free+0x18>
 a8c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    bp->s.size += p->s.ptr->s.size;
 a90:	03 72 04             	add    0x4(%edx),%esi
 a93:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 a96:	8b 10                	mov    (%eax),%edx
 a98:	8b 12                	mov    (%edx),%edx
 a9a:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
 a9d:	8b 50 04             	mov    0x4(%eax),%edx
 aa0:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 aa3:	39 f1                	cmp    %esi,%ecx
 aa5:	75 c6                	jne    a6d <free+0x3d>
    p->s.size += bp->s.size;
 aa7:	03 53 fc             	add    -0x4(%ebx),%edx
  freep = p;
 aaa:	a3 dc 10 00 00       	mov    %eax,0x10dc
    p->s.size += bp->s.size;
 aaf:	89 50 04             	mov    %edx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
 ab2:	8b 4b f8             	mov    -0x8(%ebx),%ecx
 ab5:	89 08                	mov    %ecx,(%eax)
}
 ab7:	5b                   	pop    %ebx
 ab8:	5e                   	pop    %esi
 ab9:	5f                   	pop    %edi
 aba:	5d                   	pop    %ebp
 abb:	c3                   	ret
 abc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000ac0 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 ac0:	55                   	push   %ebp
 ac1:	89 e5                	mov    %esp,%ebp
 ac3:	57                   	push   %edi
 ac4:	56                   	push   %esi
 ac5:	53                   	push   %ebx
 ac6:	83 ec 0c             	sub    $0xc,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 ac9:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 acc:	8b 15 dc 10 00 00    	mov    0x10dc,%edx
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 ad2:	8d 78 07             	lea    0x7(%eax),%edi
 ad5:	c1 ef 03             	shr    $0x3,%edi
 ad8:	83 c7 01             	add    $0x1,%edi
  if((prevp = freep) == 0){
 adb:	85 d2                	test   %edx,%edx
 add:	0f 84 8d 00 00 00    	je     b70 <malloc+0xb0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 ae3:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 ae5:	8b 48 04             	mov    0x4(%eax),%ecx
 ae8:	39 f9                	cmp    %edi,%ecx
 aea:	73 64                	jae    b50 <malloc+0x90>
  if(nu < 4096)
 aec:	bb 00 10 00 00       	mov    $0x1000,%ebx
 af1:	39 df                	cmp    %ebx,%edi
 af3:	0f 43 df             	cmovae %edi,%ebx
  p = sbrk(nu * sizeof(Header));
 af6:	8d 34 dd 00 00 00 00 	lea    0x0(,%ebx,8),%esi
 afd:	eb 0a                	jmp    b09 <malloc+0x49>
 aff:	90                   	nop
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 b00:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 b02:	8b 48 04             	mov    0x4(%eax),%ecx
 b05:	39 f9                	cmp    %edi,%ecx
 b07:	73 47                	jae    b50 <malloc+0x90>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 b09:	89 c2                	mov    %eax,%edx
 b0b:	3b 05 dc 10 00 00    	cmp    0x10dc,%eax
 b11:	75 ed                	jne    b00 <malloc+0x40>
  p = sbrk(nu * sizeof(Header));
 b13:	83 ec 0c             	sub    $0xc,%esp
 b16:	56                   	push   %esi
 b17:	e8 bf fc ff ff       	call   7db <sbrk>
  if(p == (char*)-1)
 b1c:	83 c4 10             	add    $0x10,%esp
 b1f:	83 f8 ff             	cmp    $0xffffffff,%eax
 b22:	74 1c                	je     b40 <malloc+0x80>
  hp->s.size = nu;
 b24:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 b27:	83 ec 0c             	sub    $0xc,%esp
 b2a:	83 c0 08             	add    $0x8,%eax
 b2d:	50                   	push   %eax
 b2e:	e8 fd fe ff ff       	call   a30 <free>
  return freep;
 b33:	8b 15 dc 10 00 00    	mov    0x10dc,%edx
      if((p = morecore(nunits)) == 0)
 b39:	83 c4 10             	add    $0x10,%esp
 b3c:	85 d2                	test   %edx,%edx
 b3e:	75 c0                	jne    b00 <malloc+0x40>
        return 0;
  }
}
 b40:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 b43:	31 c0                	xor    %eax,%eax
}
 b45:	5b                   	pop    %ebx
 b46:	5e                   	pop    %esi
 b47:	5f                   	pop    %edi
 b48:	5d                   	pop    %ebp
 b49:	c3                   	ret
 b4a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 b50:	39 cf                	cmp    %ecx,%edi
 b52:	74 4c                	je     ba0 <malloc+0xe0>
        p->s.size -= nunits;
 b54:	29 f9                	sub    %edi,%ecx
 b56:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 b59:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 b5c:	89 78 04             	mov    %edi,0x4(%eax)
      freep = prevp;
 b5f:	89 15 dc 10 00 00    	mov    %edx,0x10dc
}
 b65:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 b68:	83 c0 08             	add    $0x8,%eax
}
 b6b:	5b                   	pop    %ebx
 b6c:	5e                   	pop    %esi
 b6d:	5f                   	pop    %edi
 b6e:	5d                   	pop    %ebp
 b6f:	c3                   	ret
    base.s.ptr = freep = prevp = &base;
 b70:	c7 05 dc 10 00 00 e0 	movl   $0x10e0,0x10dc
 b77:	10 00 00 
    base.s.size = 0;
 b7a:	b8 e0 10 00 00       	mov    $0x10e0,%eax
    base.s.ptr = freep = prevp = &base;
 b7f:	c7 05 e0 10 00 00 e0 	movl   $0x10e0,0x10e0
 b86:	10 00 00 
    base.s.size = 0;
 b89:	c7 05 e4 10 00 00 00 	movl   $0x0,0x10e4
 b90:	00 00 00 
    if(p->s.size >= nunits){
 b93:	e9 54 ff ff ff       	jmp    aec <malloc+0x2c>
 b98:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 b9f:	00 
        prevp->s.ptr = p->s.ptr;
 ba0:	8b 08                	mov    (%eax),%ecx
 ba2:	89 0a                	mov    %ecx,(%edx)
 ba4:	eb b9                	jmp    b5f <malloc+0x9f>
