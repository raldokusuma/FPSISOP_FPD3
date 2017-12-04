
_mv:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
    }
    close(pwd);
    close(fd);
}

int main (int argc, char **argv) {
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	56                   	push   %esi
   4:	53                   	push   %ebx
   5:	83 e4 f0             	and    $0xfffffff0,%esp
   8:	83 ec 10             	sub    $0x10,%esp
   b:	8b 75 0c             	mov    0xc(%ebp),%esi
    int all = 0;
    int i;

    if (argv[1][0] == '-' && argv[1][1] == 'h'){
   e:	8b 46 04             	mov    0x4(%esi),%eax
  11:	80 38 2d             	cmpb   $0x2d,(%eax)
  14:	74 4e                	je     64 <main+0x64>
    }
    close(pwd);
    close(fd);
}

int main (int argc, char **argv) {
  16:	31 db                	xor    %ebx,%ebx
  18:	eb 12                	jmp    2c <main+0x2c>
  1a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        printf(1,"mv /[Folder]/* /[Folder]/ to move all files\n");
        exit();
    }

    for (i=0;i<strlen(argv[1])-1;i++){
        if (argv[1][i] == '*'){
  20:	8b 46 04             	mov    0x4(%esi),%eax
  23:	80 3c 18 2a          	cmpb   $0x2a,(%eax,%ebx,1)
  27:	74 6e                	je     97 <main+0x97>
        printf(1,"mv [File] [File]\n");
        printf(1,"mv /[Folder]/* /[Folder]/ to move all files\n");
        exit();
    }

    for (i=0;i<strlen(argv[1])-1;i++){
  29:	83 c3 01             	add    $0x1,%ebx
  2c:	89 04 24             	mov    %eax,(%esp)
  2f:	e8 5c 06 00 00       	call   690 <strlen>
  34:	83 e8 01             	sub    $0x1,%eax
  37:	39 c3                	cmp    %eax,%ebx
  39:	72 e5                	jb     20 <main+0x20>
            printf(1,"Misplaced *\n");
            exit();
        }
    }

    if (argv[1][strlen(argv[1])-1] == '*'){
  3b:	8b 5e 04             	mov    0x4(%esi),%ebx
  3e:	89 1c 24             	mov    %ebx,(%esp)
  41:	e8 4a 06 00 00       	call   690 <strlen>
  46:	80 7c 03 ff 2a       	cmpb   $0x2a,-0x1(%ebx,%eax,1)
  4b:	74 63                	je     b0 <main+0xb0>
        all = 1;
        printf(1,"* Found\n");
    }

	if (all) mv_all(argv[1],argv[2]);
	else mv(argv[1],argv[2]);
  4d:	8b 46 08             	mov    0x8(%esi),%eax
  50:	89 44 24 04          	mov    %eax,0x4(%esp)
  54:	8b 46 04             	mov    0x4(%esi),%eax
  57:	89 04 24             	mov    %eax,(%esp)
  5a:	e8 11 01 00 00       	call   170 <mv>

	exit();
  5f:	e8 ce 07 00 00       	call   832 <exit>

