
_mkdir:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
    return 1;
}

int
main(int argc, char *argv[])
{
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	57                   	push   %edi
   4:	56                   	push   %esi
    int i;

    if(argc < 2){
   5:	be 01 00 00 00       	mov    $0x1,%esi
    return 1;
}

int
main(int argc, char *argv[])
{
   a:	53                   	push   %ebx
   b:	83 e4 f0             	and    $0xfffffff0,%esp
   e:	83 ec 10             	sub    $0x10,%esp
  11:	8b 7d 08             	mov    0x8(%ebp),%edi
  14:	8b 45 0c             	mov    0xc(%ebp),%eax
    int i;

    if(argc < 2){
  17:	83 ff 01             	cmp    $0x1,%edi
  1a:	8d 58 04             	lea    0x4(%eax),%ebx
  1d:	7f 18                	jg     37 <main+0x37>
  1f:	eb 5e                	jmp    7f <main+0x7f>
  21:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        printf(2, "Usage: mkdir files...\n");
        exit();
    }

    for(i = 1; i < argc; i++){
  28:	83 c6 01             	add    $0x1,%esi
  2b:	83 c3 04             	add    $0x4,%ebx
        if(mkdir(argv[i]) >= 0){
             if (argv[i][0] == '/') absolute_path(argv[i]);
             else relative_path(argv[i]);
  2e:	e8 bd 00 00 00       	call   f0 <relative_path>
    if(argc < 2){
        printf(2, "Usage: mkdir files...\n");
        exit();
    }

    for(i = 1; i < argc; i++){
  33:	39 fe                	cmp    %edi,%esi
  35:	74 29                	je     60 <main+0x60>
        if(mkdir(argv[i]) >= 0){
  37:	8b 03                	mov    (%ebx),%eax
  39:	89 04 24             	mov    %eax,(%esp)
  3c:	e8 19 05 00 00       	call   55a <mkdir>
  41:	85 c0                	test   %eax,%eax
             if (argv[i][0] == '/') absolute_path(argv[i]);
  43:	8b 03                	mov    (%ebx),%eax
        printf(2, "Usage: mkdir files...\n");
        exit();
    }

    for(i = 1; i < argc; i++){
        if(mkdir(argv[i]) >= 0){
  45:	78 1e                	js     65 <main+0x65>
             if (argv[i][0] == '/') absolute_path(argv[i]);
  47:	80 38 2f             	cmpb   $0x2f,(%eax)
  4a:	89 04 24             	mov    %eax,(%esp)
  4d:	75 d9                	jne    28 <main+0x28>
    if(argc < 2){
        printf(2, "Usage: mkdir files...\n");
        exit();
    }

    for(i = 1; i < argc; i++){
  4f:	83 c6 01             	add    $0x1,%esi
  52:	83 c3 04             	add    $0x4,%ebx
        if(mkdir(argv[i]) >= 0){
             if (argv[i][0] == '/') absolute_path(argv[i]);
  55:	e8 d6 01 00 00       	call   230 <absolute_path>
    if(argc < 2){
        printf(2, "Usage: mkdir files...\n");
        exit();
    }

    for(i = 1; i < argc; i++){
  5a:	39 fe                	cmp    %edi,%esi
  5c:	75 d9                	jne    37 <main+0x37>
  5e:	66 90                	xchg   %ax,%ax
            printf(2, "mkdir: %s failed to create\n", argv[i]);
            break;
        }
    }

    exit();
  60:	e8 8d 04 00 00       	call   4f2 <exit>
    for(i = 1; i < argc; i++){
        if(mkdir(argv[i]) >= 0){
             if (argv[i][0] == '/') absolute_path(argv[i]);
             else relative_path(argv[i]);
        } else {
            printf(2, "mkdir: %s failed to create\n", argv[i]);
  65:	89 44 24 08          	mov    %eax,0x8(%esp)
  69:	c7 44 24 04 c4 09 00 	movl   $0x9c4,0x4(%esp)
  70:	00 
  71:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
  78:	e8 c3 05 00 00       	call   640 <printf>
            break;
  7d:	eb e1                	jmp    60 <main+0x60>
main(int argc, char *argv[])
{
    int i;

    if(argc < 2){
        printf(2, "Usage: mkdir files...\n");
  7f:	c7 44 24 04 ad 09 00 	movl   $0x9ad,0x4(%esp)
  86:	00 
  87:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
  8e:	e8 ad 05 00 00       	call   640 <printf>
        exit();
  93:	e8 5a 04 00 00       	call   4f2 <exit>
  98:	66 90                	xchg   %ax,%ax
  9a:	66 90                	xchg   %ax,%ax
  9c:	66 90                	xchg   %ax,%ax
  9e:	66 90                	xchg   %ax,%ax

000000a0 <strcat>:
#include "user.h"
#include "fcntl.h"

char *
strcat(char *dest, const char *src)
{
  a0:	55                   	push   %ebp
  a1:	89 e5                	mov    %esp,%ebp
  a3:	8b 45 08             	mov    0x8(%ebp),%eax
  a6:	57                   	push   %edi
  a7:	56                   	push   %esi
  a8:	8b 75 0c             	mov    0xc(%ebp),%esi
  ab:	53                   	push   %ebx
    int i,j;
    for (i = 0; dest[i] != '\0'; i++);
  ac:	80 38 00             	cmpb   $0x0,(%eax)
  af:	74 38                	je     e9 <strcat+0x49>
  b1:	31 c9                	xor    %ecx,%ecx
  b3:	90                   	nop
  b4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  b8:	83 c1 01             	add    $0x1,%ecx
  bb:	80 3c 08 00          	cmpb   $0x0,(%eax,%ecx,1)
  bf:	75 f7                	jne    b8 <strcat+0x18>
  c1:	89 ca                	mov    %ecx,%edx
    for (j = 0; src[j] != '\0'; j++)dest[i+j] = src[j];
  c3:	0f b6 1e             	movzbl (%esi),%ebx
  c6:	84 db                	test   %bl,%bl
  c8:	74 16                	je     e0 <strcat+0x40>
  ca:	31 d2                	xor    %edx,%edx
  cc:	8d 3c 08             	lea    (%eax,%ecx,1),%edi
  cf:	90                   	nop
  d0:	88 1c 17             	mov    %bl,(%edi,%edx,1)
  d3:	83 c2 01             	add    $0x1,%edx
  d6:	0f b6 1c 16          	movzbl (%esi,%edx,1),%ebx
  da:	84 db                	test   %bl,%bl
  dc:	75 f2                	jne    d0 <strcat+0x30>
  de:	01 ca                	add    %ecx,%edx
    dest[i+j] = '\0';
  e0:	c6 04 10 00          	movb   $0x0,(%eax,%edx,1)
    return dest;
}
  e4:	5b                   	pop    %ebx
  e5:	5e                   	pop    %esi
  e6:	5f                   	pop    %edi
  e7:	5d                   	pop    %ebp
  e8:	c3                   	ret    

char *
strcat(char *dest, const char *src)
{
    int i,j;
    for (i = 0; dest[i] != '\0'; i++);
  e9:	31 d2                	xor    %edx,%edx
  eb:	31 c9                	xor    %ecx,%ecx
  ed:	eb d4                	jmp    c3 <strcat+0x23>
  ef:	90                   	nop

000000f0 <relative_path>:
    for (j = 0; src[j] != '\0'; j++)dest[i+j] = src[j];
    dest[i+j] = '\0';
    return dest;
}

int relative_path(char *dir){
  f0:	55                   	push   %ebp
  f1:	89 e5                	mov    %esp,%ebp
  f3:	57                   	push   %edi
  f4:	56                   	push   %esi
  f5:	53                   	push   %ebx
  f6:	81 ec 2c 04 00 00    	sub    $0x42c,%esp
    int current_pwd;
    int next_pwd;

    if ((current_pwd = open(".pwd",O_RDONLY)) > 0){
  fc:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 103:	00 
 104:	c7 04 24 a6 09 00 00 	movl   $0x9a6,(%esp)
 10b:	e8 22 04 00 00       	call   532 <open>
 110:	85 c0                	test   %eax,%eax
 112:	89 c6                	mov    %eax,%esi
 114:	0f 8e fc 00 00 00    	jle    216 <relative_path+0x126>
        char *next = {""};
        char dummy[1024];

        read(current_pwd,dummy,sizeof(dummy));
 11a:	8d 9d e8 fb ff ff    	lea    -0x418(%ebp),%ebx
 120:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 124:	c7 44 24 08 00 04 00 	movl   $0x400,0x8(%esp)
 12b:	00 
 12c:	89 04 24             	mov    %eax,(%esp)
 12f:	e8 d6 03 00 00       	call   50a <read>
        close(current_pwd);
 134:	89 34 24             	mov    %esi,(%esp)
 137:	e8 de 03 00 00       	call   51a <close>
        //printf(1,"dummy : %s\n",dummy);
        next = strcat(next,dummy);
 13c:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 140:	c7 04 24 c3 09 00 00 	movl   $0x9c3,(%esp)
 147:	e8 54 ff ff ff       	call   a0 <strcat>
        next = strcat(next,dir);
 14c:	8b 55 08             	mov    0x8(%ebp),%edx
 14f:	89 54 24 04          	mov    %edx,0x4(%esp)
 153:	89 04 24             	mov    %eax,(%esp)
 156:	e8 45 ff ff ff       	call   a0 <strcat>
        next = strcat(next,"/");
 15b:	c7 44 24 04 ab 09 00 	movl   $0x9ab,0x4(%esp)
 162:	00 
 163:	89 04 24             	mov    %eax,(%esp)
 166:	e8 35 ff ff ff       	call   a0 <strcat>
        next = strcat(next,".pwd");
 16b:	c7 44 24 04 a6 09 00 	movl   $0x9a6,0x4(%esp)
 172:	00 
 173:	89 04 24             	mov    %eax,(%esp)
 176:	e8 25 ff ff ff       	call   a0 <strcat>

        current_pwd = open(".pwd",O_RDONLY);
 17b:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 182:	00 
 183:	c7 04 24 a6 09 00 00 	movl   $0x9a6,(%esp)
        close(current_pwd);
        //printf(1,"dummy : %s\n",dummy);
        next = strcat(next,dummy);
        next = strcat(next,dir);
        next = strcat(next,"/");
        next = strcat(next,".pwd");
 18a:	89 c3                	mov    %eax,%ebx

        current_pwd = open(".pwd",O_RDONLY);
 18c:	e8 a1 03 00 00       	call   532 <open>
        next_pwd = open(next, O_CREATE | O_RDWR);
 191:	89 1c 24             	mov    %ebx,(%esp)
 194:	8d 9d e7 fb ff ff    	lea    -0x419(%ebp),%ebx
 19a:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
 1a1:	00 
        next = strcat(next,dummy);
        next = strcat(next,dir);
        next = strcat(next,"/");
        next = strcat(next,".pwd");

        current_pwd = open(".pwd",O_RDONLY);
 1a2:	89 c6                	mov    %eax,%esi
        next_pwd = open(next, O_CREATE | O_RDWR);
 1a4:	e8 89 03 00 00       	call   532 <open>
 1a9:	89 c7                	mov    %eax,%edi
        int n;
        char temp[1];
        while ((n = read(current_pwd,temp,sizeof(temp))) > 0){
 1ab:	eb 13                	jmp    1c0 <relative_path+0xd0>
 1ad:	8d 76 00             	lea    0x0(%esi),%esi
            write(next_pwd,temp,n);
 1b0:	89 44 24 08          	mov    %eax,0x8(%esp)
 1b4:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 1b8:	89 3c 24             	mov    %edi,(%esp)
 1bb:	e8 52 03 00 00       	call   512 <write>

        current_pwd = open(".pwd",O_RDONLY);
        next_pwd = open(next, O_CREATE | O_RDWR);
        int n;
        char temp[1];
        while ((n = read(current_pwd,temp,sizeof(temp))) > 0){
 1c0:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 1c7:	00 
 1c8:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 1cc:	89 34 24             	mov    %esi,(%esp)
 1cf:	e8 36 03 00 00       	call   50a <read>
 1d4:	85 c0                	test   %eax,%eax
 1d6:	7f d8                	jg     1b0 <relative_path+0xc0>
            write(next_pwd,temp,n);
          //  printf(1,"%c",temp[0]);
        }
        //printf(1,"\n");
        //write(next_pwd,"/",1);
        write(next_pwd,dir,strlen(dir));
 1d8:	8b 45 08             	mov    0x8(%ebp),%eax
 1db:	89 04 24             	mov    %eax,(%esp)
 1de:	e8 6d 01 00 00       	call   350 <strlen>
 1e3:	89 3c 24             	mov    %edi,(%esp)
 1e6:	89 44 24 08          	mov    %eax,0x8(%esp)
 1ea:	8b 45 08             	mov    0x8(%ebp),%eax
 1ed:	89 44 24 04          	mov    %eax,0x4(%esp)
 1f1:	e8 1c 03 00 00       	call   512 <write>
        write(next_pwd,"/",1);
 1f6:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 1fd:	00 
 1fe:	c7 44 24 04 ab 09 00 	movl   $0x9ab,0x4(%esp)
 205:	00 
 206:	89 3c 24             	mov    %edi,(%esp)
 209:	e8 04 03 00 00       	call   512 <write>
        close(next_pwd);
 20e:	89 3c 24             	mov    %edi,(%esp)
 211:	e8 04 03 00 00       	call   51a <close>
    }
    close(current_pwd);
 216:	89 34 24             	mov    %esi,(%esp)
 219:	e8 fc 02 00 00       	call   51a <close>
    return 1;
}
 21e:	81 c4 2c 04 00 00    	add    $0x42c,%esp
 224:	b8 01 00 00 00       	mov    $0x1,%eax
 229:	5b                   	pop    %ebx
 22a:	5e                   	pop    %esi
 22b:	5f                   	pop    %edi
 22c:	5d                   	pop    %ebp
 22d:	c3                   	ret    
 22e:	66 90                	xchg   %ax,%ax

00000230 <absolute_path>:

int absolute_path(char *dir){
 230:	55                   	push   %ebp
 231:	89 e5                	mov    %esp,%ebp
 233:	56                   	push   %esi
 234:	53                   	push   %ebx
 235:	83 ec 10             	sub    $0x10,%esp
 238:	8b 75 08             	mov    0x8(%ebp),%esi
    char *next = {""};
    next = strcat(next,dir);
 23b:	c7 04 24 c3 09 00 00 	movl   $0x9c3,(%esp)
 242:	89 74 24 04          	mov    %esi,0x4(%esp)
 246:	e8 55 fe ff ff       	call   a0 <strcat>
    next = strcat(next,"/");
 24b:	c7 44 24 04 ab 09 00 	movl   $0x9ab,0x4(%esp)
 252:	00 
 253:	89 04 24             	mov    %eax,(%esp)
 256:	e8 45 fe ff ff       	call   a0 <strcat>
    next = strcat(next,".pwd");
 25b:	c7 44 24 04 a6 09 00 	movl   $0x9a6,0x4(%esp)
 262:	00 
 263:	89 04 24             	mov    %eax,(%esp)
 266:	e8 35 fe ff ff       	call   a0 <strcat>

    int next_pwd;

    next_pwd = open(next,O_CREATE | O_RDWR);
 26b:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
 272:	00 
 273:	89 04 24             	mov    %eax,(%esp)
 276:	e8 b7 02 00 00       	call   532 <open>
    write(next_pwd,dir,strlen(dir));
 27b:	89 34 24             	mov    %esi,(%esp)
    next = strcat(next,"/");
    next = strcat(next,".pwd");

    int next_pwd;

    next_pwd = open(next,O_CREATE | O_RDWR);
 27e:	89 c3                	mov    %eax,%ebx
    write(next_pwd,dir,strlen(dir));
 280:	e8 cb 00 00 00       	call   350 <strlen>
 285:	89 74 24 04          	mov    %esi,0x4(%esp)
 289:	89 1c 24             	mov    %ebx,(%esp)
 28c:	89 44 24 08          	mov    %eax,0x8(%esp)
 290:	e8 7d 02 00 00       	call   512 <write>
    write(next_pwd,"/",1);
 295:	89 1c 24             	mov    %ebx,(%esp)
 298:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 29f:	00 
 2a0:	c7 44 24 04 ab 09 00 	movl   $0x9ab,0x4(%esp)
 2a7:	00 
 2a8:	e8 65 02 00 00       	call   512 <write>
    close(next_pwd);
 2ad:	89 1c 24             	mov    %ebx,(%esp)
 2b0:	e8 65 02 00 00       	call   51a <close>
    return 1;
}
 2b5:	83 c4 10             	add    $0x10,%esp
 2b8:	b8 01 00 00 00       	mov    $0x1,%eax
 2bd:	5b                   	pop    %ebx
 2be:	5e                   	pop    %esi
 2bf:	5d                   	pop    %ebp
 2c0:	c3                   	ret    
 2c1:	66 90                	xchg   %ax,%ax
 2c3:	66 90                	xchg   %ax,%ax
 2c5:	66 90                	xchg   %ax,%ax
 2c7:	66 90                	xchg   %ax,%ax
 2c9:	66 90                	xchg   %ax,%ax
 2cb:	66 90                	xchg   %ax,%ax
 2cd:	66 90                	xchg   %ax,%ax
 2cf:	90                   	nop

000002d0 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, char *t)
{
 2d0:	55                   	push   %ebp
 2d1:	89 e5                	mov    %esp,%ebp
 2d3:	8b 45 08             	mov    0x8(%ebp),%eax
 2d6:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 2d9:	53                   	push   %ebx
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 2da:	89 c2                	mov    %eax,%edx
 2dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 2e0:	83 c1 01             	add    $0x1,%ecx
 2e3:	0f b6 59 ff          	movzbl -0x1(%ecx),%ebx
 2e7:	83 c2 01             	add    $0x1,%edx
 2ea:	84 db                	test   %bl,%bl
 2ec:	88 5a ff             	mov    %bl,-0x1(%edx)
 2ef:	75 ef                	jne    2e0 <strcpy+0x10>
    ;
  return os;
}
 2f1:	5b                   	pop    %ebx
 2f2:	5d                   	pop    %ebp
 2f3:	c3                   	ret    
 2f4:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 2fa:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00000300 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 300:	55                   	push   %ebp
 301:	89 e5                	mov    %esp,%ebp
 303:	8b 55 08             	mov    0x8(%ebp),%edx
 306:	53                   	push   %ebx
 307:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 30a:	0f b6 02             	movzbl (%edx),%eax
 30d:	84 c0                	test   %al,%al
 30f:	74 2d                	je     33e <strcmp+0x3e>
 311:	0f b6 19             	movzbl (%ecx),%ebx
 314:	38 d8                	cmp    %bl,%al
 316:	74 0e                	je     326 <strcmp+0x26>
 318:	eb 2b                	jmp    345 <strcmp+0x45>
 31a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 320:	38 c8                	cmp    %cl,%al
 322:	75 15                	jne    339 <strcmp+0x39>
    p++, q++;
 324:	89 d9                	mov    %ebx,%ecx
 326:	83 c2 01             	add    $0x1,%edx
}

int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
 329:	0f b6 02             	movzbl (%edx),%eax
    p++, q++;
 32c:	8d 59 01             	lea    0x1(%ecx),%ebx
}

int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
 32f:	0f b6 49 01          	movzbl 0x1(%ecx),%ecx
 333:	84 c0                	test   %al,%al
 335:	75 e9                	jne    320 <strcmp+0x20>
 337:	31 c0                	xor    %eax,%eax
    p++, q++;
  return (uchar)*p - (uchar)*q;
 339:	29 c8                	sub    %ecx,%eax
}
 33b:	5b                   	pop    %ebx
 33c:	5d                   	pop    %ebp
 33d:	c3                   	ret    
 33e:	0f b6 09             	movzbl (%ecx),%ecx
}

int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
 341:	31 c0                	xor    %eax,%eax
 343:	eb f4                	jmp    339 <strcmp+0x39>
 345:	0f b6 cb             	movzbl %bl,%ecx
 348:	eb ef                	jmp    339 <strcmp+0x39>
 34a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000350 <strlen>:
  return (uchar)*p - (uchar)*q;
}

uint
strlen(char *s)
{
 350:	55                   	push   %ebp
 351:	89 e5                	mov    %esp,%ebp
 353:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  for(n = 0; s[n]; n++)
 356:	80 39 00             	cmpb   $0x0,(%ecx)
 359:	74 12                	je     36d <strlen+0x1d>
 35b:	31 d2                	xor    %edx,%edx
 35d:	8d 76 00             	lea    0x0(%esi),%esi
 360:	83 c2 01             	add    $0x1,%edx
 363:	80 3c 11 00          	cmpb   $0x0,(%ecx,%edx,1)
 367:	89 d0                	mov    %edx,%eax
 369:	75 f5                	jne    360 <strlen+0x10>
    ;
  return n;
}
 36b:	5d                   	pop    %ebp
 36c:	c3                   	ret    
uint
strlen(char *s)
{
  int n;

  for(n = 0; s[n]; n++)
 36d:	31 c0                	xor    %eax,%eax
    ;
  return n;
}
 36f:	5d                   	pop    %ebp
 370:	c3                   	ret    
 371:	eb 0d                	jmp    380 <memset>
 373:	90                   	nop
 374:	90                   	nop
 375:	90                   	nop
 376:	90                   	nop
 377:	90                   	nop
 378:	90                   	nop
 379:	90                   	nop
 37a:	90                   	nop
 37b:	90                   	nop
 37c:	90                   	nop
 37d:	90                   	nop
 37e:	90                   	nop
 37f:	90                   	nop

00000380 <memset>:

void*
memset(void *dst, int c, uint n)
{
 380:	55                   	push   %ebp
 381:	89 e5                	mov    %esp,%ebp
 383:	8b 55 08             	mov    0x8(%ebp),%edx
 386:	57                   	push   %edi
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
 387:	8b 4d 10             	mov    0x10(%ebp),%ecx
 38a:	8b 45 0c             	mov    0xc(%ebp),%eax
 38d:	89 d7                	mov    %edx,%edi
 38f:	fc                   	cld    
 390:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 392:	89 d0                	mov    %edx,%eax
 394:	5f                   	pop    %edi
 395:	5d                   	pop    %ebp
 396:	c3                   	ret    
 397:	89 f6                	mov    %esi,%esi
 399:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000003a0 <strchr>:

char*
strchr(const char *s, char c)
{
 3a0:	55                   	push   %ebp
 3a1:	89 e5                	mov    %esp,%ebp
 3a3:	8b 45 08             	mov    0x8(%ebp),%eax
 3a6:	53                   	push   %ebx
 3a7:	8b 55 0c             	mov    0xc(%ebp),%edx
  for(; *s; s++)
 3aa:	0f b6 18             	movzbl (%eax),%ebx
 3ad:	84 db                	test   %bl,%bl
 3af:	74 1d                	je     3ce <strchr+0x2e>
    if(*s == c)
 3b1:	38 d3                	cmp    %dl,%bl
 3b3:	89 d1                	mov    %edx,%ecx
 3b5:	75 0d                	jne    3c4 <strchr+0x24>
 3b7:	eb 17                	jmp    3d0 <strchr+0x30>
 3b9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 3c0:	38 ca                	cmp    %cl,%dl
 3c2:	74 0c                	je     3d0 <strchr+0x30>
}

char*
strchr(const char *s, char c)
{
  for(; *s; s++)
 3c4:	83 c0 01             	add    $0x1,%eax
 3c7:	0f b6 10             	movzbl (%eax),%edx
 3ca:	84 d2                	test   %dl,%dl
 3cc:	75 f2                	jne    3c0 <strchr+0x20>
    if(*s == c)
      return (char*)s;
  return 0;
 3ce:	31 c0                	xor    %eax,%eax
}
 3d0:	5b                   	pop    %ebx
 3d1:	5d                   	pop    %ebp
 3d2:	c3                   	ret    
 3d3:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 3d9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000003e0 <gets>:

char*
gets(char *buf, int max)
{
 3e0:	55                   	push   %ebp
 3e1:	89 e5                	mov    %esp,%ebp
 3e3:	57                   	push   %edi
 3e4:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 3e5:	31 f6                	xor    %esi,%esi
  return 0;
}

char*
gets(char *buf, int max)
{
 3e7:	53                   	push   %ebx
 3e8:	83 ec 2c             	sub    $0x2c,%esp
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
 3eb:	8d 7d e7             	lea    -0x19(%ebp),%edi
gets(char *buf, int max)
{
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 3ee:	eb 31                	jmp    421 <gets+0x41>
    cc = read(0, &c, 1);
 3f0:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 3f7:	00 
 3f8:	89 7c 24 04          	mov    %edi,0x4(%esp)
 3fc:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 403:	e8 02 01 00 00       	call   50a <read>
    if(cc < 1)
 408:	85 c0                	test   %eax,%eax
 40a:	7e 1d                	jle    429 <gets+0x49>
      break;
    buf[i++] = c;
 40c:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
gets(char *buf, int max)
{
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 410:	89 de                	mov    %ebx,%esi
    cc = read(0, &c, 1);
    if(cc < 1)
      break;
    buf[i++] = c;
 412:	8b 55 08             	mov    0x8(%ebp),%edx
    if(c == '\n' || c == '\r')
 415:	3c 0d                	cmp    $0xd,%al

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
    if(cc < 1)
      break;
    buf[i++] = c;
 417:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 41b:	74 0c                	je     429 <gets+0x49>
 41d:	3c 0a                	cmp    $0xa,%al
 41f:	74 08                	je     429 <gets+0x49>
gets(char *buf, int max)
{
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 421:	8d 5e 01             	lea    0x1(%esi),%ebx
 424:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 427:	7c c7                	jl     3f0 <gets+0x10>
      break;
    buf[i++] = c;
    if(c == '\n' || c == '\r')
      break;
  }
  buf[i] = '\0';
 429:	8b 45 08             	mov    0x8(%ebp),%eax
 42c:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
 430:	83 c4 2c             	add    $0x2c,%esp
 433:	5b                   	pop    %ebx
 434:	5e                   	pop    %esi
 435:	5f                   	pop    %edi
 436:	5d                   	pop    %ebp
 437:	c3                   	ret    
 438:	90                   	nop
 439:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000440 <stat>:

int
stat(char *n, struct stat *st)
{
 440:	55                   	push   %ebp
 441:	89 e5                	mov    %esp,%ebp
 443:	56                   	push   %esi
 444:	53                   	push   %ebx
 445:	83 ec 10             	sub    $0x10,%esp
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 448:	8b 45 08             	mov    0x8(%ebp),%eax
 44b:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 452:	00 
 453:	89 04 24             	mov    %eax,(%esp)
 456:	e8 d7 00 00 00       	call   532 <open>
  if(fd < 0)
 45b:	85 c0                	test   %eax,%eax
stat(char *n, struct stat *st)
{
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 45d:	89 c3                	mov    %eax,%ebx
  if(fd < 0)
 45f:	78 27                	js     488 <stat+0x48>
    return -1;
  r = fstat(fd, st);
 461:	8b 45 0c             	mov    0xc(%ebp),%eax
 464:	89 1c 24             	mov    %ebx,(%esp)
 467:	89 44 24 04          	mov    %eax,0x4(%esp)
 46b:	e8 da 00 00 00       	call   54a <fstat>
  close(fd);
 470:	89 1c 24             	mov    %ebx,(%esp)
  int r;

  fd = open(n, O_RDONLY);
  if(fd < 0)
    return -1;
  r = fstat(fd, st);
 473:	89 c6                	mov    %eax,%esi
  close(fd);
 475:	e8 a0 00 00 00       	call   51a <close>
  return r;
 47a:	89 f0                	mov    %esi,%eax
}
 47c:	83 c4 10             	add    $0x10,%esp
 47f:	5b                   	pop    %ebx
 480:	5e                   	pop    %esi
 481:	5d                   	pop    %ebp
 482:	c3                   	ret    
 483:	90                   	nop
 484:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  int fd;
  int r;

  fd = open(n, O_RDONLY);
  if(fd < 0)
    return -1;
 488:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 48d:	eb ed                	jmp    47c <stat+0x3c>
 48f:	90                   	nop

00000490 <atoi>:
  return r;
}

int
atoi(const char *s)
{
 490:	55                   	push   %ebp
 491:	89 e5                	mov    %esp,%ebp
 493:	8b 4d 08             	mov    0x8(%ebp),%ecx
 496:	53                   	push   %ebx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 497:	0f be 11             	movsbl (%ecx),%edx
 49a:	8d 42 d0             	lea    -0x30(%edx),%eax
 49d:	3c 09                	cmp    $0x9,%al
int
atoi(const char *s)
{
  int n;

  n = 0;
 49f:	b8 00 00 00 00       	mov    $0x0,%eax
  while('0' <= *s && *s <= '9')
 4a4:	77 17                	ja     4bd <atoi+0x2d>
 4a6:	66 90                	xchg   %ax,%ax
    n = n*10 + *s++ - '0';
 4a8:	83 c1 01             	add    $0x1,%ecx
 4ab:	8d 04 80             	lea    (%eax,%eax,4),%eax
 4ae:	8d 44 42 d0          	lea    -0x30(%edx,%eax,2),%eax
atoi(const char *s)
{
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 4b2:	0f be 11             	movsbl (%ecx),%edx
 4b5:	8d 5a d0             	lea    -0x30(%edx),%ebx
 4b8:	80 fb 09             	cmp    $0x9,%bl
 4bb:	76 eb                	jbe    4a8 <atoi+0x18>
    n = n*10 + *s++ - '0';
  return n;
}
 4bd:	5b                   	pop    %ebx
 4be:	5d                   	pop    %ebp
 4bf:	c3                   	ret    

000004c0 <memmove>:

void*
memmove(void *vdst, void *vsrc, int n)
{
 4c0:	55                   	push   %ebp
  char *dst, *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 4c1:	31 d2                	xor    %edx,%edx
  return n;
}

void*
memmove(void *vdst, void *vsrc, int n)
{
 4c3:	89 e5                	mov    %esp,%ebp
 4c5:	56                   	push   %esi
 4c6:	8b 45 08             	mov    0x8(%ebp),%eax
 4c9:	53                   	push   %ebx
 4ca:	8b 5d 10             	mov    0x10(%ebp),%ebx
 4cd:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst, *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 4d0:	85 db                	test   %ebx,%ebx
 4d2:	7e 12                	jle    4e6 <memmove+0x26>
 4d4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    *dst++ = *src++;
 4d8:	0f b6 0c 16          	movzbl (%esi,%edx,1),%ecx
 4dc:	88 0c 10             	mov    %cl,(%eax,%edx,1)
 4df:	83 c2 01             	add    $0x1,%edx
{
  char *dst, *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 4e2:	39 da                	cmp    %ebx,%edx
 4e4:	75 f2                	jne    4d8 <memmove+0x18>
    *dst++ = *src++;
  return vdst;
}
 4e6:	5b                   	pop    %ebx
 4e7:	5e                   	pop    %esi
 4e8:	5d                   	pop    %ebp
 4e9:	c3                   	ret    

000004ea <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 4ea:	b8 01 00 00 00       	mov    $0x1,%eax
 4ef:	cd 40                	int    $0x40
 4f1:	c3                   	ret    

000004f2 <exit>:
SYSCALL(exit)
 4f2:	b8 02 00 00 00       	mov    $0x2,%eax
 4f7:	cd 40                	int    $0x40
 4f9:	c3                   	ret    

000004fa <wait>:
SYSCALL(wait)
 4fa:	b8 03 00 00 00       	mov    $0x3,%eax
 4ff:	cd 40                	int    $0x40
 501:	c3                   	ret    

00000502 <pipe>:
SYSCALL(pipe)
 502:	b8 04 00 00 00       	mov    $0x4,%eax
 507:	cd 40                	int    $0x40
 509:	c3                   	ret    

0000050a <read>:
SYSCALL(read)
 50a:	b8 05 00 00 00       	mov    $0x5,%eax
 50f:	cd 40                	int    $0x40
 511:	c3                   	ret    

00000512 <write>:
SYSCALL(write)
 512:	b8 10 00 00 00       	mov    $0x10,%eax
 517:	cd 40                	int    $0x40
 519:	c3                   	ret    

0000051a <close>:
SYSCALL(close)
 51a:	b8 15 00 00 00       	mov    $0x15,%eax
 51f:	cd 40                	int    $0x40
 521:	c3                   	ret    

00000522 <kill>:
SYSCALL(kill)
 522:	b8 06 00 00 00       	mov    $0x6,%eax
 527:	cd 40                	int    $0x40
 529:	c3                   	ret    

0000052a <exec>:
SYSCALL(exec)
 52a:	b8 07 00 00 00       	mov    $0x7,%eax
 52f:	cd 40                	int    $0x40
 531:	c3                   	ret    

00000532 <open>:
SYSCALL(open)
 532:	b8 0f 00 00 00       	mov    $0xf,%eax
 537:	cd 40                	int    $0x40
 539:	c3                   	ret    

0000053a <mknod>:
SYSCALL(mknod)
 53a:	b8 11 00 00 00       	mov    $0x11,%eax
 53f:	cd 40                	int    $0x40
 541:	c3                   	ret    

00000542 <unlink>:
SYSCALL(unlink)
 542:	b8 12 00 00 00       	mov    $0x12,%eax
 547:	cd 40                	int    $0x40
 549:	c3                   	ret    

0000054a <fstat>:
SYSCALL(fstat)
 54a:	b8 08 00 00 00       	mov    $0x8,%eax
 54f:	cd 40                	int    $0x40
 551:	c3                   	ret    

00000552 <link>:
SYSCALL(link)
 552:	b8 13 00 00 00       	mov    $0x13,%eax
 557:	cd 40                	int    $0x40
 559:	c3                   	ret    

0000055a <mkdir>:
SYSCALL(mkdir)
 55a:	b8 14 00 00 00       	mov    $0x14,%eax
 55f:	cd 40                	int    $0x40
 561:	c3                   	ret    

00000562 <chdir>:
SYSCALL(chdir)
 562:	b8 09 00 00 00       	mov    $0x9,%eax
 567:	cd 40                	int    $0x40
 569:	c3                   	ret    

0000056a <dup>:
SYSCALL(dup)
 56a:	b8 0a 00 00 00       	mov    $0xa,%eax
 56f:	cd 40                	int    $0x40
 571:	c3                   	ret    

00000572 <getpid>:
SYSCALL(getpid)
 572:	b8 0b 00 00 00       	mov    $0xb,%eax
 577:	cd 40                	int    $0x40
 579:	c3                   	ret    

0000057a <sbrk>:
SYSCALL(sbrk)
 57a:	b8 0c 00 00 00       	mov    $0xc,%eax
 57f:	cd 40                	int    $0x40
 581:	c3                   	ret    

00000582 <sleep>:
SYSCALL(sleep)
 582:	b8 0d 00 00 00       	mov    $0xd,%eax
 587:	cd 40                	int    $0x40
 589:	c3                   	ret    

0000058a <uptime>:
SYSCALL(uptime)
 58a:	b8 0e 00 00 00       	mov    $0xe,%eax
 58f:	cd 40                	int    $0x40
 591:	c3                   	ret    
 592:	66 90                	xchg   %ax,%ax
 594:	66 90                	xchg   %ax,%ax
 596:	66 90                	xchg   %ax,%ax
 598:	66 90                	xchg   %ax,%ax
 59a:	66 90                	xchg   %ax,%ax
 59c:	66 90                	xchg   %ax,%ax
 59e:	66 90                	xchg   %ax,%ax

000005a0 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 5a0:	55                   	push   %ebp
 5a1:	89 e5                	mov    %esp,%ebp
 5a3:	57                   	push   %edi
 5a4:	56                   	push   %esi
 5a5:	89 c6                	mov    %eax,%esi
 5a7:	53                   	push   %ebx
 5a8:	83 ec 4c             	sub    $0x4c,%esp
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
 5ab:	8b 5d 08             	mov    0x8(%ebp),%ebx
 5ae:	85 db                	test   %ebx,%ebx
 5b0:	74 09                	je     5bb <printint+0x1b>
 5b2:	89 d0                	mov    %edx,%eax
 5b4:	c1 e8 1f             	shr    $0x1f,%eax
 5b7:	84 c0                	test   %al,%al
 5b9:	75 75                	jne    630 <printint+0x90>
    neg = 1;
    x = -xx;
  } else {
    x = xx;
 5bb:	89 d0                	mov    %edx,%eax
  static char digits[] = "0123456789ABCDEF";
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
 5bd:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
 5c4:	89 75 c0             	mov    %esi,-0x40(%ebp)
    x = -xx;
  } else {
    x = xx;
  }

  i = 0;
 5c7:	31 ff                	xor    %edi,%edi
 5c9:	89 ce                	mov    %ecx,%esi
 5cb:	8d 5d d7             	lea    -0x29(%ebp),%ebx
 5ce:	eb 02                	jmp    5d2 <printint+0x32>
  do{
    buf[i++] = digits[x % base];
 5d0:	89 cf                	mov    %ecx,%edi
 5d2:	31 d2                	xor    %edx,%edx
 5d4:	f7 f6                	div    %esi
 5d6:	8d 4f 01             	lea    0x1(%edi),%ecx
 5d9:	0f b6 92 e7 09 00 00 	movzbl 0x9e7(%edx),%edx
  }while((x /= base) != 0);
 5e0:	85 c0                	test   %eax,%eax
    x = xx;
  }

  i = 0;
  do{
    buf[i++] = digits[x % base];
 5e2:	88 14 0b             	mov    %dl,(%ebx,%ecx,1)
  }while((x /= base) != 0);
 5e5:	75 e9                	jne    5d0 <printint+0x30>
  if(neg)
 5e7:	8b 55 c4             	mov    -0x3c(%ebp),%edx
    x = xx;
  }

  i = 0;
  do{
    buf[i++] = digits[x % base];
 5ea:	89 c8                	mov    %ecx,%eax
 5ec:	8b 75 c0             	mov    -0x40(%ebp),%esi
  }while((x /= base) != 0);
  if(neg)
 5ef:	85 d2                	test   %edx,%edx
 5f1:	74 08                	je     5fb <printint+0x5b>
    buf[i++] = '-';
 5f3:	8d 4f 02             	lea    0x2(%edi),%ecx
 5f6:	c6 44 05 d8 2d       	movb   $0x2d,-0x28(%ebp,%eax,1)

  while(--i >= 0)
 5fb:	8d 79 ff             	lea    -0x1(%ecx),%edi
 5fe:	66 90                	xchg   %ax,%ax
 600:	0f b6 44 3d d8       	movzbl -0x28(%ebp,%edi,1),%eax
 605:	83 ef 01             	sub    $0x1,%edi
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 608:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 60f:	00 
 610:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 614:	89 34 24             	mov    %esi,(%esp)
 617:	88 45 d7             	mov    %al,-0x29(%ebp)
 61a:	e8 f3 fe ff ff       	call   512 <write>
    buf[i++] = digits[x % base];
  }while((x /= base) != 0);
  if(neg)
    buf[i++] = '-';

  while(--i >= 0)
 61f:	83 ff ff             	cmp    $0xffffffff,%edi
 622:	75 dc                	jne    600 <printint+0x60>
    putc(fd, buf[i]);
}
 624:	83 c4 4c             	add    $0x4c,%esp
 627:	5b                   	pop    %ebx
 628:	5e                   	pop    %esi
 629:	5f                   	pop    %edi
 62a:	5d                   	pop    %ebp
 62b:	c3                   	ret    
 62c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
 630:	89 d0                	mov    %edx,%eax
 632:	f7 d8                	neg    %eax
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
 634:	c7 45 c4 01 00 00 00 	movl   $0x1,-0x3c(%ebp)
 63b:	eb 87                	jmp    5c4 <printint+0x24>
 63d:	8d 76 00             	lea    0x0(%esi),%esi

00000640 <printf>:
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
 640:	55                   	push   %ebp
 641:	89 e5                	mov    %esp,%ebp
 643:	57                   	push   %edi
  char *s;
  int c, i, state;
  uint *ap;

  state = 0;
 644:	31 ff                	xor    %edi,%edi
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
 646:	56                   	push   %esi
 647:	53                   	push   %ebx
 648:	83 ec 3c             	sub    $0x3c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 64b:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  char *s;
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
 64e:	8d 45 10             	lea    0x10(%ebp),%eax
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
 651:	8b 75 08             	mov    0x8(%ebp),%esi
  char *s;
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
 654:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  for(i = 0; fmt[i]; i++){
 657:	0f b6 13             	movzbl (%ebx),%edx
 65a:	83 c3 01             	add    $0x1,%ebx
 65d:	84 d2                	test   %dl,%dl
 65f:	75 39                	jne    69a <printf+0x5a>
 661:	e9 c2 00 00 00       	jmp    728 <printf+0xe8>
 666:	66 90                	xchg   %ax,%ax
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
 668:	83 fa 25             	cmp    $0x25,%edx
 66b:	0f 84 bf 00 00 00    	je     730 <printf+0xf0>
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 671:	8d 45 e2             	lea    -0x1e(%ebp),%eax
 674:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 67b:	00 
 67c:	89 44 24 04          	mov    %eax,0x4(%esp)
 680:	89 34 24             	mov    %esi,(%esp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
      } else {
        putc(fd, c);
 683:	88 55 e2             	mov    %dl,-0x1e(%ebp)
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 686:	e8 87 fe ff ff       	call   512 <write>
 68b:	83 c3 01             	add    $0x1,%ebx
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 68e:	0f b6 53 ff          	movzbl -0x1(%ebx),%edx
 692:	84 d2                	test   %dl,%dl
 694:	0f 84 8e 00 00 00    	je     728 <printf+0xe8>
    c = fmt[i] & 0xff;
    if(state == 0){
 69a:	85 ff                	test   %edi,%edi
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    c = fmt[i] & 0xff;
 69c:	0f be c2             	movsbl %dl,%eax
    if(state == 0){
 69f:	74 c7                	je     668 <printf+0x28>
      if(c == '%'){
        state = '%';
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
 6a1:	83 ff 25             	cmp    $0x25,%edi
 6a4:	75 e5                	jne    68b <printf+0x4b>
      if(c == 'd'){
 6a6:	83 fa 64             	cmp    $0x64,%edx
 6a9:	0f 84 31 01 00 00    	je     7e0 <printf+0x1a0>
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
 6af:	25 f7 00 00 00       	and    $0xf7,%eax
 6b4:	83 f8 70             	cmp    $0x70,%eax
 6b7:	0f 84 83 00 00 00    	je     740 <printf+0x100>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
 6bd:	83 fa 73             	cmp    $0x73,%edx
 6c0:	0f 84 a2 00 00 00    	je     768 <printf+0x128>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
 6c6:	83 fa 63             	cmp    $0x63,%edx
 6c9:	0f 84 35 01 00 00    	je     804 <printf+0x1c4>
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
 6cf:	83 fa 25             	cmp    $0x25,%edx
 6d2:	0f 84 e0 00 00 00    	je     7b8 <printf+0x178>
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 6d8:	8d 45 e6             	lea    -0x1a(%ebp),%eax
 6db:	83 c3 01             	add    $0x1,%ebx
 6de:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 6e5:	00 
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 6e6:	31 ff                	xor    %edi,%edi
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 6e8:	89 44 24 04          	mov    %eax,0x4(%esp)
 6ec:	89 34 24             	mov    %esi,(%esp)
 6ef:	89 55 d0             	mov    %edx,-0x30(%ebp)
 6f2:	c6 45 e6 25          	movb   $0x25,-0x1a(%ebp)
 6f6:	e8 17 fe ff ff       	call   512 <write>
      } else if(c == '%'){
        putc(fd, c);
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
 6fb:	8b 55 d0             	mov    -0x30(%ebp),%edx
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 6fe:	8d 45 e7             	lea    -0x19(%ebp),%eax
 701:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 708:	00 
 709:	89 44 24 04          	mov    %eax,0x4(%esp)
 70d:	89 34 24             	mov    %esi,(%esp)
      } else if(c == '%'){
        putc(fd, c);
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
 710:	88 55 e7             	mov    %dl,-0x19(%ebp)
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 713:	e8 fa fd ff ff       	call   512 <write>
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 718:	0f b6 53 ff          	movzbl -0x1(%ebx),%edx
 71c:	84 d2                	test   %dl,%dl
 71e:	0f 85 76 ff ff ff    	jne    69a <printf+0x5a>
 724:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 728:	83 c4 3c             	add    $0x3c,%esp
 72b:	5b                   	pop    %ebx
 72c:	5e                   	pop    %esi
 72d:	5f                   	pop    %edi
 72e:	5d                   	pop    %ebp
 72f:	c3                   	ret    
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
 730:	bf 25 00 00 00       	mov    $0x25,%edi
 735:	e9 51 ff ff ff       	jmp    68b <printf+0x4b>
 73a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
        printint(fd, *ap, 16, 0);
 740:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 743:	b9 10 00 00 00       	mov    $0x10,%ecx
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 748:	31 ff                	xor    %edi,%edi
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
        printint(fd, *ap, 16, 0);
 74a:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 751:	8b 10                	mov    (%eax),%edx
 753:	89 f0                	mov    %esi,%eax
 755:	e8 46 fe ff ff       	call   5a0 <printint>
        ap++;
 75a:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
 75e:	e9 28 ff ff ff       	jmp    68b <printf+0x4b>
 763:	90                   	nop
 764:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      } else if(c == 's'){
        s = (char*)*ap;
 768:	8b 45 d4             	mov    -0x2c(%ebp),%eax
        ap++;
 76b:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
        ap++;
      } else if(c == 'x' || c == 'p'){
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
        s = (char*)*ap;
 76f:	8b 38                	mov    (%eax),%edi
        ap++;
        if(s == 0)
          s = "(null)";
 771:	b8 e0 09 00 00       	mov    $0x9e0,%eax
 776:	85 ff                	test   %edi,%edi
 778:	0f 44 f8             	cmove  %eax,%edi
        while(*s != 0){
 77b:	0f b6 07             	movzbl (%edi),%eax
 77e:	84 c0                	test   %al,%al
 780:	74 2a                	je     7ac <printf+0x16c>
 782:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 788:	88 45 e3             	mov    %al,-0x1d(%ebp)
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 78b:	8d 45 e3             	lea    -0x1d(%ebp),%eax
        ap++;
        if(s == 0)
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
 78e:	83 c7 01             	add    $0x1,%edi
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 791:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 798:	00 
 799:	89 44 24 04          	mov    %eax,0x4(%esp)
 79d:	89 34 24             	mov    %esi,(%esp)
 7a0:	e8 6d fd ff ff       	call   512 <write>
      } else if(c == 's'){
        s = (char*)*ap;
        ap++;
        if(s == 0)
          s = "(null)";
        while(*s != 0){
 7a5:	0f b6 07             	movzbl (%edi),%eax
 7a8:	84 c0                	test   %al,%al
 7aa:	75 dc                	jne    788 <printf+0x148>
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 7ac:	31 ff                	xor    %edi,%edi
 7ae:	e9 d8 fe ff ff       	jmp    68b <printf+0x4b>
 7b3:	90                   	nop
 7b4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 7b8:	8d 45 e5             	lea    -0x1b(%ebp),%eax
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 7bb:	31 ff                	xor    %edi,%edi
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 7bd:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 7c4:	00 
 7c5:	89 44 24 04          	mov    %eax,0x4(%esp)
 7c9:	89 34 24             	mov    %esi,(%esp)
 7cc:	c6 45 e5 25          	movb   $0x25,-0x1b(%ebp)
 7d0:	e8 3d fd ff ff       	call   512 <write>
 7d5:	e9 b1 fe ff ff       	jmp    68b <printf+0x4b>
 7da:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
 7e0:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 7e3:	b9 0a 00 00 00       	mov    $0xa,%ecx
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 7e8:	66 31 ff             	xor    %di,%di
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
 7eb:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 7f2:	8b 10                	mov    (%eax),%edx
 7f4:	89 f0                	mov    %esi,%eax
 7f6:	e8 a5 fd ff ff       	call   5a0 <printint>
        ap++;
 7fb:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
 7ff:	e9 87 fe ff ff       	jmp    68b <printf+0x4b>
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
        putc(fd, *ap);
 804:	8b 45 d4             	mov    -0x2c(%ebp),%eax
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 807:	31 ff                	xor    %edi,%edi
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
        putc(fd, *ap);
 809:	8b 00                	mov    (%eax),%eax
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 80b:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 812:	00 
 813:	89 34 24             	mov    %esi,(%esp)
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
        putc(fd, *ap);
 816:	88 45 e4             	mov    %al,-0x1c(%ebp)
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 819:	8d 45 e4             	lea    -0x1c(%ebp),%eax
 81c:	89 44 24 04          	mov    %eax,0x4(%esp)
 820:	e8 ed fc ff ff       	call   512 <write>
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
        putc(fd, *ap);
        ap++;
 825:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
 829:	e9 5d fe ff ff       	jmp    68b <printf+0x4b>
 82e:	66 90                	xchg   %ax,%ax

00000830 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 830:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 831:	a1 ec 0c 00 00       	mov    0xcec,%eax
static Header base;
static Header *freep;

void
free(void *ap)
{
 836:	89 e5                	mov    %esp,%ebp
 838:	57                   	push   %edi
 839:	56                   	push   %esi
 83a:	53                   	push   %ebx
 83b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 83e:	8b 08                	mov    (%eax),%ecx
void
free(void *ap)
{
  Header *bp, *p;

  bp = (Header*)ap - 1;
 840:	8d 53 f8             	lea    -0x8(%ebx),%edx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 843:	39 d0                	cmp    %edx,%eax
 845:	72 11                	jb     858 <free+0x28>
 847:	90                   	nop
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 848:	39 c8                	cmp    %ecx,%eax
 84a:	72 04                	jb     850 <free+0x20>
 84c:	39 ca                	cmp    %ecx,%edx
 84e:	72 10                	jb     860 <free+0x30>
 850:	89 c8                	mov    %ecx,%eax
free(void *ap)
{
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 852:	39 d0                	cmp    %edx,%eax
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 854:	8b 08                	mov    (%eax),%ecx
free(void *ap)
{
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 856:	73 f0                	jae    848 <free+0x18>
 858:	39 ca                	cmp    %ecx,%edx
 85a:	72 04                	jb     860 <free+0x30>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 85c:	39 c8                	cmp    %ecx,%eax
 85e:	72 f0                	jb     850 <free+0x20>
      break;
  if(bp + bp->s.size == p->s.ptr){
 860:	8b 73 fc             	mov    -0x4(%ebx),%esi
 863:	8d 3c f2             	lea    (%edx,%esi,8),%edi
 866:	39 cf                	cmp    %ecx,%edi
 868:	74 1e                	je     888 <free+0x58>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
 86a:	89 4b f8             	mov    %ecx,-0x8(%ebx)
  if(p + p->s.size == bp){
 86d:	8b 48 04             	mov    0x4(%eax),%ecx
 870:	8d 34 c8             	lea    (%eax,%ecx,8),%esi
 873:	39 f2                	cmp    %esi,%edx
 875:	74 28                	je     89f <free+0x6f>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
 877:	89 10                	mov    %edx,(%eax)
  freep = p;
 879:	a3 ec 0c 00 00       	mov    %eax,0xcec
}
 87e:	5b                   	pop    %ebx
 87f:	5e                   	pop    %esi
 880:	5f                   	pop    %edi
 881:	5d                   	pop    %ebp
 882:	c3                   	ret    
 883:	90                   	nop
 884:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
      break;
  if(bp + bp->s.size == p->s.ptr){
    bp->s.size += p->s.ptr->s.size;
 888:	03 71 04             	add    0x4(%ecx),%esi
 88b:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 88e:	8b 08                	mov    (%eax),%ecx
 890:	8b 09                	mov    (%ecx),%ecx
 892:	89 4b f8             	mov    %ecx,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 895:	8b 48 04             	mov    0x4(%eax),%ecx
 898:	8d 34 c8             	lea    (%eax,%ecx,8),%esi
 89b:	39 f2                	cmp    %esi,%edx
 89d:	75 d8                	jne    877 <free+0x47>
    p->s.size += bp->s.size;
 89f:	03 4b fc             	add    -0x4(%ebx),%ecx
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
  freep = p;
 8a2:	a3 ec 0c 00 00       	mov    %eax,0xcec
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
    p->s.size += bp->s.size;
 8a7:	89 48 04             	mov    %ecx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
 8aa:	8b 53 f8             	mov    -0x8(%ebx),%edx
 8ad:	89 10                	mov    %edx,(%eax)
  } else
    p->s.ptr = bp;
  freep = p;
}
 8af:	5b                   	pop    %ebx
 8b0:	5e                   	pop    %esi
 8b1:	5f                   	pop    %edi
 8b2:	5d                   	pop    %ebp
 8b3:	c3                   	ret    
 8b4:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 8ba:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

000008c0 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 8c0:	55                   	push   %ebp
 8c1:	89 e5                	mov    %esp,%ebp
 8c3:	57                   	push   %edi
 8c4:	56                   	push   %esi
 8c5:	53                   	push   %ebx
 8c6:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 8c9:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 8cc:	8b 1d ec 0c 00 00    	mov    0xcec,%ebx
malloc(uint nbytes)
{
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 8d2:	8d 48 07             	lea    0x7(%eax),%ecx
 8d5:	c1 e9 03             	shr    $0x3,%ecx
  if((prevp = freep) == 0){
 8d8:	85 db                	test   %ebx,%ebx
malloc(uint nbytes)
{
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 8da:	8d 71 01             	lea    0x1(%ecx),%esi
  if((prevp = freep) == 0){
 8dd:	0f 84 9b 00 00 00    	je     97e <malloc+0xbe>
 8e3:	8b 13                	mov    (%ebx),%edx
 8e5:	8b 7a 04             	mov    0x4(%edx),%edi
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
 8e8:	39 fe                	cmp    %edi,%esi
 8ea:	76 64                	jbe    950 <malloc+0x90>
 8ec:	8d 04 f5 00 00 00 00 	lea    0x0(,%esi,8),%eax
morecore(uint nu)
{
  char *p;
  Header *hp;

  if(nu < 4096)
 8f3:	bb 00 80 00 00       	mov    $0x8000,%ebx
 8f8:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 8fb:	eb 0e                	jmp    90b <malloc+0x4b>
 8fd:	8d 76 00             	lea    0x0(%esi),%esi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
  if((prevp = freep) == 0){
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 900:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 902:	8b 78 04             	mov    0x4(%eax),%edi
 905:	39 fe                	cmp    %edi,%esi
 907:	76 4f                	jbe    958 <malloc+0x98>
 909:	89 c2                	mov    %eax,%edx
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 90b:	3b 15 ec 0c 00 00    	cmp    0xcec,%edx
 911:	75 ed                	jne    900 <malloc+0x40>
morecore(uint nu)
{
  char *p;
  Header *hp;

  if(nu < 4096)
 913:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 916:	81 fe 00 10 00 00    	cmp    $0x1000,%esi
 91c:	bf 00 10 00 00       	mov    $0x1000,%edi
 921:	0f 43 fe             	cmovae %esi,%edi
 924:	0f 42 c3             	cmovb  %ebx,%eax
    nu = 4096;
  p = sbrk(nu * sizeof(Header));
 927:	89 04 24             	mov    %eax,(%esp)
 92a:	e8 4b fc ff ff       	call   57a <sbrk>
  if(p == (char*)-1)
 92f:	83 f8 ff             	cmp    $0xffffffff,%eax
 932:	74 18                	je     94c <malloc+0x8c>
    return 0;
  hp = (Header*)p;
  hp->s.size = nu;
 934:	89 78 04             	mov    %edi,0x4(%eax)
  free((void*)(hp + 1));
 937:	83 c0 08             	add    $0x8,%eax
 93a:	89 04 24             	mov    %eax,(%esp)
 93d:	e8 ee fe ff ff       	call   830 <free>
  return freep;
 942:	8b 15 ec 0c 00 00    	mov    0xcec,%edx
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
      if((p = morecore(nunits)) == 0)
 948:	85 d2                	test   %edx,%edx
 94a:	75 b4                	jne    900 <malloc+0x40>
        return 0;
 94c:	31 c0                	xor    %eax,%eax
 94e:	eb 20                	jmp    970 <malloc+0xb0>
  if((prevp = freep) == 0){
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
 950:	89 d0                	mov    %edx,%eax
 952:	89 da                	mov    %ebx,%edx
 954:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      if(p->s.size == nunits)
 958:	39 fe                	cmp    %edi,%esi
 95a:	74 1c                	je     978 <malloc+0xb8>
        prevp->s.ptr = p->s.ptr;
      else {
        p->s.size -= nunits;
 95c:	29 f7                	sub    %esi,%edi
 95e:	89 78 04             	mov    %edi,0x4(%eax)
        p += p->s.size;
 961:	8d 04 f8             	lea    (%eax,%edi,8),%eax
        p->s.size = nunits;
 964:	89 70 04             	mov    %esi,0x4(%eax)
      }
      freep = prevp;
 967:	89 15 ec 0c 00 00    	mov    %edx,0xcec
      return (void*)(p + 1);
 96d:	83 c0 08             	add    $0x8,%eax
    }
    if(p == freep)
      if((p = morecore(nunits)) == 0)
        return 0;
  }
}
 970:	83 c4 1c             	add    $0x1c,%esp
 973:	5b                   	pop    %ebx
 974:	5e                   	pop    %esi
 975:	5f                   	pop    %edi
 976:	5d                   	pop    %ebp
 977:	c3                   	ret    
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
      if(p->s.size == nunits)
        prevp->s.ptr = p->s.ptr;
 978:	8b 08                	mov    (%eax),%ecx
 97a:	89 0a                	mov    %ecx,(%edx)
 97c:	eb e9                	jmp    967 <malloc+0xa7>
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
  if((prevp = freep) == 0){
    base.s.ptr = freep = prevp = &base;
 97e:	c7 05 ec 0c 00 00 f0 	movl   $0xcf0,0xcec
 985:	0c 00 00 
    base.s.size = 0;
 988:	ba f0 0c 00 00       	mov    $0xcf0,%edx
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
  if((prevp = freep) == 0){
    base.s.ptr = freep = prevp = &base;
 98d:	c7 05 f0 0c 00 00 f0 	movl   $0xcf0,0xcf0
 994:	0c 00 00 
    base.s.size = 0;
 997:	c7 05 f4 0c 00 00 00 	movl   $0x0,0xcf4
 99e:	00 00 00 
 9a1:	e9 46 ff ff ff       	jmp    8ec <malloc+0x2c>