int main (int argc, char **argv) {
    int all = 0;
    int i;

    if (argv[1][0] == '-' && argv[1][1] == 'h'){
  64:	80 78 01 68          	cmpb   $0x68,0x1(%eax)
  68:	75 ac                	jne    16 <main+0x16>
        printf(1,"mv [File] [File]\n");
  6a:	c7 44 24 04 9e 0d 00 	movl   $0xd9e,0x4(%esp)
  71:	00 
  72:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
  79:	e8 02 09 00 00       	call   980 <printf>
        printf(1,"mv /[Folder]/* /[Folder]/ to move all files\n");
  7e:	c7 44 24 04 08 0d 00 	movl   $0xd08,0x4(%esp)
  85:	00 
  86:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
  8d:	e8 ee 08 00 00       	call   980 <printf>
        exit();
  92:	e8 9b 07 00 00       	call   832 <exit>
    }

    for (i=0;i<strlen(argv[1])-1;i++){
        if (argv[1][i] == '*'){
            printf(1,"Misplaced *\n");
  97:	c7 44 24 04 b0 0d 00 	movl   $0xdb0,0x4(%esp)
  9e:	00 
  9f:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
  a6:	e8 d5 08 00 00       	call   980 <printf>
            exit();
  ab:	e8 82 07 00 00       	call   832 <exit>
        }
    }

    if (argv[1][strlen(argv[1])-1] == '*'){
        all = 1;
        printf(1,"* Found\n");
  b0:	c7 44 24 04 bd 0d 00 	movl   $0xdbd,0x4(%esp)
  b7:	00 
  b8:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
  bf:	e8 bc 08 00 00       	call   980 <printf>
    }

	if (all) mv_all(argv[1],argv[2]);
  c4:	8b 46 08             	mov    0x8(%esi),%eax
  c7:	89 44 24 04          	mov    %eax,0x4(%esp)
  cb:	8b 46 04             	mov    0x4(%esi),%eax
  ce:	89 04 24             	mov    %eax,(%esp)
  d1:	e8 8a 01 00 00       	call   260 <mv_all>
  d6:	eb 87                	jmp    5f <main+0x5f>
  d8:	66 90                	xchg   %ax,%ax
  da:	66 90                	xchg   %ax,%ax
  dc:	66 90                	xchg   %ax,%ax
  de:	66 90                	xchg   %ax,%ax

000000e0 <strcat>:
#include "stat.h"
#include "fs.h"

char *
strcat(char *dest, const char *src)
{
  e0:	55                   	push   %ebp
  e1:	89 e5                	mov    %esp,%ebp
  e3:	8b 45 08             	mov    0x8(%ebp),%eax
  e6:	57                   	push   %edi
  e7:	56                   	push   %esi
  e8:	8b 75 0c             	mov    0xc(%ebp),%esi
  eb:	53                   	push   %ebx
    int i,j;
    for (i = 0; dest[i] != '\0'; i++)
  ec:	80 38 00             	cmpb   $0x0,(%eax)
  ef:	74 38                	je     129 <strcat+0x49>
  f1:	31 c9                	xor    %ecx,%ecx
  f3:	90                   	nop
  f4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  f8:	83 c1 01             	add    $0x1,%ecx
  fb:	80 3c 08 00          	cmpb   $0x0,(%eax,%ecx,1)
  ff:	75 f7                	jne    f8 <strcat+0x18>
 101:	89 ca                	mov    %ecx,%edx
        ;
    for (j = 0; src[j] != '\0'; j++)
 103:	0f b6 1e             	movzbl (%esi),%ebx
 106:	84 db                	test   %bl,%bl
 108:	74 16                	je     120 <strcat+0x40>
 10a:	31 d2                	xor    %edx,%edx
 10c:	8d 3c 08             	lea    (%eax,%ecx,1),%edi
 10f:	90                   	nop
        dest[i+j] = src[j];
 110:	88 1c 17             	mov    %bl,(%edi,%edx,1)
strcat(char *dest, const char *src)
{
    int i,j;
    for (i = 0; dest[i] != '\0'; i++)
        ;
    for (j = 0; src[j] != '\0'; j++)
 113:	83 c2 01             	add    $0x1,%edx
 116:	0f b6 1c 16          	movzbl (%esi,%edx,1),%ebx
 11a:	84 db                	test   %bl,%bl
 11c:	75 f2                	jne    110 <strcat+0x30>
 11e:	01 ca                	add    %ecx,%edx
        dest[i+j] = src[j];
    dest[i+j] = '\0';
 120:	c6 04 10 00          	movb   $0x0,(%eax,%edx,1)
    return dest;
}
 124:	5b                   	pop    %ebx
 125:	5e                   	pop    %esi
 126:	5f                   	pop    %edi
 127:	5d                   	pop    %ebp
 128:	c3                   	ret    

char *
strcat(char *dest, const char *src)
{
    int i,j;
    for (i = 0; dest[i] != '\0'; i++)
 129:	31 d2                	xor    %edx,%edx
 12b:	31 c9                	xor    %ecx,%ecx
 12d:	eb d4                	jmp    103 <strcat+0x23>
 12f:	90                   	nop

00000130 <fmtname>:
}

// list every file
char*
fmtname(char *path)
{
 130:	55                   	push   %ebp
 131:	89 e5                	mov    %esp,%ebp
 133:	53                   	push   %ebx
 134:	83 ec 14             	sub    $0x14,%esp
 137:	8b 5d 08             	mov    0x8(%ebp),%ebx
    //static char buf[DIRSIZ+1];
    char *p;

    // Find first character after last slash.
    for(p=path+strlen(path); p >= path && *p != '/'; p--);
 13a:	89 1c 24             	mov    %ebx,(%esp)
 13d:	e8 4e 05 00 00       	call   690 <strlen>
 142:	01 d8                	add    %ebx,%eax
 144:	73 0c                	jae    152 <fmtname+0x22>
 146:	eb 0f                	jmp    157 <fmtname+0x27>
 148:	83 e8 01             	sub    $0x1,%eax
 14b:	39 c3                	cmp    %eax,%ebx
 14d:	8d 76 00             	lea    0x0(%esi),%esi
 150:	77 05                	ja     157 <fmtname+0x27>
 152:	80 38 2f             	cmpb   $0x2f,(%eax)
 155:	75 f1                	jne    148 <fmtname+0x18>
    p++;
 157:	8d 58 01             	lea    0x1(%eax),%ebx

    // Return blank-padded name.
    if(strlen(p) >= DIRSIZ) return p;
 15a:	89 1c 24             	mov    %ebx,(%esp)
 15d:	e8 2e 05 00 00       	call   690 <strlen>

    //memmove(buf, p, strlen(p));
    //memset(buf+strlen(p), ' ', DIRSIZ-strlen(p));
    return p;
}
 162:	83 c4 14             	add    $0x14,%esp
 165:	89 d8                	mov    %ebx,%eax
 167:	5b                   	pop    %ebx
 168:	5d                   	pop    %ebp
 169:	c3                   	ret    
 16a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000170 <mv>:

void mv(char *source, char *destination){
 170:	55                   	push   %ebp
 171:	89 e5                	mov    %esp,%ebp
 173:	57                   	push   %edi
 174:	56                   	push   %esi
 175:	53                   	push   %ebx
 176:	81 ec 1c 04 00 00    	sub    $0x41c,%esp
    int fsource;
    int fdest;

    if ((fsource = open(source,O_RDONLY)) < 0){
 17c:	8b 45 08             	mov    0x8(%ebp),%eax
 17f:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 186:	00 
 187:	89 04 24             	mov    %eax,(%esp)
 18a:	e8 e3 06 00 00       	call   872 <open>
 18f:	85 c0                	test   %eax,%eax
 191:	89 c6                	mov    %eax,%esi
 193:	78 73                	js     208 <mv+0x98>
        printf(1,"Source File %s Does Not Exist\n", source);
        return;
    }

    fdest = open(destination, O_CREATE | O_RDWR);
 195:	8b 45 0c             	mov    0xc(%ebp),%eax
 198:	8d 9d e8 fb ff ff    	lea    -0x418(%ebp),%ebx
 19e:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
 1a5:	00 
 1a6:	89 04 24             	mov    %eax,(%esp)
 1a9:	e8 c4 06 00 00       	call   872 <open>
 1ae:	89 c7                	mov    %eax,%edi
    int n;
    char temp[1024];
    while ((n = read(fsource,temp,sizeof(temp))) > 0)
 1b0:	eb 16                	jmp    1c8 <mv+0x58>
 1b2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        write(fdest,temp,n);
 1b8:	89 44 24 08          	mov    %eax,0x8(%esp)
 1bc:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 1c0:	89 3c 24             	mov    %edi,(%esp)
 1c3:	e8 8a 06 00 00       	call   852 <write>
    }

    fdest = open(destination, O_CREATE | O_RDWR);
    int n;
    char temp[1024];
    while ((n = read(fsource,temp,sizeof(temp))) > 0)
 1c8:	c7 44 24 08 00 04 00 	movl   $0x400,0x8(%esp)
 1cf:	00 
 1d0:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 1d4:	89 34 24             	mov    %esi,(%esp)
 1d7:	e8 6e 06 00 00       	call   84a <read>
 1dc:	85 c0                	test   %eax,%eax
 1de:	7f d8                	jg     1b8 <mv+0x48>
        write(fdest,temp,n);
    close(fdest);
 1e0:	89 3c 24             	mov    %edi,(%esp)
 1e3:	e8 72 06 00 00       	call   85a <close>

    if (unlink(source) < 0)printf(1, "rm: %s failed to delete\n", source);
 1e8:	8b 45 08             	mov    0x8(%ebp),%eax
 1eb:	89 04 24             	mov    %eax,(%esp)
 1ee:	e8 8f 06 00 00       	call   882 <unlink>
 1f3:	85 c0                	test   %eax,%eax
 1f5:	78 39                	js     230 <mv+0xc0>

    return;
}
 1f7:	81 c4 1c 04 00 00    	add    $0x41c,%esp
 1fd:	5b                   	pop    %ebx
 1fe:	5e                   	pop    %esi
 1ff:	5f                   	pop    %edi
 200:	5d                   	pop    %ebp
 201:	c3                   	ret    
 202:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
void mv(char *source, char *destination){
    int fsource;
    int fdest;

    if ((fsource = open(source,O_RDONLY)) < 0){
        printf(1,"Source File %s Does Not Exist\n", source);
 208:	8b 45 08             	mov    0x8(%ebp),%eax
 20b:	c7 44 24 04 e8 0c 00 	movl   $0xce8,0x4(%esp)
 212:	00 
 213:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 21a:	89 44 24 08          	mov    %eax,0x8(%esp)
 21e:	e8 5d 07 00 00       	call   980 <printf>
    close(fdest);

    if (unlink(source) < 0)printf(1, "rm: %s failed to delete\n", source);

    return;
}
 223:	81 c4 1c 04 00 00    	add    $0x41c,%esp
 229:	5b                   	pop    %ebx
 22a:	5e                   	pop    %esi
 22b:	5f                   	pop    %edi
 22c:	5d                   	pop    %ebp
 22d:	c3                   	ret    
 22e:	66 90                	xchg   %ax,%ax
    char temp[1024];
    while ((n = read(fsource,temp,sizeof(temp))) > 0)
        write(fdest,temp,n);
    close(fdest);

    if (unlink(source) < 0)printf(1, "rm: %s failed to delete\n", source);
 230:	8b 45 08             	mov    0x8(%ebp),%eax
 233:	c7 44 24 04 38 0d 00 	movl   $0xd38,0x4(%esp)
 23a:	00 
 23b:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 242:	89 44 24 08          	mov    %eax,0x8(%esp)
 246:	e8 35 07 00 00       	call   980 <printf>

    return;
}
 24b:	81 c4 1c 04 00 00    	add    $0x41c,%esp
 251:	5b                   	pop    %ebx
 252:	5e                   	pop    %esi
 253:	5f                   	pop    %edi
 254:	5d                   	pop    %ebp
 255:	c3                   	ret    
 256:	8d 76 00             	lea    0x0(%esi),%esi
 259:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000260 <mv_all>:

void mv_all(char *path,char *destination)
{
 260:	55                   	push   %ebp
 261:	89 e5                	mov    %esp,%ebp
 263:	57                   	push   %edi
 264:	56                   	push   %esi
 265:	53                   	push   %ebx
 266:	81 ec 6c 06 00 00    	sub    $0x66c,%esp
    struct stat st;
    //*/

    int pwd;
    char *tmp = {""};
    strcat(tmp,path);
 26c:	8b 45 08             	mov    0x8(%ebp),%eax
 26f:	c7 04 24 bc 0d 00 00 	movl   $0xdbc,(%esp)
    tmp[strlen(tmp)-1]='\0';
    strcat(tmp,".pwd");
    pwd = open(tmp,O_RDONLY);

    char dummy[1024];
    read(pwd,dummy,sizeof(dummy));
 276:	8d 9d e8 fb ff ff    	lea    -0x418(%ebp),%ebx
    struct stat st;
    //*/

    int pwd;
    char *tmp = {""};
    strcat(tmp,path);
 27c:	89 44 24 04          	mov    %eax,0x4(%esp)
 280:	e8 5b fe ff ff       	call   e0 <strcat>
    tmp[strlen(tmp)-1]='\0';
 285:	c7 04 24 bc 0d 00 00 	movl   $0xdbc,(%esp)
 28c:	e8 ff 03 00 00       	call   690 <strlen>
    strcat(tmp,".pwd");
 291:	c7 44 24 04 51 0d 00 	movl   $0xd51,0x4(%esp)
 298:	00 
 299:	c7 04 24 bc 0d 00 00 	movl   $0xdbc,(%esp)
    //*/

    int pwd;
    char *tmp = {""};
    strcat(tmp,path);
    tmp[strlen(tmp)-1]='\0';
 2a0:	c6 80 bb 0d 00 00 00 	movb   $0x0,0xdbb(%eax)
    strcat(tmp,".pwd");
 2a7:	e8 34 fe ff ff       	call   e0 <strcat>
    pwd = open(tmp,O_RDONLY);
 2ac:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 2b3:	00 
 2b4:	c7 04 24 bc 0d 00 00 	movl   $0xdbc,(%esp)
 2bb:	e8 b2 05 00 00       	call   872 <open>

    char dummy[1024];
    read(pwd,dummy,sizeof(dummy));
 2c0:	c7 44 24 08 00 04 00 	movl   $0x400,0x8(%esp)
 2c7:	00 
 2c8:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 2cc:	89 04 24             	mov    %eax,(%esp)
    int pwd;
    char *tmp = {""};
    strcat(tmp,path);
    tmp[strlen(tmp)-1]='\0';
    strcat(tmp,".pwd");
    pwd = open(tmp,O_RDONLY);
 2cf:	89 c6                	mov    %eax,%esi

    char dummy[1024];
    read(pwd,dummy,sizeof(dummy));
 2d1:	e8 74 05 00 00       	call   84a <read>
    dummy[strlen(dummy)] = '.';
 2d6:	89 1c 24             	mov    %ebx,(%esp)
 2d9:	e8 b2 03 00 00       	call   690 <strlen>
    dummy[strlen(dummy)+1] = '\0';
 2de:	89 1c 24             	mov    %ebx,(%esp)
    strcat(tmp,".pwd");
    pwd = open(tmp,O_RDONLY);

    char dummy[1024];
    read(pwd,dummy,sizeof(dummy));
    dummy[strlen(dummy)] = '.';
 2e1:	c6 84 05 e8 fb ff ff 	movb   $0x2e,-0x418(%ebp,%eax,1)
 2e8:	2e 
    dummy[strlen(dummy)+1] = '\0';
 2e9:	e8 a2 03 00 00       	call   690 <strlen>
    //printf(1,"alamat : %s\n",dummy);

    if((fd = open(dummy, 0)) < 0){
 2ee:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 2f5:	00 
 2f6:	89 1c 24             	mov    %ebx,(%esp)
    pwd = open(tmp,O_RDONLY);

    char dummy[1024];
    read(pwd,dummy,sizeof(dummy));
    dummy[strlen(dummy)] = '.';
    dummy[strlen(dummy)+1] = '\0';
 2f9:	c6 84 05 e9 fb ff ff 	movb   $0x0,-0x417(%ebp,%eax,1)
 300:	00 
    //printf(1,"alamat : %s\n",dummy);

    if((fd = open(dummy, 0)) < 0){
 301:	e8 6c 05 00 00       	call   872 <open>
 306:	85 c0                	test   %eax,%eax
 308:	89 c7                	mov    %eax,%edi
 30a:	0f 88 70 02 00 00    	js     580 <mv_all+0x320>
        printf(2, "ls: cannot open %s\n", dummy);
        return;
    }

    if(fstat(fd, &st) < 0){
 310:	8d 85 d4 f9 ff ff    	lea    -0x62c(%ebp),%eax
 316:	89 44 24 04          	mov    %eax,0x4(%esp)
 31a:	89 3c 24             	mov    %edi,(%esp)
 31d:	e8 68 05 00 00       	call   88a <fstat>
 322:	85 c0                	test   %eax,%eax
 324:	0f 88 9e 02 00 00    	js     5c8 <mv_all+0x368>
        printf(2, "ls: cannot stat %s\n", dummy);
        close(fd);
        return;
    }

    switch(st.type){
 32a:	0f b7 85 d4 f9 ff ff 	movzwl -0x62c(%ebp),%eax
 331:	66 83 f8 01          	cmp    $0x1,%ax
 335:	74 79                	je     3b0 <mv_all+0x150>
 337:	66 83 f8 02          	cmp    $0x2,%ax
 33b:	75 54                	jne    391 <mv_all+0x131>
        case T_FILE:
            printf(1, "%s %d %d %d\n", fmtname(dummy), st.type, st.ino, st.size);
 33d:	8b 8d e4 f9 ff ff    	mov    -0x61c(%ebp),%ecx
 343:	8b 95 dc f9 ff ff    	mov    -0x624(%ebp),%edx
 349:	89 1c 24             	mov    %ebx,(%esp)
 34c:	89 8d b0 f9 ff ff    	mov    %ecx,-0x650(%ebp)
 352:	89 95 b4 f9 ff ff    	mov    %edx,-0x64c(%ebp)
 358:	e8 d3 fd ff ff       	call   130 <fmtname>
 35d:	8b 8d b0 f9 ff ff    	mov    -0x650(%ebp),%ecx
 363:	8b 95 b4 f9 ff ff    	mov    -0x64c(%ebp),%edx
 369:	c7 44 24 0c 02 00 00 	movl   $0x2,0xc(%esp)
 370:	00 
 371:	c7 44 24 04 7e 0d 00 	movl   $0xd7e,0x4(%esp)
 378:	00 
 379:	89 4c 24 14          	mov    %ecx,0x14(%esp)
 37d:	89 54 24 10          	mov    %edx,0x10(%esp)
 381:	89 44 24 08          	mov    %eax,0x8(%esp)
 385:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 38c:	e8 ef 05 00 00       	call   980 <printf>
                    mv(tmp1,tmp);
                }
            }
            break;
    }
    close(pwd);
 391:	89 34 24             	mov    %esi,(%esp)
 394:	e8 c1 04 00 00       	call   85a <close>
    close(fd);
 399:	89 3c 24             	mov    %edi,(%esp)
 39c:	e8 b9 04 00 00       	call   85a <close>
}
 3a1:	81 c4 6c 06 00 00    	add    $0x66c,%esp
 3a7:	5b                   	pop    %ebx
 3a8:	5e                   	pop    %esi
 3a9:	5f                   	pop    %edi
 3aa:	5d                   	pop    %ebp
 3ab:	c3                   	ret    
 3ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        case T_FILE:
            printf(1, "%s %d %d %d\n", fmtname(dummy), st.type, st.ino, st.size);
            break;

        case T_DIR:
            if(strlen(dummy) + 1 + DIRSIZ + 1 > sizeof buf){
 3b0:	89 1c 24             	mov    %ebx,(%esp)
 3b3:	e8 d8 02 00 00       	call   690 <strlen>
 3b8:	83 c0 10             	add    $0x10,%eax
 3bb:	3d 00 02 00 00       	cmp    $0x200,%eax
 3c0:	0f 87 e2 01 00 00    	ja     5a8 <mv_all+0x348>
                printf(1, "ls: path too long\n");
                break;
            }
            strcpy(buf, dummy);
 3c6:	8d 85 e8 f9 ff ff    	lea    -0x618(%ebp),%eax
 3cc:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 3d0:	89 04 24             	mov    %eax,(%esp)
 3d3:	e8 38 02 00 00       	call   610 <strcpy>
            p = buf+strlen(buf);
 3d8:	8d 85 e8 f9 ff ff    	lea    -0x618(%ebp),%eax
 3de:	89 04 24             	mov    %eax,(%esp)
 3e1:	e8 aa 02 00 00       	call   690 <strlen>
 3e6:	8d 8d e8 f9 ff ff    	lea    -0x618(%ebp),%ecx
 3ec:	01 c8                	add    %ecx,%eax
            *p++ = '/';
 3ee:	8d 48 01             	lea    0x1(%eax),%ecx
            if(strlen(dummy) + 1 + DIRSIZ + 1 > sizeof buf){
                printf(1, "ls: path too long\n");
                break;
            }
            strcpy(buf, dummy);
            p = buf+strlen(buf);
 3f1:	89 85 ac f9 ff ff    	mov    %eax,-0x654(%ebp)
            *p++ = '/';
 3f7:	89 8d a8 f9 ff ff    	mov    %ecx,-0x658(%ebp)
 3fd:	c6 00 2f             	movb   $0x2f,(%eax)

            while(read(fd, &de, sizeof(de)) == sizeof(de)){
 400:	8d 85 c4 f9 ff ff    	lea    -0x63c(%ebp),%eax
 406:	c7 44 24 08 10 00 00 	movl   $0x10,0x8(%esp)
 40d:	00 
 40e:	89 44 24 04          	mov    %eax,0x4(%esp)
 412:	89 3c 24             	mov    %edi,(%esp)
 415:	e8 30 04 00 00       	call   84a <read>
 41a:	83 f8 10             	cmp    $0x10,%eax
 41d:	0f 85 6e ff ff ff    	jne    391 <mv_all+0x131>
                if(de.inum == 0) continue;
 423:	66 83 bd c4 f9 ff ff 	cmpw   $0x0,-0x63c(%ebp)
 42a:	00 
 42b:	74 d3                	je     400 <mv_all+0x1a0>
                memmove(p, de.name, DIRSIZ);
 42d:	8d 85 c6 f9 ff ff    	lea    -0x63a(%ebp),%eax
 433:	89 44 24 04          	mov    %eax,0x4(%esp)
 437:	8b 85 a8 f9 ff ff    	mov    -0x658(%ebp),%eax
 43d:	c7 44 24 08 0e 00 00 	movl   $0xe,0x8(%esp)
 444:	00 
 445:	89 04 24             	mov    %eax,(%esp)
 448:	e8 b3 03 00 00       	call   800 <memmove>
                p[DIRSIZ] = 0;
 44d:	8b 85 ac f9 ff ff    	mov    -0x654(%ebp),%eax
 453:	c6 40 0f 00          	movb   $0x0,0xf(%eax)
                if(stat(buf, &st) < 0){
 457:	8d 85 d4 f9 ff ff    	lea    -0x62c(%ebp),%eax
 45d:	89 44 24 04          	mov    %eax,0x4(%esp)
 461:	8d 85 e8 f9 ff ff    	lea    -0x618(%ebp),%eax
 467:	89 04 24             	mov    %eax,(%esp)
 46a:	e8 11 03 00 00       	call   780 <stat>
 46f:	85 c0                	test   %eax,%eax
                    printf(1, "ls: cannot stat %s\n", buf);
 471:	8d 85 e8 f9 ff ff    	lea    -0x618(%ebp),%eax

            while(read(fd, &de, sizeof(de)) == sizeof(de)){
                if(de.inum == 0) continue;
                memmove(p, de.name, DIRSIZ);
                p[DIRSIZ] = 0;
                if(stat(buf, &st) < 0){
 477:	0f 88 73 01 00 00    	js     5f0 <mv_all+0x390>
                    printf(1, "ls: cannot stat %s\n", buf);
                    continue;
                }
                if (fmtname(buf)[0] != '.' ){
 47d:	89 04 24             	mov    %eax,(%esp)
 480:	e8 ab fc ff ff       	call   130 <fmtname>
 485:	80 38 2e             	cmpb   $0x2e,(%eax)
 488:	0f 84 72 ff ff ff    	je     400 <mv_all+0x1a0>
                    char *name = fmtname(buf);
 48e:	8d 85 e8 f9 ff ff    	lea    -0x618(%ebp),%eax
 494:	89 04 24             	mov    %eax,(%esp)
 497:	e8 94 fc ff ff       	call   130 <fmtname>

                    char *tmp1 = malloc(100);
 49c:	c7 04 24 64 00 00 00 	movl   $0x64,(%esp)
                if(stat(buf, &st) < 0){
                    printf(1, "ls: cannot stat %s\n", buf);
                    continue;
                }
                if (fmtname(buf)[0] != '.' ){
                    char *name = fmtname(buf);
 4a3:	89 85 a4 f9 ff ff    	mov    %eax,-0x65c(%ebp)

                    char *tmp1 = malloc(100);
 4a9:	e8 52 07 00 00       	call   c00 <malloc>
                    memset(tmp1,0,100);
 4ae:	c7 44 24 08 64 00 00 	movl   $0x64,0x8(%esp)
 4b5:	00 
 4b6:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 4bd:	00 
 4be:	89 04 24             	mov    %eax,(%esp)
 4c1:	89 85 b4 f9 ff ff    	mov    %eax,-0x64c(%ebp)
 4c7:	e8 f4 01 00 00       	call   6c0 <memset>
                    strcat(tmp1,dummy);
 4cc:	8b 95 b4 f9 ff ff    	mov    -0x64c(%ebp),%edx
 4d2:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 4d6:	89 14 24             	mov    %edx,(%esp)
 4d9:	e8 02 fc ff ff       	call   e0 <strcat>
                    tmp1[strlen(tmp1)-1]='\0';
 4de:	8b 95 b4 f9 ff ff    	mov    -0x64c(%ebp),%edx
 4e4:	89 14 24             	mov    %edx,(%esp)
 4e7:	e8 a4 01 00 00       	call   690 <strlen>
 4ec:	8b 95 b4 f9 ff ff    	mov    -0x64c(%ebp),%edx
 4f2:	c6 44 02 ff 00       	movb   $0x0,-0x1(%edx,%eax,1)
                    strcat(tmp1,name);
 4f7:	8b 85 a4 f9 ff ff    	mov    -0x65c(%ebp),%eax
 4fd:	89 14 24             	mov    %edx,(%esp)
 500:	89 44 24 04          	mov    %eax,0x4(%esp)
 504:	e8 d7 fb ff ff       	call   e0 <strcat>

                    char *tmp = malloc(100);
 509:	c7 04 24 64 00 00 00 	movl   $0x64,(%esp)
 510:	e8 eb 06 00 00       	call   c00 <malloc>
                    memset(tmp,0,100);
 515:	c7 44 24 08 64 00 00 	movl   $0x64,0x8(%esp)
 51c:	00 
 51d:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 524:	00 
 525:	89 04 24             	mov    %eax,(%esp)
 528:	89 85 b0 f9 ff ff    	mov    %eax,-0x650(%ebp)
 52e:	e8 8d 01 00 00       	call   6c0 <memset>
                    strcat(tmp,destination);
 533:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 536:	8b 85 b0 f9 ff ff    	mov    -0x650(%ebp),%eax
 53c:	89 4c 24 04          	mov    %ecx,0x4(%esp)
 540:	89 04 24             	mov    %eax,(%esp)
 543:	e8 98 fb ff ff       	call   e0 <strcat>
                    strcat(tmp,name);
 548:	8b 8d a4 f9 ff ff    	mov    -0x65c(%ebp),%ecx
 54e:	8b 85 b0 f9 ff ff    	mov    -0x650(%ebp),%eax
 554:	89 4c 24 04          	mov    %ecx,0x4(%esp)
 558:	89 04 24             	mov    %eax,(%esp)
 55b:	e8 80 fb ff ff       	call   e0 <strcat>
                    mv(tmp1,tmp);
 560:	8b 85 b0 f9 ff ff    	mov    -0x650(%ebp),%eax
 566:	8b 95 b4 f9 ff ff    	mov    -0x64c(%ebp),%edx
 56c:	89 44 24 04          	mov    %eax,0x4(%esp)
 570:	89 14 24             	mov    %edx,(%esp)
 573:	e8 f8 fb ff ff       	call   170 <mv>
 578:	e9 83 fe ff ff       	jmp    400 <mv_all+0x1a0>
 57d:	8d 76 00             	lea    0x0(%esi),%esi
    dummy[strlen(dummy)] = '.';
    dummy[strlen(dummy)+1] = '\0';
    //printf(1,"alamat : %s\n",dummy);

    if((fd = open(dummy, 0)) < 0){
        printf(2, "ls: cannot open %s\n", dummy);
 580:	89 5c 24 08          	mov    %ebx,0x8(%esp)
 584:	c7 44 24 04 56 0d 00 	movl   $0xd56,0x4(%esp)
 58b:	00 
 58c:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
 593:	e8 e8 03 00 00       	call   980 <printf>
            }
            break;
    }
    close(pwd);
    close(fd);
}
 598:	81 c4 6c 06 00 00    	add    $0x66c,%esp
 59e:	5b                   	pop    %ebx
 59f:	5e                   	pop    %esi
 5a0:	5f                   	pop    %edi
 5a1:	5d                   	pop    %ebp
 5a2:	c3                   	ret    
 5a3:	90                   	nop
 5a4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
            printf(1, "%s %d %d %d\n", fmtname(dummy), st.type, st.ino, st.size);
            break;

        case T_DIR:
            if(strlen(dummy) + 1 + DIRSIZ + 1 > sizeof buf){
                printf(1, "ls: path too long\n");
 5a8:	c7 44 24 04 8b 0d 00 	movl   $0xd8b,0x4(%esp)
 5af:	00 
 5b0:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 5b7:	e8 c4 03 00 00       	call   980 <printf>
                break;
 5bc:	e9 d0 fd ff ff       	jmp    391 <mv_all+0x131>
 5c1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        printf(2, "ls: cannot open %s\n", dummy);
        return;
    }

    if(fstat(fd, &st) < 0){
        printf(2, "ls: cannot stat %s\n", dummy);
 5c8:	89 5c 24 08          	mov    %ebx,0x8(%esp)
 5cc:	c7 44 24 04 6a 0d 00 	movl   $0xd6a,0x4(%esp)
 5d3:	00 
 5d4:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
 5db:	e8 a0 03 00 00       	call   980 <printf>
        close(fd);
 5e0:	89 3c 24             	mov    %edi,(%esp)
 5e3:	e8 72 02 00 00       	call   85a <close>
        return;
 5e8:	e9 b4 fd ff ff       	jmp    3a1 <mv_all+0x141>
 5ed:	8d 76 00             	lea    0x0(%esi),%esi
            while(read(fd, &de, sizeof(de)) == sizeof(de)){
                if(de.inum == 0) continue;
                memmove(p, de.name, DIRSIZ);
                p[DIRSIZ] = 0;
                if(stat(buf, &st) < 0){
                    printf(1, "ls: cannot stat %s\n", buf);
 5f0:	89 44 24 08          	mov    %eax,0x8(%esp)
 5f4:	c7 44 24 04 6a 0d 00 	movl   $0xd6a,0x4(%esp)
 5fb:	00 
 5fc:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 603:	e8 78 03 00 00       	call   980 <printf>
                    continue;
 608:	e9 f3 fd ff ff       	jmp    400 <mv_all+0x1a0>
 60d:	66 90                	xchg   %ax,%ax
 60f:	90                   	nop

00000610 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, char *t)
{
 610:	55                   	push   %ebp
 611:	89 e5                	mov    %esp,%ebp
 613:	8b 45 08             	mov    0x8(%ebp),%eax
 616:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 619:	53                   	push   %ebx
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 61a:	89 c2                	mov    %eax,%edx
 61c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 620:	83 c1 01             	add    $0x1,%ecx
 623:	0f b6 59 ff          	movzbl -0x1(%ecx),%ebx
 627:	83 c2 01             	add    $0x1,%edx
 62a:	84 db                	test   %bl,%bl
 62c:	88 5a ff             	mov    %bl,-0x1(%edx)
 62f:	75 ef                	jne    620 <strcpy+0x10>
    ;
  return os;
}
 631:	5b                   	pop    %ebx
 632:	5d                   	pop    %ebp
 633:	c3                   	ret    
 634:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 63a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00000640 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 640:	55                   	push   %ebp
 641:	89 e5                	mov    %esp,%ebp
 643:	8b 55 08             	mov    0x8(%ebp),%edx
 646:	53                   	push   %ebx
 647:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 64a:	0f b6 02             	movzbl (%edx),%eax
 64d:	84 c0                	test   %al,%al
 64f:	74 2d                	je     67e <strcmp+0x3e>
 651:	0f b6 19             	movzbl (%ecx),%ebx
 654:	38 d8                	cmp    %bl,%al
 656:	74 0e                	je     666 <strcmp+0x26>
 658:	eb 2b                	jmp    685 <strcmp+0x45>
 65a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 660:	38 c8                	cmp    %cl,%al
 662:	75 15                	jne    679 <strcmp+0x39>
    p++, q++;
 664:	89 d9                	mov    %ebx,%ecx
 666:	83 c2 01             	add    $0x1,%edx
}

int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
 669:	0f b6 02             	movzbl (%edx),%eax
    p++, q++;
 66c:	8d 59 01             	lea    0x1(%ecx),%ebx
}

int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
 66f:	0f b6 49 01          	movzbl 0x1(%ecx),%ecx
 673:	84 c0                	test   %al,%al
 675:	75 e9                	jne    660 <strcmp+0x20>
 677:	31 c0                	xor    %eax,%eax
    p++, q++;
  return (uchar)*p - (uchar)*q;
 679:	29 c8                	sub    %ecx,%eax
}
 67b:	5b                   	pop    %ebx
 67c:	5d                   	pop    %ebp
 67d:	c3                   	ret    
 67e:	0f b6 09             	movzbl (%ecx),%ecx
}

int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
 681:	31 c0                	xor    %eax,%eax
 683:	eb f4                	jmp    679 <strcmp+0x39>
 685:	0f b6 cb             	movzbl %bl,%ecx
 688:	eb ef                	jmp    679 <strcmp+0x39>
 68a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000690 <strlen>:
  return (uchar)*p - (uchar)*q;
}

uint
strlen(char *s)
{
 690:	55                   	push   %ebp
 691:	89 e5                	mov    %esp,%ebp
 693:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  for(n = 0; s[n]; n++)
 696:	80 39 00             	cmpb   $0x0,(%ecx)
 699:	74 12                	je     6ad <strlen+0x1d>
 69b:	31 d2                	xor    %edx,%edx
 69d:	8d 76 00             	lea    0x0(%esi),%esi
 6a0:	83 c2 01             	add    $0x1,%edx
 6a3:	80 3c 11 00          	cmpb   $0x0,(%ecx,%edx,1)
 6a7:	89 d0                	mov    %edx,%eax
 6a9:	75 f5                	jne    6a0 <strlen+0x10>
    ;
  return n;
}
 6ab:	5d                   	pop    %ebp
 6ac:	c3                   	ret    
uint
strlen(char *s)
{
  int n;

  for(n = 0; s[n]; n++)
 6ad:	31 c0                	xor    %eax,%eax
    ;
  return n;
}
 6af:	5d                   	pop    %ebp
 6b0:	c3                   	ret    
 6b1:	eb 0d                	jmp    6c0 <memset>
 6b3:	90                   	nop
 6b4:	90                   	nop
 6b5:	90                   	nop
 6b6:	90                   	nop
 6b7:	90                   	nop
 6b8:	90                   	nop
 6b9:	90                   	nop
 6ba:	90                   	nop
 6bb:	90                   	nop
 6bc:	90                   	nop
 6bd:	90                   	nop
 6be:	90                   	nop
 6bf:	90                   	nop

000006c0 <memset>:

void*
memset(void *dst, int c, uint n)
{
 6c0:	55                   	push   %ebp
 6c1:	89 e5                	mov    %esp,%ebp
 6c3:	8b 55 08             	mov    0x8(%ebp),%edx
 6c6:	57                   	push   %edi
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
 6c7:	8b 4d 10             	mov    0x10(%ebp),%ecx
 6ca:	8b 45 0c             	mov    0xc(%ebp),%eax
 6cd:	89 d7                	mov    %edx,%edi
 6cf:	fc                   	cld    
 6d0:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 6d2:	89 d0                	mov    %edx,%eax
 6d4:	5f                   	pop    %edi
 6d5:	5d                   	pop    %ebp
 6d6:	c3                   	ret    
 6d7:	89 f6                	mov    %esi,%esi
 6d9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000006e0 <strchr>:

char*
strchr(const char *s, char c)
{
 6e0:	55                   	push   %ebp
 6e1:	89 e5                	mov    %esp,%ebp
 6e3:	8b 45 08             	mov    0x8(%ebp),%eax
 6e6:	53                   	push   %ebx
 6e7:	8b 55 0c             	mov    0xc(%ebp),%edx
  for(; *s; s++)
 6ea:	0f b6 18             	movzbl (%eax),%ebx
 6ed:	84 db                	test   %bl,%bl
 6ef:	74 1d                	je     70e <strchr+0x2e>
    if(*s == c)
 6f1:	38 d3                	cmp    %dl,%bl
 6f3:	89 d1                	mov    %edx,%ecx
 6f5:	75 0d                	jne    704 <strchr+0x24>
 6f7:	eb 17                	jmp    710 <strchr+0x30>
 6f9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 700:	38 ca                	cmp    %cl,%dl
 702:	74 0c                	je     710 <strchr+0x30>
}

char*
strchr(const char *s, char c)
{
  for(; *s; s++)
 704:	83 c0 01             	add    $0x1,%eax
 707:	0f b6 10             	movzbl (%eax),%edx
 70a:	84 d2                	test   %dl,%dl
 70c:	75 f2                	jne    700 <strchr+0x20>
    if(*s == c)
      return (char*)s;
  return 0;
 70e:	31 c0                	xor    %eax,%eax
}
 710:	5b                   	pop    %ebx
 711:	5d                   	pop    %ebp
 712:	c3                   	ret    
 713:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 719:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000720 <gets>:

char*
gets(char *buf, int max)
{
 720:	55                   	push   %ebp
 721:	89 e5                	mov    %esp,%ebp
 723:	57                   	push   %edi
 724:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 725:	31 f6                	xor    %esi,%esi
  return 0;
}

char*
gets(char *buf, int max)
{
 727:	53                   	push   %ebx
 728:	83 ec 2c             	sub    $0x2c,%esp
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
 72b:	8d 7d e7             	lea    -0x19(%ebp),%edi
gets(char *buf, int max)
{
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 72e:	eb 31                	jmp    761 <gets+0x41>
    cc = read(0, &c, 1);
 730:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 737:	00 
 738:	89 7c 24 04          	mov    %edi,0x4(%esp)
 73c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 743:	e8 02 01 00 00       	call   84a <read>
    if(cc < 1)
 748:	85 c0                	test   %eax,%eax
 74a:	7e 1d                	jle    769 <gets+0x49>
      break;
    buf[i++] = c;
 74c:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
gets(char *buf, int max)
{
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 750:	89 de                	mov    %ebx,%esi
    cc = read(0, &c, 1);
    if(cc < 1)
      break;
    buf[i++] = c;
 752:	8b 55 08             	mov    0x8(%ebp),%edx
    if(c == '\n' || c == '\r')
 755:	3c 0d                	cmp    $0xd,%al

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
    if(cc < 1)
      break;
    buf[i++] = c;
 757:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 75b:	74 0c                	je     769 <gets+0x49>
 75d:	3c 0a                	cmp    $0xa,%al
 75f:	74 08                	je     769 <gets+0x49>
gets(char *buf, int max)
{
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 761:	8d 5e 01             	lea    0x1(%esi),%ebx
 764:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 767:	7c c7                	jl     730 <gets+0x10>
      break;
    buf[i++] = c;
    if(c == '\n' || c == '\r')
      break;
  }
  buf[i] = '\0';
 769:	8b 45 08             	mov    0x8(%ebp),%eax
 76c:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
 770:	83 c4 2c             	add    $0x2c,%esp
 773:	5b                   	pop    %ebx
 774:	5e                   	pop    %esi
 775:	5f                   	pop    %edi
 776:	5d                   	pop    %ebp
 777:	c3                   	ret    
 778:	90                   	nop
 779:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000780 <stat>:

int
stat(char *n, struct stat *st)
{
 780:	55                   	push   %ebp
 781:	89 e5                	mov    %esp,%ebp
 783:	56                   	push   %esi
 784:	53                   	push   %ebx
 785:	83 ec 10             	sub    $0x10,%esp
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 788:	8b 45 08             	mov    0x8(%ebp),%eax
 78b:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 792:	00 
 793:	89 04 24             	mov    %eax,(%esp)
 796:	e8 d7 00 00 00       	call   872 <open>
  if(fd < 0)
 79b:	85 c0                	test   %eax,%eax
stat(char *n, struct stat *st)
{
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 79d:	89 c3                	mov    %eax,%ebx
  if(fd < 0)
 79f:	78 27                	js     7c8 <stat+0x48>
    return -1;
  r = fstat(fd, st);
 7a1:	8b 45 0c             	mov    0xc(%ebp),%eax
 7a4:	89 1c 24             	mov    %ebx,(%esp)
 7a7:	89 44 24 04          	mov    %eax,0x4(%esp)
 7ab:	e8 da 00 00 00       	call   88a <fstat>
  close(fd);
 7b0:	89 1c 24             	mov    %ebx,(%esp)
  int r;

  fd = open(n, O_RDONLY);
  if(fd < 0)
    return -1;
  r = fstat(fd, st);
 7b3:	89 c6                	mov    %eax,%esi
  close(fd);
 7b5:	e8 a0 00 00 00       	call   85a <close>
  return r;
 7ba:	89 f0                	mov    %esi,%eax
}
 7bc:	83 c4 10             	add    $0x10,%esp
 7bf:	5b                   	pop    %ebx
 7c0:	5e                   	pop    %esi
 7c1:	5d                   	pop    %ebp
 7c2:	c3                   	ret    
 7c3:	90                   	nop
 7c4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  int fd;
  int r;

  fd = open(n, O_RDONLY);
  if(fd < 0)
    return -1;
 7c8:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 7cd:	eb ed                	jmp    7bc <stat+0x3c>
 7cf:	90                   	nop

000007d0 <atoi>:
  return r;
}

int
atoi(const char *s)
{
 7d0:	55                   	push   %ebp
 7d1:	89 e5                	mov    %esp,%ebp
 7d3:	8b 4d 08             	mov    0x8(%ebp),%ecx
 7d6:	53                   	push   %ebx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 7d7:	0f be 11             	movsbl (%ecx),%edx
 7da:	8d 42 d0             	lea    -0x30(%edx),%eax
 7dd:	3c 09                	cmp    $0x9,%al
int
atoi(const char *s)
{
  int n;

  n = 0;
 7df:	b8 00 00 00 00       	mov    $0x0,%eax
  while('0' <= *s && *s <= '9')
 7e4:	77 17                	ja     7fd <atoi+0x2d>
 7e6:	66 90                	xchg   %ax,%ax
    n = n*10 + *s++ - '0';
 7e8:	83 c1 01             	add    $0x1,%ecx
 7eb:	8d 04 80             	lea    (%eax,%eax,4),%eax
 7ee:	8d 44 42 d0          	lea    -0x30(%edx,%eax,2),%eax
atoi(const char *s)
{
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 7f2:	0f be 11             	movsbl (%ecx),%edx
 7f5:	8d 5a d0             	lea    -0x30(%edx),%ebx
 7f8:	80 fb 09             	cmp    $0x9,%bl
 7fb:	76 eb                	jbe    7e8 <atoi+0x18>
    n = n*10 + *s++ - '0';
  return n;
}
 7fd:	5b                   	pop    %ebx
 7fe:	5d                   	pop    %ebp
 7ff:	c3                   	ret    

00000800 <memmove>:

void*
memmove(void *vdst, void *vsrc, int n)
{
 800:	55                   	push   %ebp
  char *dst, *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 801:	31 d2                	xor    %edx,%edx
  return n;
}

void*
memmove(void *vdst, void *vsrc, int n)
{
 803:	89 e5                	mov    %esp,%ebp
 805:	56                   	push   %esi
 806:	8b 45 08             	mov    0x8(%ebp),%eax
 809:	53                   	push   %ebx
 80a:	8b 5d 10             	mov    0x10(%ebp),%ebx
 80d:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst, *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 810:	85 db                	test   %ebx,%ebx
 812:	7e 12                	jle    826 <memmove+0x26>
 814:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    *dst++ = *src++;
 818:	0f b6 0c 16          	movzbl (%esi,%edx,1),%ecx
 81c:	88 0c 10             	mov    %cl,(%eax,%edx,1)
 81f:	83 c2 01             	add    $0x1,%edx
{
  char *dst, *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 822:	39 da                	cmp    %ebx,%edx
 824:	75 f2                	jne    818 <memmove+0x18>
    *dst++ = *src++;
  return vdst;
}
 826:	5b                   	pop    %ebx
 827:	5e                   	pop    %esi
 828:	5d                   	pop    %ebp
 829:	c3                   	ret    

0000082a <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 82a:	b8 01 00 00 00       	mov    $0x1,%eax
 82f:	cd 40                	int    $0x40
 831:	c3                   	ret    

00000832 <exit>:
SYSCALL(exit)
 832:	b8 02 00 00 00       	mov    $0x2,%eax
 837:	cd 40                	int    $0x40
 839:	c3                   	ret    

0000083a <wait>:
SYSCALL(wait)
 83a:	b8 03 00 00 00       	mov    $0x3,%eax
 83f:	cd 40                	int    $0x40
 841:	c3                   	ret    

00000842 <pipe>:
SYSCALL(pipe)
 842:	b8 04 00 00 00       	mov    $0x4,%eax
 847:	cd 40                	int    $0x40
 849:	c3                   	ret    

0000084a <read>:
SYSCALL(read)
 84a:	b8 05 00 00 00       	mov    $0x5,%eax
 84f:	cd 40                	int    $0x40
 851:	c3                   	ret    

00000852 <write>:
SYSCALL(write)
 852:	b8 10 00 00 00       	mov    $0x10,%eax
 857:	cd 40                	int    $0x40
 859:	c3                   	ret    

0000085a <close>:
SYSCALL(close)
 85a:	b8 15 00 00 00       	mov    $0x15,%eax
 85f:	cd 40                	int    $0x40
 861:	c3                   	ret    

00000862 <kill>:
SYSCALL(kill)
 862:	b8 06 00 00 00       	mov    $0x6,%eax
 867:	cd 40                	int    $0x40
 869:	c3                   	ret    

0000086a <exec>:
SYSCALL(exec)
 86a:	b8 07 00 00 00       	mov    $0x7,%eax
 86f:	cd 40                	int    $0x40
 871:	c3                   	ret    

00000872 <open>:
SYSCALL(open)
 872:	b8 0f 00 00 00       	mov    $0xf,%eax
 877:	cd 40                	int    $0x40
 879:	c3                   	ret    

0000087a <mknod>:
SYSCALL(mknod)
 87a:	b8 11 00 00 00       	mov    $0x11,%eax
 87f:	cd 40                	int    $0x40
 881:	c3                   	ret    

00000882 <unlink>:
SYSCALL(unlink)
 882:	b8 12 00 00 00       	mov    $0x12,%eax
 887:	cd 40                	int    $0x40
 889:	c3                   	ret    

0000088a <fstat>:
SYSCALL(fstat)
 88a:	b8 08 00 00 00       	mov    $0x8,%eax
 88f:	cd 40                	int    $0x40
 891:	c3                   	ret    

00000892 <link>:
SYSCALL(link)
 892:	b8 13 00 00 00       	mov    $0x13,%eax
 897:	cd 40                	int    $0x40
 899:	c3                   	ret    

0000089a <mkdir>:
SYSCALL(mkdir)
 89a:	b8 14 00 00 00       	mov    $0x14,%eax
 89f:	cd 40                	int    $0x40
 8a1:	c3                   	ret    

000008a2 <chdir>:
SYSCALL(chdir)
 8a2:	b8 09 00 00 00       	mov    $0x9,%eax
 8a7:	cd 40                	int    $0x40
 8a9:	c3                   	ret    

000008aa <dup>:
SYSCALL(dup)
 8aa:	b8 0a 00 00 00       	mov    $0xa,%eax
 8af:	cd 40                	int    $0x40
 8b1:	c3                   	ret    

000008b2 <getpid>:
SYSCALL(getpid)
 8b2:	b8 0b 00 00 00       	mov    $0xb,%eax
 8b7:	cd 40                	int    $0x40
 8b9:	c3                   	ret    

000008ba <sbrk>:
SYSCALL(sbrk)
 8ba:	b8 0c 00 00 00       	mov    $0xc,%eax
 8bf:	cd 40                	int    $0x40
 8c1:	c3                   	ret    

000008c2 <sleep>:
SYSCALL(sleep)
 8c2:	b8 0d 00 00 00       	mov    $0xd,%eax
 8c7:	cd 40                	int    $0x40
 8c9:	c3                   	ret    

000008ca <uptime>:
SYSCALL(uptime)
 8ca:	b8 0e 00 00 00       	mov    $0xe,%eax
 8cf:	cd 40                	int    $0x40
 8d1:	c3                   	ret    
 8d2:	66 90                	xchg   %ax,%ax
 8d4:	66 90                	xchg   %ax,%ax
 8d6:	66 90                	xchg   %ax,%ax
 8d8:	66 90                	xchg   %ax,%ax
 8da:	66 90                	xchg   %ax,%ax
 8dc:	66 90                	xchg   %ax,%ax
 8de:	66 90                	xchg   %ax,%ax

000008e0 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 8e0:	55                   	push   %ebp
 8e1:	89 e5                	mov    %esp,%ebp
 8e3:	57                   	push   %edi
 8e4:	56                   	push   %esi
 8e5:	89 c6                	mov    %eax,%esi
 8e7:	53                   	push   %ebx
 8e8:	83 ec 4c             	sub    $0x4c,%esp
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
 8eb:	8b 5d 08             	mov    0x8(%ebp),%ebx
 8ee:	85 db                	test   %ebx,%ebx
 8f0:	74 09                	je     8fb <printint+0x1b>
 8f2:	89 d0                	mov    %edx,%eax
 8f4:	c1 e8 1f             	shr    $0x1f,%eax
 8f7:	84 c0                	test   %al,%al
 8f9:	75 75                	jne    970 <printint+0x90>
    neg = 1;
    x = -xx;
  } else {
    x = xx;
 8fb:	89 d0                	mov    %edx,%eax
  static char digits[] = "0123456789ABCDEF";
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
 8fd:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
 904:	89 75 c0             	mov    %esi,-0x40(%ebp)
    x = -xx;
  } else {
    x = xx;
  }

  i = 0;
 907:	31 ff                	xor    %edi,%edi
 909:	89 ce                	mov    %ecx,%esi
 90b:	8d 5d d7             	lea    -0x29(%ebp),%ebx
 90e:	eb 02                	jmp    912 <printint+0x32>
  do{
    buf[i++] = digits[x % base];
 910:	89 cf                	mov    %ecx,%edi
 912:	31 d2                	xor    %edx,%edx
 914:	f7 f6                	div    %esi
 916:	8d 4f 01             	lea    0x1(%edi),%ecx
 919:	0f b6 92 cd 0d 00 00 	movzbl 0xdcd(%edx),%edx
  }while((x /= base) != 0);
 920:	85 c0                	test   %eax,%eax
    x = xx;
  }

  i = 0;
  do{
    buf[i++] = digits[x % base];
 922:	88 14 0b             	mov    %dl,(%ebx,%ecx,1)
  }while((x /= base) != 0);
 925:	75 e9                	jne    910 <printint+0x30>
  if(neg)
 927:	8b 55 c4             	mov    -0x3c(%ebp),%edx
    x = xx;
  }

  i = 0;
  do{
    buf[i++] = digits[x % base];
 92a:	89 c8                	mov    %ecx,%eax
 92c:	8b 75 c0             	mov    -0x40(%ebp),%esi
  }while((x /= base) != 0);
  if(neg)
 92f:	85 d2                	test   %edx,%edx
 931:	74 08                	je     93b <printint+0x5b>
    buf[i++] = '-';
 933:	8d 4f 02             	lea    0x2(%edi),%ecx
 936:	c6 44 05 d8 2d       	movb   $0x2d,-0x28(%ebp,%eax,1)

  while(--i >= 0)
 93b:	8d 79 ff             	lea    -0x1(%ecx),%edi
 93e:	66 90                	xchg   %ax,%ax
 940:	0f b6 44 3d d8       	movzbl -0x28(%ebp,%edi,1),%eax
 945:	83 ef 01             	sub    $0x1,%edi
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 948:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 94f:	00 
 950:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 954:	89 34 24             	mov    %esi,(%esp)
 957:	88 45 d7             	mov    %al,-0x29(%ebp)
 95a:	e8 f3 fe ff ff       	call   852 <write>
    buf[i++] = digits[x % base];
  }while((x /= base) != 0);
  if(neg)
    buf[i++] = '-';

  while(--i >= 0)
 95f:	83 ff ff             	cmp    $0xffffffff,%edi
 962:	75 dc                	jne    940 <printint+0x60>
    putc(fd, buf[i]);
}
 964:	83 c4 4c             	add    $0x4c,%esp
 967:	5b                   	pop    %ebx
 968:	5e                   	pop    %esi
 969:	5f                   	pop    %edi
 96a:	5d                   	pop    %ebp
 96b:	c3                   	ret    
 96c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
 970:	89 d0                	mov    %edx,%eax
 972:	f7 d8                	neg    %eax
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
 974:	c7 45 c4 01 00 00 00 	movl   $0x1,-0x3c(%ebp)
 97b:	eb 87                	jmp    904 <printint+0x24>
 97d:	8d 76 00             	lea    0x0(%esi),%esi

00000980 <printf>:
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
 980:	55                   	push   %ebp
 981:	89 e5                	mov    %esp,%ebp
 983:	57                   	push   %edi
  char *s;
  int c, i, state;
  uint *ap;

  state = 0;
 984:	31 ff                	xor    %edi,%edi
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
 986:	56                   	push   %esi
 987:	53                   	push   %ebx
 988:	83 ec 3c             	sub    $0x3c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 98b:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  char *s;
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
 98e:	8d 45 10             	lea    0x10(%ebp),%eax
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
 991:	8b 75 08             	mov    0x8(%ebp),%esi
  char *s;
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
 994:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  for(i = 0; fmt[i]; i++){
 997:	0f b6 13             	movzbl (%ebx),%edx
 99a:	83 c3 01             	add    $0x1,%ebx
 99d:	84 d2                	test   %dl,%dl
 99f:	75 39                	jne    9da <printf+0x5a>
 9a1:	e9 c2 00 00 00       	jmp    a68 <printf+0xe8>
 9a6:	66 90                	xchg   %ax,%ax
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
 9a8:	83 fa 25             	cmp    $0x25,%edx
 9ab:	0f 84 bf 00 00 00    	je     a70 <printf+0xf0>
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 9b1:	8d 45 e2             	lea    -0x1e(%ebp),%eax
 9b4:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 9bb:	00 
 9bc:	89 44 24 04          	mov    %eax,0x4(%esp)
 9c0:	89 34 24             	mov    %esi,(%esp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
      } else {
        putc(fd, c);
 9c3:	88 55 e2             	mov    %dl,-0x1e(%ebp)
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 9c6:	e8 87 fe ff ff       	call   852 <write>
 9cb:	83 c3 01             	add    $0x1,%ebx
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 9ce:	0f b6 53 ff          	movzbl -0x1(%ebx),%edx
 9d2:	84 d2                	test   %dl,%dl
 9d4:	0f 84 8e 00 00 00    	je     a68 <printf+0xe8>
    c = fmt[i] & 0xff;
    if(state == 0){
 9da:	85 ff                	test   %edi,%edi
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    c = fmt[i] & 0xff;
 9dc:	0f be c2             	movsbl %dl,%eax
    if(state == 0){
 9df:	74 c7                	je     9a8 <printf+0x28>
      if(c == '%'){
        state = '%';
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
 9e1:	83 ff 25             	cmp    $0x25,%edi
 9e4:	75 e5                	jne    9cb <printf+0x4b>
      if(c == 'd'){
 9e6:	83 fa 64             	cmp    $0x64,%edx
 9e9:	0f 84 31 01 00 00    	je     b20 <printf+0x1a0>
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
 9ef:	25 f7 00 00 00       	and    $0xf7,%eax
 9f4:	83 f8 70             	cmp    $0x70,%eax
 9f7:	0f 84 83 00 00 00    	je     a80 <printf+0x100>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
 9fd:	83 fa 73             	cmp    $0x73,%edx
 a00:	0f 84 a2 00 00 00    	je     aa8 <printf+0x128>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
 a06:	83 fa 63             	cmp    $0x63,%edx
 a09:	0f 84 35 01 00 00    	je     b44 <printf+0x1c4>
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
 a0f:	83 fa 25             	cmp    $0x25,%edx
 a12:	0f 84 e0 00 00 00    	je     af8 <printf+0x178>
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 a18:	8d 45 e6             	lea    -0x1a(%ebp),%eax
 a1b:	83 c3 01             	add    $0x1,%ebx
 a1e:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 a25:	00 
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 a26:	31 ff                	xor    %edi,%edi
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 a28:	89 44 24 04          	mov    %eax,0x4(%esp)
 a2c:	89 34 24             	mov    %esi,(%esp)
 a2f:	89 55 d0             	mov    %edx,-0x30(%ebp)
 a32:	c6 45 e6 25          	movb   $0x25,-0x1a(%ebp)
 a36:	e8 17 fe ff ff       	call   852 <write>
      } else if(c == '%'){
        putc(fd, c);
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
 a3b:	8b 55 d0             	mov    -0x30(%ebp),%edx
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 a3e:	8d 45 e7             	lea    -0x19(%ebp),%eax
 a41:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 a48:	00 
 a49:	89 44 24 04          	mov    %eax,0x4(%esp)
 a4d:	89 34 24             	mov    %esi,(%esp)
      } else if(c == '%'){
        putc(fd, c);
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
 a50:	88 55 e7             	mov    %dl,-0x19(%ebp)
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 a53:	e8 fa fd ff ff       	call   852 <write>
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 a58:	0f b6 53 ff          	movzbl -0x1(%ebx),%edx
 a5c:	84 d2                	test   %dl,%dl
 a5e:	0f 85 76 ff ff ff    	jne    9da <printf+0x5a>
 a64:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 a68:	83 c4 3c             	add    $0x3c,%esp
 a6b:	5b                   	pop    %ebx
 a6c:	5e                   	pop    %esi
 a6d:	5f                   	pop    %edi
 a6e:	5d                   	pop    %ebp
 a6f:	c3                   	ret    
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
 a70:	bf 25 00 00 00       	mov    $0x25,%edi
 a75:	e9 51 ff ff ff       	jmp    9cb <printf+0x4b>
 a7a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
        printint(fd, *ap, 16, 0);
 a80:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 a83:	b9 10 00 00 00       	mov    $0x10,%ecx
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 a88:	31 ff                	xor    %edi,%edi
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
        printint(fd, *ap, 16, 0);
 a8a:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 a91:	8b 10                	mov    (%eax),%edx
 a93:	89 f0                	mov    %esi,%eax
 a95:	e8 46 fe ff ff       	call   8e0 <printint>
        ap++;
 a9a:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
 a9e:	e9 28 ff ff ff       	jmp    9cb <printf+0x4b>
 aa3:	90                   	nop
 aa4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      } else if(c == 's'){
        s = (char*)*ap;
 aa8:	8b 45 d4             	mov    -0x2c(%ebp),%eax
        ap++;
 aab:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
        ap++;
      } else if(c == 'x' || c == 'p'){
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
        s = (char*)*ap;
 aaf:	8b 38                	mov    (%eax),%edi
        ap++;
        if(s == 0)
          s = "(null)";
 ab1:	b8 c6 0d 00 00       	mov    $0xdc6,%eax
 ab6:	85 ff                	test   %edi,%edi
 ab8:	0f 44 f8             	cmove  %eax,%edi
        while(*s != 0){
 abb:	0f b6 07             	movzbl (%edi),%eax
 abe:	84 c0                	test   %al,%al
 ac0:	74 2a                	je     aec <printf+0x16c>
 ac2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 ac8:	88 45 e3             	mov    %al,-0x1d(%ebp)
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 acb:	8d 45 e3             	lea    -0x1d(%ebp),%eax
        ap++;
        if(s == 0)
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
 ace:	83 c7 01             	add    $0x1,%edi
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 ad1:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 ad8:	00 
 ad9:	89 44 24 04          	mov    %eax,0x4(%esp)
 add:	89 34 24             	mov    %esi,(%esp)
 ae0:	e8 6d fd ff ff       	call   852 <write>
      } else if(c == 's'){
        s = (char*)*ap;
        ap++;
        if(s == 0)
          s = "(null)";
        while(*s != 0){
 ae5:	0f b6 07             	movzbl (%edi),%eax
 ae8:	84 c0                	test   %al,%al
 aea:	75 dc                	jne    ac8 <printf+0x148>
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 aec:	31 ff                	xor    %edi,%edi
 aee:	e9 d8 fe ff ff       	jmp    9cb <printf+0x4b>
 af3:	90                   	nop
 af4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 af8:	8d 45 e5             	lea    -0x1b(%ebp),%eax
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 afb:	31 ff                	xor    %edi,%edi
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 afd:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 b04:	00 
 b05:	89 44 24 04          	mov    %eax,0x4(%esp)
 b09:	89 34 24             	mov    %esi,(%esp)
 b0c:	c6 45 e5 25          	movb   $0x25,-0x1b(%ebp)
 b10:	e8 3d fd ff ff       	call   852 <write>
 b15:	e9 b1 fe ff ff       	jmp    9cb <printf+0x4b>
 b1a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
 b20:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 b23:	b9 0a 00 00 00       	mov    $0xa,%ecx
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 b28:	66 31 ff             	xor    %di,%di
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
 b2b:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 b32:	8b 10                	mov    (%eax),%edx
 b34:	89 f0                	mov    %esi,%eax
 b36:	e8 a5 fd ff ff       	call   8e0 <printint>
        ap++;
 b3b:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
 b3f:	e9 87 fe ff ff       	jmp    9cb <printf+0x4b>
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
        putc(fd, *ap);
 b44:	8b 45 d4             	mov    -0x2c(%ebp),%eax
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 b47:	31 ff                	xor    %edi,%edi
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
        putc(fd, *ap);
 b49:	8b 00                	mov    (%eax),%eax
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 b4b:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 b52:	00 
 b53:	89 34 24             	mov    %esi,(%esp)
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
        putc(fd, *ap);
 b56:	88 45 e4             	mov    %al,-0x1c(%ebp)
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 b59:	8d 45 e4             	lea    -0x1c(%ebp),%eax
 b5c:	89 44 24 04          	mov    %eax,0x4(%esp)
 b60:	e8 ed fc ff ff       	call   852 <write>
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
        putc(fd, *ap);
        ap++;
 b65:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
 b69:	e9 5d fe ff ff       	jmp    9cb <printf+0x4b>
 b6e:	66 90                	xchg   %ax,%ax

00000b70 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 b70:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 b71:	a1 24 11 00 00       	mov    0x1124,%eax
static Header base;
static Header *freep;

void
free(void *ap)
{
 b76:	89 e5                	mov    %esp,%ebp
 b78:	57                   	push   %edi
 b79:	56                   	push   %esi
 b7a:	53                   	push   %ebx
 b7b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 b7e:	8b 08                	mov    (%eax),%ecx
void
free(void *ap)
{
  Header *bp, *p;

  bp = (Header*)ap - 1;
 b80:	8d 53 f8             	lea    -0x8(%ebx),%edx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 b83:	39 d0                	cmp    %edx,%eax
 b85:	72 11                	jb     b98 <free+0x28>
 b87:	90                   	nop
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 b88:	39 c8                	cmp    %ecx,%eax
 b8a:	72 04                	jb     b90 <free+0x20>
 b8c:	39 ca                	cmp    %ecx,%edx
 b8e:	72 10                	jb     ba0 <free+0x30>
 b90:	89 c8                	mov    %ecx,%eax
free(void *ap)
{
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 b92:	39 d0                	cmp    %edx,%eax
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 b94:	8b 08                	mov    (%eax),%ecx
free(void *ap)
{
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 b96:	73 f0                	jae    b88 <free+0x18>
 b98:	39 ca                	cmp    %ecx,%edx
 b9a:	72 04                	jb     ba0 <free+0x30>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 b9c:	39 c8                	cmp    %ecx,%eax
 b9e:	72 f0                	jb     b90 <free+0x20>
      break;
  if(bp + bp->s.size == p->s.ptr){
 ba0:	8b 73 fc             	mov    -0x4(%ebx),%esi
 ba3:	8d 3c f2             	lea    (%edx,%esi,8),%edi
 ba6:	39 cf                	cmp    %ecx,%edi
 ba8:	74 1e                	je     bc8 <free+0x58>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
 baa:	89 4b f8             	mov    %ecx,-0x8(%ebx)
  if(p + p->s.size == bp){
 bad:	8b 48 04             	mov    0x4(%eax),%ecx
 bb0:	8d 34 c8             	lea    (%eax,%ecx,8),%esi
 bb3:	39 f2                	cmp    %esi,%edx
 bb5:	74 28                	je     bdf <free+0x6f>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
 bb7:	89 10                	mov    %edx,(%eax)
  freep = p;
 bb9:	a3 24 11 00 00       	mov    %eax,0x1124
}
 bbe:	5b                   	pop    %ebx
 bbf:	5e                   	pop    %esi
 bc0:	5f                   	pop    %edi
 bc1:	5d                   	pop    %ebp
 bc2:	c3                   	ret    
 bc3:	90                   	nop
 bc4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
      break;
  if(bp + bp->s.size == p->s.ptr){
    bp->s.size += p->s.ptr->s.size;
 bc8:	03 71 04             	add    0x4(%ecx),%esi
 bcb:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 bce:	8b 08                	mov    (%eax),%ecx
 bd0:	8b 09                	mov    (%ecx),%ecx
 bd2:	89 4b f8             	mov    %ecx,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 bd5:	8b 48 04             	mov    0x4(%eax),%ecx
 bd8:	8d 34 c8             	lea    (%eax,%ecx,8),%esi
 bdb:	39 f2                	cmp    %esi,%edx
 bdd:	75 d8                	jne    bb7 <free+0x47>
    p->s.size += bp->s.size;
 bdf:	03 4b fc             	add    -0x4(%ebx),%ecx
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
  freep = p;
 be2:	a3 24 11 00 00       	mov    %eax,0x1124
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
    p->s.size += bp->s.size;
 be7:	89 48 04             	mov    %ecx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
 bea:	8b 53 f8             	mov    -0x8(%ebx),%edx
 bed:	89 10                	mov    %edx,(%eax)
  } else
    p->s.ptr = bp;
  freep = p;
}
 bef:	5b                   	pop    %ebx
 bf0:	5e                   	pop    %esi
 bf1:	5f                   	pop    %edi
 bf2:	5d                   	pop    %ebp
 bf3:	c3                   	ret    
 bf4:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 bfa:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00000c00 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 c00:	55                   	push   %ebp
 c01:	89 e5                	mov    %esp,%ebp
 c03:	57                   	push   %edi
 c04:	56                   	push   %esi
 c05:	53                   	push   %ebx
 c06:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 c09:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 c0c:	8b 1d 24 11 00 00    	mov    0x1124,%ebx
malloc(uint nbytes)
{
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 c12:	8d 48 07             	lea    0x7(%eax),%ecx
 c15:	c1 e9 03             	shr    $0x3,%ecx
  if((prevp = freep) == 0){
 c18:	85 db                	test   %ebx,%ebx
malloc(uint nbytes)
{
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 c1a:	8d 71 01             	lea    0x1(%ecx),%esi
  if((prevp = freep) == 0){
 c1d:	0f 84 9b 00 00 00    	je     cbe <malloc+0xbe>
 c23:	8b 13                	mov    (%ebx),%edx
 c25:	8b 7a 04             	mov    0x4(%edx),%edi
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
 c28:	39 fe                	cmp    %edi,%esi
 c2a:	76 64                	jbe    c90 <malloc+0x90>
 c2c:	8d 04 f5 00 00 00 00 	lea    0x0(,%esi,8),%eax
morecore(uint nu)
{
  char *p;
  Header *hp;

  if(nu < 4096)
 c33:	bb 00 80 00 00       	mov    $0x8000,%ebx
 c38:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 c3b:	eb 0e                	jmp    c4b <malloc+0x4b>
 c3d:	8d 76 00             	lea    0x0(%esi),%esi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
  if((prevp = freep) == 0){
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 c40:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 c42:	8b 78 04             	mov    0x4(%eax),%edi
 c45:	39 fe                	cmp    %edi,%esi
 c47:	76 4f                	jbe    c98 <malloc+0x98>
 c49:	89 c2                	mov    %eax,%edx
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 c4b:	3b 15 24 11 00 00    	cmp    0x1124,%edx
 c51:	75 ed                	jne    c40 <malloc+0x40>
morecore(uint nu)
{
  char *p;
  Header *hp;

  if(nu < 4096)
 c53:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 c56:	81 fe 00 10 00 00    	cmp    $0x1000,%esi
 c5c:	bf 00 10 00 00       	mov    $0x1000,%edi
 c61:	0f 43 fe             	cmovae %esi,%edi
 c64:	0f 42 c3             	cmovb  %ebx,%eax
    nu = 4096;
  p = sbrk(nu * sizeof(Header));
 c67:	89 04 24             	mov    %eax,(%esp)
 c6a:	e8 4b fc ff ff       	call   8ba <sbrk>
  if(p == (char*)-1)
 c6f:	83 f8 ff             	cmp    $0xffffffff,%eax
 c72:	74 18                	je     c8c <malloc+0x8c>
    return 0;
  hp = (Header*)p;
  hp->s.size = nu;
 c74:	89 78 04             	mov    %edi,0x4(%eax)
  free((void*)(hp + 1));
 c77:	83 c0 08             	add    $0x8,%eax
 c7a:	89 04 24             	mov    %eax,(%esp)
 c7d:	e8 ee fe ff ff       	call   b70 <free>
  return freep;
 c82:	8b 15 24 11 00 00    	mov    0x1124,%edx
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
      if((p = morecore(nunits)) == 0)
 c88:	85 d2                	test   %edx,%edx
 c8a:	75 b4                	jne    c40 <malloc+0x40>
        return 0;
 c8c:	31 c0                	xor    %eax,%eax
 c8e:	eb 20                	jmp    cb0 <malloc+0xb0>
  if((prevp = freep) == 0){
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
 c90:	89 d0                	mov    %edx,%eax
 c92:	89 da                	mov    %ebx,%edx
 c94:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      if(p->s.size == nunits)
 c98:	39 fe                	cmp    %edi,%esi
 c9a:	74 1c                	je     cb8 <malloc+0xb8>
        prevp->s.ptr = p->s.ptr;
      else {
        p->s.size -= nunits;
 c9c:	29 f7                	sub    %esi,%edi
 c9e:	89 78 04             	mov    %edi,0x4(%eax)
        p += p->s.size;
 ca1:	8d 04 f8             	lea    (%eax,%edi,8),%eax
        p->s.size = nunits;
 ca4:	89 70 04             	mov    %esi,0x4(%eax)
      }
      freep = prevp;
 ca7:	89 15 24 11 00 00    	mov    %edx,0x1124
      return (void*)(p + 1);
 cad:	83 c0 08             	add    $0x8,%eax
    }
    if(p == freep)
      if((p = morecore(nunits)) == 0)
        return 0;
  }
}
 cb0:	83 c4 1c             	add    $0x1c,%esp
 cb3:	5b                   	pop    %ebx
 cb4:	5e                   	pop    %esi
 cb5:	5f                   	pop    %edi
 cb6:	5d                   	pop    %ebp
 cb7:	c3                   	ret    
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
      if(p->s.size == nunits)
        prevp->s.ptr = p->s.ptr;
 cb8:	8b 08                	mov    (%eax),%ecx
 cba:	89 0a                	mov    %ecx,(%edx)
 cbc:	eb e9                	jmp    ca7 <malloc+0xa7>
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
  if((prevp = freep) == 0){
    base.s.ptr = freep = prevp = &base;
 cbe:	c7 05 24 11 00 00 28 	movl   $0x1128,0x1124
 cc5:	11 00 00 
    base.s.size = 0;
 cc8:	ba 28 11 00 00       	mov    $0x1128,%edx
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
  if((prevp = freep) == 0){
    base.s.ptr = freep = prevp = &base;
 ccd:	c7 05 28 11 00 00 28 	movl   $0x1128,0x1128
 cd4:	11 00 00 
    base.s.size = 0;
 cd7:	c7 05 2c 11 00 00 00 	movl   $0x0,0x112c
 cde:	00 00 00 
 ce1:	e9 46 ff ff ff       	jmp    c2c <malloc+0x2c>
