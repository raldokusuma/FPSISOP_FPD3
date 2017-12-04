
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
    int all = 0;
    int i;

    for (i=0;i<strlen(argv[1])-1;i++){
   5:	31 db                	xor    %ebx,%ebx
    }
    close(pwd);
    close(fd);
}

int main (int argc, char **argv) {
   7:	83 e4 f0             	and    $0xfffffff0,%esp
   a:	83 ec 10             	sub    $0x10,%esp
   d:	8b 75 0c             	mov    0xc(%ebp),%esi
  10:	8b 46 04             	mov    0x4(%esi),%eax
    int all = 0;
    int i;

    for (i=0;i<strlen(argv[1])-1;i++){
  13:	eb 0f                	jmp    24 <main+0x24>
  15:	8d 76 00             	lea    0x0(%esi),%esi
        if (argv[1][i] == '*'){
  18:	8b 46 04             	mov    0x4(%esi),%eax
  1b:	80 3c 18 2a          	cmpb   $0x2a,(%eax,%ebx,1)
  1f:	74 3b                	je     5c <main+0x5c>

int main (int argc, char **argv) {
    int all = 0;
    int i;

    for (i=0;i<strlen(argv[1])-1;i++){
  21:	83 c3 01             	add    $0x1,%ebx
  24:	89 04 24             	mov    %eax,(%esp)
  27:	e8 24 06 00 00       	call   650 <strlen>
  2c:	83 e8 01             	sub    $0x1,%eax
  2f:	39 c3                	cmp    %eax,%ebx
  31:	72 e5                	jb     18 <main+0x18>
            printf(1,"Misplaced *\n");
            exit();
        }
    }

    if (argv[1][strlen(argv[1])-1] == '*'){
  33:	8b 5e 04             	mov    0x4(%esi),%ebx
  36:	89 1c 24             	mov    %ebx,(%esp)
  39:	e8 12 06 00 00       	call   650 <strlen>
  3e:	80 7c 03 ff 2a       	cmpb   $0x2a,-0x1(%ebx,%eax,1)
  43:	74 30                	je     75 <main+0x75>
        all = 1;
        printf(1,"* Found\n");
    }

	if (all) mv_all(argv[1],argv[2]);
	else mv(argv[1],argv[2]);
  45:	8b 46 08             	mov    0x8(%esi),%eax
  48:	89 44 24 04          	mov    %eax,0x4(%esp)
  4c:	8b 46 04             	mov    0x4(%esi),%eax
  4f:	89 04 24             	mov    %eax,(%esp)
  52:	e8 d9 00 00 00       	call   130 <mv>

	exit();
  57:	e8 96 07 00 00       	call   7f2 <exit>
    int all = 0;
    int i;

    for (i=0;i<strlen(argv[1])-1;i++){
        if (argv[1][i] == '*'){
            printf(1,"Misplaced *\n");
  5c:	c7 44 24 04 2e 0d 00 	movl   $0xd2e,0x4(%esp)
  63:	00 
  64:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
  6b:	e8 d0 08 00 00       	call   940 <printf>
            exit();
  70:	e8 7d 07 00 00       	call   7f2 <exit>
        }
    }

    if (argv[1][strlen(argv[1])-1] == '*'){
        all = 1;
        printf(1,"* Found\n");
  75:	c7 44 24 04 3b 0d 00 	movl   $0xd3b,0x4(%esp)
  7c:	00 
  7d:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
  84:	e8 b7 08 00 00       	call   940 <printf>
    }

	if (all) mv_all(argv[1],argv[2]);
  89:	8b 46 08             	mov    0x8(%esi),%eax
  8c:	89 44 24 04          	mov    %eax,0x4(%esp)
  90:	8b 46 04             	mov    0x4(%esi),%eax
  93:	89 04 24             	mov    %eax,(%esp)
  96:	e8 85 01 00 00       	call   220 <mv_all>
  9b:	eb ba                	jmp    57 <main+0x57>
  9d:	66 90                	xchg   %ax,%ax
  9f:	90                   	nop

000000a0 <strcat>:
#include "stat.h"
#include "fs.h"

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
    for (i = 0; dest[i] != '\0'; i++)
  ac:	80 38 00             	cmpb   $0x0,(%eax)
  af:	74 38                	je     e9 <strcat+0x49>
  b1:	31 c9                	xor    %ecx,%ecx
  b3:	90                   	nop
  b4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  b8:	83 c1 01             	add    $0x1,%ecx
  bb:	80 3c 08 00          	cmpb   $0x0,(%eax,%ecx,1)
  bf:	75 f7                	jne    b8 <strcat+0x18>
  c1:	89 ca                	mov    %ecx,%edx
        ;
    for (j = 0; src[j] != '\0'; j++)
  c3:	0f b6 1e             	movzbl (%esi),%ebx
  c6:	84 db                	test   %bl,%bl
  c8:	74 16                	je     e0 <strcat+0x40>
  ca:	31 d2                	xor    %edx,%edx
  cc:	8d 3c 08             	lea    (%eax,%ecx,1),%edi
  cf:	90                   	nop
        dest[i+j] = src[j];
  d0:	88 1c 17             	mov    %bl,(%edi,%edx,1)
strcat(char *dest, const char *src)
{
    int i,j;
    for (i = 0; dest[i] != '\0'; i++)
        ;
    for (j = 0; src[j] != '\0'; j++)
  d3:	83 c2 01             	add    $0x1,%edx
  d6:	0f b6 1c 16          	movzbl (%esi,%edx,1),%ebx
  da:	84 db                	test   %bl,%bl
  dc:	75 f2                	jne    d0 <strcat+0x30>
  de:	01 ca                	add    %ecx,%edx
        dest[i+j] = src[j];
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
    for (i = 0; dest[i] != '\0'; i++)
  e9:	31 d2                	xor    %edx,%edx
  eb:	31 c9                	xor    %ecx,%ecx
  ed:	eb d4                	jmp    c3 <strcat+0x23>
  ef:	90                   	nop

000000f0 <fmtname>:
}

// list every file
char*
fmtname(char *path)
{
  f0:	55                   	push   %ebp
  f1:	89 e5                	mov    %esp,%ebp
  f3:	53                   	push   %ebx
  f4:	83 ec 14             	sub    $0x14,%esp
  f7:	8b 5d 08             	mov    0x8(%ebp),%ebx
    //static char buf[DIRSIZ+1];
    char *p;

    // Find first character after last slash.
    for(p=path+strlen(path); p >= path && *p != '/'; p--);
  fa:	89 1c 24             	mov    %ebx,(%esp)
  fd:	e8 4e 05 00 00       	call   650 <strlen>
 102:	01 d8                	add    %ebx,%eax
 104:	73 0c                	jae    112 <fmtname+0x22>
 106:	eb 0f                	jmp    117 <fmtname+0x27>
 108:	83 e8 01             	sub    $0x1,%eax
 10b:	39 c3                	cmp    %eax,%ebx
 10d:	8d 76 00             	lea    0x0(%esi),%esi
 110:	77 05                	ja     117 <fmtname+0x27>
 112:	80 38 2f             	cmpb   $0x2f,(%eax)
 115:	75 f1                	jne    108 <fmtname+0x18>
    p++;
 117:	8d 58 01             	lea    0x1(%eax),%ebx

    // Return blank-padded name.
    if(strlen(p) >= DIRSIZ) return p;
 11a:	89 1c 24             	mov    %ebx,(%esp)
 11d:	e8 2e 05 00 00       	call   650 <strlen>

    //memmove(buf, p, strlen(p));
    //memset(buf+strlen(p), ' ', DIRSIZ-strlen(p));
    return p;
}
 122:	83 c4 14             	add    $0x14,%esp
 125:	89 d8                	mov    %ebx,%eax
 127:	5b                   	pop    %ebx
 128:	5d                   	pop    %ebp
 129:	c3                   	ret    
 12a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000130 <mv>:

void mv(char *source, char *destination){
 130:	55                   	push   %ebp
 131:	89 e5                	mov    %esp,%ebp
 133:	57                   	push   %edi
 134:	56                   	push   %esi
 135:	53                   	push   %ebx
 136:	81 ec 1c 04 00 00    	sub    $0x41c,%esp
    int fsource;
    int fdest;

    if ((fsource = open(source,O_RDONLY)) < 0){
 13c:	8b 45 08             	mov    0x8(%ebp),%eax
 13f:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 146:	00 
 147:	89 04 24             	mov    %eax,(%esp)
 14a:	e8 e3 06 00 00       	call   832 <open>
 14f:	85 c0                	test   %eax,%eax
 151:	89 c6                	mov    %eax,%esi
 153:	78 73                	js     1c8 <mv+0x98>
        printf(1,"Source File %s Does Not Exist\n", source);
        return;
    }

    fdest = open(destination, O_CREATE | O_RDWR);
 155:	8b 45 0c             	mov    0xc(%ebp),%eax
 158:	8d 9d e8 fb ff ff    	lea    -0x418(%ebp),%ebx
 15e:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
 165:	00 
 166:	89 04 24             	mov    %eax,(%esp)
 169:	e8 c4 06 00 00       	call   832 <open>
 16e:	89 c7                	mov    %eax,%edi
    int n;
    char temp[1024];
    while ((n = read(fsource,temp,sizeof(temp))) > 0)
 170:	eb 16                	jmp    188 <mv+0x58>
 172:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        write(fdest,temp,n);
 178:	89 44 24 08          	mov    %eax,0x8(%esp)
 17c:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 180:	89 3c 24             	mov    %edi,(%esp)
 183:	e8 8a 06 00 00       	call   812 <write>
    }

    fdest = open(destination, O_CREATE | O_RDWR);
    int n;
    char temp[1024];
    while ((n = read(fsource,temp,sizeof(temp))) > 0)
 188:	c7 44 24 08 00 04 00 	movl   $0x400,0x8(%esp)
 18f:	00 
 190:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 194:	89 34 24             	mov    %esi,(%esp)
 197:	e8 6e 06 00 00       	call   80a <read>
 19c:	85 c0                	test   %eax,%eax
 19e:	7f d8                	jg     178 <mv+0x48>
        write(fdest,temp,n);
    close(fdest);
 1a0:	89 3c 24             	mov    %edi,(%esp)
 1a3:	e8 72 06 00 00       	call   81a <close>

    if (unlink(source) < 0)printf(1, "rm: %s failed to delete\n", source);
 1a8:	8b 45 08             	mov    0x8(%ebp),%eax
 1ab:	89 04 24             	mov    %eax,(%esp)
 1ae:	e8 8f 06 00 00       	call   842 <unlink>
 1b3:	85 c0                	test   %eax,%eax
 1b5:	78 39                	js     1f0 <mv+0xc0>

    return;
}
 1b7:	81 c4 1c 04 00 00    	add    $0x41c,%esp
 1bd:	5b                   	pop    %ebx
 1be:	5e                   	pop    %esi
 1bf:	5f                   	pop    %edi
 1c0:	5d                   	pop    %ebp
 1c1:	c3                   	ret    
 1c2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
void mv(char *source, char *destination){
    int fsource;
    int fdest;

    if ((fsource = open(source,O_RDONLY)) < 0){
        printf(1,"Source File %s Does Not Exist\n", source);
 1c8:	8b 45 08             	mov    0x8(%ebp),%eax
 1cb:	c7 44 24 04 a8 0c 00 	movl   $0xca8,0x4(%esp)
 1d2:	00 
 1d3:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 1da:	89 44 24 08          	mov    %eax,0x8(%esp)
 1de:	e8 5d 07 00 00       	call   940 <printf>
    close(fdest);

    if (unlink(source) < 0)printf(1, "rm: %s failed to delete\n", source);

    return;
}
 1e3:	81 c4 1c 04 00 00    	add    $0x41c,%esp
 1e9:	5b                   	pop    %ebx
 1ea:	5e                   	pop    %esi
 1eb:	5f                   	pop    %edi
 1ec:	5d                   	pop    %ebp
 1ed:	c3                   	ret    
 1ee:	66 90                	xchg   %ax,%ax
    char temp[1024];
    while ((n = read(fsource,temp,sizeof(temp))) > 0)
        write(fdest,temp,n);
    close(fdest);

    if (unlink(source) < 0)printf(1, "rm: %s failed to delete\n", source);
 1f0:	8b 45 08             	mov    0x8(%ebp),%eax
 1f3:	c7 44 24 04 c8 0c 00 	movl   $0xcc8,0x4(%esp)
 1fa:	00 
 1fb:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 202:	89 44 24 08          	mov    %eax,0x8(%esp)
 206:	e8 35 07 00 00       	call   940 <printf>

    return;
}
 20b:	81 c4 1c 04 00 00    	add    $0x41c,%esp
 211:	5b                   	pop    %ebx
 212:	5e                   	pop    %esi
 213:	5f                   	pop    %edi
 214:	5d                   	pop    %ebp
 215:	c3                   	ret    
 216:	8d 76 00             	lea    0x0(%esi),%esi
 219:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000220 <mv_all>:

void mv_all(char *path,char *destination)
{
 220:	55                   	push   %ebp
 221:	89 e5                	mov    %esp,%ebp
 223:	57                   	push   %edi
 224:	56                   	push   %esi
 225:	53                   	push   %ebx
 226:	81 ec 6c 06 00 00    	sub    $0x66c,%esp
    struct stat st;
    //*/

    int pwd;
    char *tmp = {""};
    strcat(tmp,path);
 22c:	8b 45 08             	mov    0x8(%ebp),%eax
 22f:	c7 04 24 3a 0d 00 00 	movl   $0xd3a,(%esp)
    tmp[strlen(tmp)-1]='\0';
    strcat(tmp,".pwd");
    pwd = open(tmp,O_RDONLY);

    char dummy[1024];
    read(pwd,dummy,sizeof(dummy));
 236:	8d 9d e8 fb ff ff    	lea    -0x418(%ebp),%ebx
    struct stat st;
    //*/

    int pwd;
    char *tmp = {""};
    strcat(tmp,path);
 23c:	89 44 24 04          	mov    %eax,0x4(%esp)
 240:	e8 5b fe ff ff       	call   a0 <strcat>
    tmp[strlen(tmp)-1]='\0';
 245:	c7 04 24 3a 0d 00 00 	movl   $0xd3a,(%esp)
 24c:	e8 ff 03 00 00       	call   650 <strlen>
    strcat(tmp,".pwd");
 251:	c7 44 24 04 e1 0c 00 	movl   $0xce1,0x4(%esp)
 258:	00 
 259:	c7 04 24 3a 0d 00 00 	movl   $0xd3a,(%esp)
    //*/

    int pwd;
    char *tmp = {""};
    strcat(tmp,path);
    tmp[strlen(tmp)-1]='\0';
 260:	c6 80 39 0d 00 00 00 	movb   $0x0,0xd39(%eax)
    strcat(tmp,".pwd");
 267:	e8 34 fe ff ff       	call   a0 <strcat>
    pwd = open(tmp,O_RDONLY);
 26c:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 273:	00 
 274:	c7 04 24 3a 0d 00 00 	movl   $0xd3a,(%esp)
 27b:	e8 b2 05 00 00       	call   832 <open>

    char dummy[1024];
    read(pwd,dummy,sizeof(dummy));
 280:	c7 44 24 08 00 04 00 	movl   $0x400,0x8(%esp)
 287:	00 
 288:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 28c:	89 04 24             	mov    %eax,(%esp)
    int pwd;
    char *tmp = {""};
    strcat(tmp,path);
    tmp[strlen(tmp)-1]='\0';
    strcat(tmp,".pwd");
    pwd = open(tmp,O_RDONLY);
 28f:	89 c6                	mov    %eax,%esi

    char dummy[1024];
    read(pwd,dummy,sizeof(dummy));
 291:	e8 74 05 00 00       	call   80a <read>
    dummy[strlen(dummy)] = '.';
 296:	89 1c 24             	mov    %ebx,(%esp)
 299:	e8 b2 03 00 00       	call   650 <strlen>
    dummy[strlen(dummy)+1] = '\0';
 29e:	89 1c 24             	mov    %ebx,(%esp)
    strcat(tmp,".pwd");
    pwd = open(tmp,O_RDONLY);

    char dummy[1024];
    read(pwd,dummy,sizeof(dummy));
    dummy[strlen(dummy)] = '.';
 2a1:	c6 84 05 e8 fb ff ff 	movb   $0x2e,-0x418(%ebp,%eax,1)
 2a8:	2e 
    dummy[strlen(dummy)+1] = '\0';
 2a9:	e8 a2 03 00 00       	call   650 <strlen>
    //printf(1,"alamat : %s\n",dummy);

    if((fd = open(dummy, 0)) < 0){
 2ae:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 2b5:	00 
 2b6:	89 1c 24             	mov    %ebx,(%esp)
    pwd = open(tmp,O_RDONLY);

    char dummy[1024];
    read(pwd,dummy,sizeof(dummy));
    dummy[strlen(dummy)] = '.';
    dummy[strlen(dummy)+1] = '\0';
 2b9:	c6 84 05 e9 fb ff ff 	movb   $0x0,-0x417(%ebp,%eax,1)
 2c0:	00 
    //printf(1,"alamat : %s\n",dummy);

    if((fd = open(dummy, 0)) < 0){
 2c1:	e8 6c 05 00 00       	call   832 <open>
 2c6:	85 c0                	test   %eax,%eax
 2c8:	89 c7                	mov    %eax,%edi
 2ca:	0f 88 70 02 00 00    	js     540 <mv_all+0x320>
        printf(2, "ls: cannot open %s\n", dummy);
        return;
    }

    if(fstat(fd, &st) < 0){
 2d0:	8d 85 d4 f9 ff ff    	lea    -0x62c(%ebp),%eax
 2d6:	89 44 24 04          	mov    %eax,0x4(%esp)
 2da:	89 3c 24             	mov    %edi,(%esp)
 2dd:	e8 68 05 00 00       	call   84a <fstat>
 2e2:	85 c0                	test   %eax,%eax
 2e4:	0f 88 9e 02 00 00    	js     588 <mv_all+0x368>
        printf(2, "ls: cannot stat %s\n", dummy);
        close(fd);
        return;
    }

    switch(st.type){
 2ea:	0f b7 85 d4 f9 ff ff 	movzwl -0x62c(%ebp),%eax
 2f1:	66 83 f8 01          	cmp    $0x1,%ax
 2f5:	74 79                	je     370 <mv_all+0x150>
 2f7:	66 83 f8 02          	cmp    $0x2,%ax
 2fb:	75 54                	jne    351 <mv_all+0x131>
        case T_FILE:
            printf(1, "%s %d %d %d\n", fmtname(dummy), st.type, st.ino, st.size);
 2fd:	8b 8d e4 f9 ff ff    	mov    -0x61c(%ebp),%ecx
 303:	8b 95 dc f9 ff ff    	mov    -0x624(%ebp),%edx
 309:	89 1c 24             	mov    %ebx,(%esp)
 30c:	89 8d b0 f9 ff ff    	mov    %ecx,-0x650(%ebp)
 312:	89 95 b4 f9 ff ff    	mov    %edx,-0x64c(%ebp)
 318:	e8 d3 fd ff ff       	call   f0 <fmtname>
 31d:	8b 8d b0 f9 ff ff    	mov    -0x650(%ebp),%ecx
 323:	8b 95 b4 f9 ff ff    	mov    -0x64c(%ebp),%edx
 329:	c7 44 24 0c 02 00 00 	movl   $0x2,0xc(%esp)
 330:	00 
 331:	c7 44 24 04 0e 0d 00 	movl   $0xd0e,0x4(%esp)
 338:	00 
 339:	89 4c 24 14          	mov    %ecx,0x14(%esp)
 33d:	89 54 24 10          	mov    %edx,0x10(%esp)
 341:	89 44 24 08          	mov    %eax,0x8(%esp)
 345:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 34c:	e8 ef 05 00 00       	call   940 <printf>
                    mv(tmp1,tmp);
                }
            }
            break;
    }
    close(pwd);
 351:	89 34 24             	mov    %esi,(%esp)
 354:	e8 c1 04 00 00       	call   81a <close>
    close(fd);
 359:	89 3c 24             	mov    %edi,(%esp)
 35c:	e8 b9 04 00 00       	call   81a <close>
}
 361:	81 c4 6c 06 00 00    	add    $0x66c,%esp
 367:	5b                   	pop    %ebx
 368:	5e                   	pop    %esi
 369:	5f                   	pop    %edi
 36a:	5d                   	pop    %ebp
 36b:	c3                   	ret    
 36c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        case T_FILE:
            printf(1, "%s %d %d %d\n", fmtname(dummy), st.type, st.ino, st.size);
            break;

        case T_DIR:
            if(strlen(dummy) + 1 + DIRSIZ + 1 > sizeof buf){
 370:	89 1c 24             	mov    %ebx,(%esp)
 373:	e8 d8 02 00 00       	call   650 <strlen>
 378:	83 c0 10             	add    $0x10,%eax
 37b:	3d 00 02 00 00       	cmp    $0x200,%eax
 380:	0f 87 e2 01 00 00    	ja     568 <mv_all+0x348>
                printf(1, "ls: path too long\n");
                break;
            }
            strcpy(buf, dummy);
 386:	8d 85 e8 f9 ff ff    	lea    -0x618(%ebp),%eax
 38c:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 390:	89 04 24             	mov    %eax,(%esp)
 393:	e8 38 02 00 00       	call   5d0 <strcpy>
            p = buf+strlen(buf);
 398:	8d 85 e8 f9 ff ff    	lea    -0x618(%ebp),%eax
 39e:	89 04 24             	mov    %eax,(%esp)
 3a1:	e8 aa 02 00 00       	call   650 <strlen>
 3a6:	8d 8d e8 f9 ff ff    	lea    -0x618(%ebp),%ecx
 3ac:	01 c8                	add    %ecx,%eax
            *p++ = '/';
 3ae:	8d 48 01             	lea    0x1(%eax),%ecx
            if(strlen(dummy) + 1 + DIRSIZ + 1 > sizeof buf){
                printf(1, "ls: path too long\n");
                break;
            }
            strcpy(buf, dummy);
            p = buf+strlen(buf);
 3b1:	89 85 ac f9 ff ff    	mov    %eax,-0x654(%ebp)
            *p++ = '/';
 3b7:	89 8d a8 f9 ff ff    	mov    %ecx,-0x658(%ebp)
 3bd:	c6 00 2f             	movb   $0x2f,(%eax)

            while(read(fd, &de, sizeof(de)) == sizeof(de)){
 3c0:	8d 85 c4 f9 ff ff    	lea    -0x63c(%ebp),%eax
 3c6:	c7 44 24 08 10 00 00 	movl   $0x10,0x8(%esp)
 3cd:	00 
 3ce:	89 44 24 04          	mov    %eax,0x4(%esp)
 3d2:	89 3c 24             	mov    %edi,(%esp)
 3d5:	e8 30 04 00 00       	call   80a <read>
 3da:	83 f8 10             	cmp    $0x10,%eax
 3dd:	0f 85 6e ff ff ff    	jne    351 <mv_all+0x131>
                if(de.inum == 0) continue;
 3e3:	66 83 bd c4 f9 ff ff 	cmpw   $0x0,-0x63c(%ebp)
 3ea:	00 
 3eb:	74 d3                	je     3c0 <mv_all+0x1a0>
                memmove(p, de.name, DIRSIZ);
 3ed:	8d 85 c6 f9 ff ff    	lea    -0x63a(%ebp),%eax
 3f3:	89 44 24 04          	mov    %eax,0x4(%esp)
 3f7:	8b 85 a8 f9 ff ff    	mov    -0x658(%ebp),%eax
 3fd:	c7 44 24 08 0e 00 00 	movl   $0xe,0x8(%esp)
 404:	00 
 405:	89 04 24             	mov    %eax,(%esp)
 408:	e8 b3 03 00 00       	call   7c0 <memmove>
                p[DIRSIZ] = 0;
 40d:	8b 85 ac f9 ff ff    	mov    -0x654(%ebp),%eax
 413:	c6 40 0f 00          	movb   $0x0,0xf(%eax)
                if(stat(buf, &st) < 0){
 417:	8d 85 d4 f9 ff ff    	lea    -0x62c(%ebp),%eax
 41d:	89 44 24 04          	mov    %eax,0x4(%esp)
 421:	8d 85 e8 f9 ff ff    	lea    -0x618(%ebp),%eax
 427:	89 04 24             	mov    %eax,(%esp)
 42a:	e8 11 03 00 00       	call   740 <stat>
 42f:	85 c0                	test   %eax,%eax
                    printf(1, "ls: cannot stat %s\n", buf);
 431:	8d 85 e8 f9 ff ff    	lea    -0x618(%ebp),%eax

            while(read(fd, &de, sizeof(de)) == sizeof(de)){
                if(de.inum == 0) continue;
                memmove(p, de.name, DIRSIZ);
                p[DIRSIZ] = 0;
                if(stat(buf, &st) < 0){
 437:	0f 88 73 01 00 00    	js     5b0 <mv_all+0x390>
                    printf(1, "ls: cannot stat %s\n", buf);
                    continue;
                }
                if (fmtname(buf)[0] != '.' ){
 43d:	89 04 24             	mov    %eax,(%esp)
 440:	e8 ab fc ff ff       	call   f0 <fmtname>
 445:	80 38 2e             	cmpb   $0x2e,(%eax)
 448:	0f 84 72 ff ff ff    	je     3c0 <mv_all+0x1a0>
                    char *name = fmtname(buf);
 44e:	8d 85 e8 f9 ff ff    	lea    -0x618(%ebp),%eax
 454:	89 04 24             	mov    %eax,(%esp)
 457:	e8 94 fc ff ff       	call   f0 <fmtname>

                    char *tmp1 = malloc(100);
 45c:	c7 04 24 64 00 00 00 	movl   $0x64,(%esp)
                if(stat(buf, &st) < 0){
                    printf(1, "ls: cannot stat %s\n", buf);
                    continue;
                }
                if (fmtname(buf)[0] != '.' ){
                    char *name = fmtname(buf);
 463:	89 85 a4 f9 ff ff    	mov    %eax,-0x65c(%ebp)

                    char *tmp1 = malloc(100);
 469:	e8 52 07 00 00       	call   bc0 <malloc>
                    memset(tmp1,0,100);
 46e:	c7 44 24 08 64 00 00 	movl   $0x64,0x8(%esp)
 475:	00 
 476:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 47d:	00 
 47e:	89 04 24             	mov    %eax,(%esp)
 481:	89 85 b4 f9 ff ff    	mov    %eax,-0x64c(%ebp)
 487:	e8 f4 01 00 00       	call   680 <memset>
                    strcat(tmp1,dummy);
 48c:	8b 95 b4 f9 ff ff    	mov    -0x64c(%ebp),%edx
 492:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 496:	89 14 24             	mov    %edx,(%esp)
 499:	e8 02 fc ff ff       	call   a0 <strcat>
                    tmp1[strlen(tmp1)-1]='\0';
 49e:	8b 95 b4 f9 ff ff    	mov    -0x64c(%ebp),%edx
 4a4:	89 14 24             	mov    %edx,(%esp)
 4a7:	e8 a4 01 00 00       	call   650 <strlen>
 4ac:	8b 95 b4 f9 ff ff    	mov    -0x64c(%ebp),%edx
 4b2:	c6 44 02 ff 00       	movb   $0x0,-0x1(%edx,%eax,1)
                    strcat(tmp1,name);
 4b7:	8b 85 a4 f9 ff ff    	mov    -0x65c(%ebp),%eax
 4bd:	89 14 24             	mov    %edx,(%esp)
 4c0:	89 44 24 04          	mov    %eax,0x4(%esp)
 4c4:	e8 d7 fb ff ff       	call   a0 <strcat>

                    char *tmp = malloc(100);
 4c9:	c7 04 24 64 00 00 00 	movl   $0x64,(%esp)
 4d0:	e8 eb 06 00 00       	call   bc0 <malloc>
                    memset(tmp,0,100);
 4d5:	c7 44 24 08 64 00 00 	movl   $0x64,0x8(%esp)
 4dc:	00 
 4dd:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 4e4:	00 
 4e5:	89 04 24             	mov    %eax,(%esp)
 4e8:	89 85 b0 f9 ff ff    	mov    %eax,-0x650(%ebp)
 4ee:	e8 8d 01 00 00       	call   680 <memset>
                    strcat(tmp,destination);
 4f3:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 4f6:	8b 85 b0 f9 ff ff    	mov    -0x650(%ebp),%eax
 4fc:	89 4c 24 04          	mov    %ecx,0x4(%esp)
 500:	89 04 24             	mov    %eax,(%esp)
 503:	e8 98 fb ff ff       	call   a0 <strcat>
                    strcat(tmp,name);
 508:	8b 8d a4 f9 ff ff    	mov    -0x65c(%ebp),%ecx
 50e:	8b 85 b0 f9 ff ff    	mov    -0x650(%ebp),%eax
 514:	89 4c 24 04          	mov    %ecx,0x4(%esp)
 518:	89 04 24             	mov    %eax,(%esp)
 51b:	e8 80 fb ff ff       	call   a0 <strcat>
                    mv(tmp1,tmp);
 520:	8b 85 b0 f9 ff ff    	mov    -0x650(%ebp),%eax
 526:	8b 95 b4 f9 ff ff    	mov    -0x64c(%ebp),%edx
 52c:	89 44 24 04          	mov    %eax,0x4(%esp)
 530:	89 14 24             	mov    %edx,(%esp)
 533:	e8 f8 fb ff ff       	call   130 <mv>
 538:	e9 83 fe ff ff       	jmp    3c0 <mv_all+0x1a0>
 53d:	8d 76 00             	lea    0x0(%esi),%esi
    dummy[strlen(dummy)] = '.';
    dummy[strlen(dummy)+1] = '\0';
    //printf(1,"alamat : %s\n",dummy);

    if((fd = open(dummy, 0)) < 0){
        printf(2, "ls: cannot open %s\n", dummy);
 540:	89 5c 24 08          	mov    %ebx,0x8(%esp)
 544:	c7 44 24 04 e6 0c 00 	movl   $0xce6,0x4(%esp)
 54b:	00 
 54c:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
 553:	e8 e8 03 00 00       	call   940 <printf>
            }
            break;
    }
    close(pwd);
    close(fd);
}
 558:	81 c4 6c 06 00 00    	add    $0x66c,%esp
 55e:	5b                   	pop    %ebx
 55f:	5e                   	pop    %esi
 560:	5f                   	pop    %edi
 561:	5d                   	pop    %ebp
 562:	c3                   	ret    
 563:	90                   	nop
 564:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
            printf(1, "%s %d %d %d\n", fmtname(dummy), st.type, st.ino, st.size);
            break;

        case T_DIR:
            if(strlen(dummy) + 1 + DIRSIZ + 1 > sizeof buf){
                printf(1, "ls: path too long\n");
 568:	c7 44 24 04 1b 0d 00 	movl   $0xd1b,0x4(%esp)
 56f:	00 
 570:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 577:	e8 c4 03 00 00       	call   940 <printf>
                break;
 57c:	e9 d0 fd ff ff       	jmp    351 <mv_all+0x131>
 581:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        printf(2, "ls: cannot open %s\n", dummy);
        return;
    }

    if(fstat(fd, &st) < 0){
        printf(2, "ls: cannot stat %s\n", dummy);
 588:	89 5c 24 08          	mov    %ebx,0x8(%esp)
 58c:	c7 44 24 04 fa 0c 00 	movl   $0xcfa,0x4(%esp)
 593:	00 
 594:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
 59b:	e8 a0 03 00 00       	call   940 <printf>
        close(fd);
 5a0:	89 3c 24             	mov    %edi,(%esp)
 5a3:	e8 72 02 00 00       	call   81a <close>
        return;
 5a8:	e9 b4 fd ff ff       	jmp    361 <mv_all+0x141>
 5ad:	8d 76 00             	lea    0x0(%esi),%esi
            while(read(fd, &de, sizeof(de)) == sizeof(de)){
                if(de.inum == 0) continue;
                memmove(p, de.name, DIRSIZ);
                p[DIRSIZ] = 0;
                if(stat(buf, &st) < 0){
                    printf(1, "ls: cannot stat %s\n", buf);
 5b0:	89 44 24 08          	mov    %eax,0x8(%esp)
 5b4:	c7 44 24 04 fa 0c 00 	movl   $0xcfa,0x4(%esp)
 5bb:	00 
 5bc:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 5c3:	e8 78 03 00 00       	call   940 <printf>
                    continue;
 5c8:	e9 f3 fd ff ff       	jmp    3c0 <mv_all+0x1a0>
 5cd:	66 90                	xchg   %ax,%ax
 5cf:	90                   	nop

000005d0 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, char *t)
{
 5d0:	55                   	push   %ebp
 5d1:	89 e5                	mov    %esp,%ebp
 5d3:	8b 45 08             	mov    0x8(%ebp),%eax
 5d6:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 5d9:	53                   	push   %ebx
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 5da:	89 c2                	mov    %eax,%edx
 5dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 5e0:	83 c1 01             	add    $0x1,%ecx
 5e3:	0f b6 59 ff          	movzbl -0x1(%ecx),%ebx
 5e7:	83 c2 01             	add    $0x1,%edx
 5ea:	84 db                	test   %bl,%bl
 5ec:	88 5a ff             	mov    %bl,-0x1(%edx)
 5ef:	75 ef                	jne    5e0 <strcpy+0x10>
    ;
  return os;
}
 5f1:	5b                   	pop    %ebx
 5f2:	5d                   	pop    %ebp
 5f3:	c3                   	ret    
 5f4:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 5fa:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00000600 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 600:	55                   	push   %ebp
 601:	89 e5                	mov    %esp,%ebp
 603:	8b 55 08             	mov    0x8(%ebp),%edx
 606:	53                   	push   %ebx
 607:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 60a:	0f b6 02             	movzbl (%edx),%eax
 60d:	84 c0                	test   %al,%al
 60f:	74 2d                	je     63e <strcmp+0x3e>
 611:	0f b6 19             	movzbl (%ecx),%ebx
 614:	38 d8                	cmp    %bl,%al
 616:	74 0e                	je     626 <strcmp+0x26>
 618:	eb 2b                	jmp    645 <strcmp+0x45>
 61a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 620:	38 c8                	cmp    %cl,%al
 622:	75 15                	jne    639 <strcmp+0x39>
    p++, q++;
 624:	89 d9                	mov    %ebx,%ecx
 626:	83 c2 01             	add    $0x1,%edx
}

int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
 629:	0f b6 02             	movzbl (%edx),%eax
    p++, q++;
 62c:	8d 59 01             	lea    0x1(%ecx),%ebx
}

int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
 62f:	0f b6 49 01          	movzbl 0x1(%ecx),%ecx
 633:	84 c0                	test   %al,%al
 635:	75 e9                	jne    620 <strcmp+0x20>
 637:	31 c0                	xor    %eax,%eax
    p++, q++;
  return (uchar)*p - (uchar)*q;
 639:	29 c8                	sub    %ecx,%eax
}
 63b:	5b                   	pop    %ebx
 63c:	5d                   	pop    %ebp
 63d:	c3                   	ret    
 63e:	0f b6 09             	movzbl (%ecx),%ecx
}

int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
 641:	31 c0                	xor    %eax,%eax
 643:	eb f4                	jmp    639 <strcmp+0x39>
 645:	0f b6 cb             	movzbl %bl,%ecx
 648:	eb ef                	jmp    639 <strcmp+0x39>
 64a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000650 <strlen>:
  return (uchar)*p - (uchar)*q;
}

uint
strlen(char *s)
{
 650:	55                   	push   %ebp
 651:	89 e5                	mov    %esp,%ebp
 653:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  for(n = 0; s[n]; n++)
 656:	80 39 00             	cmpb   $0x0,(%ecx)
 659:	74 12                	je     66d <strlen+0x1d>
 65b:	31 d2                	xor    %edx,%edx
 65d:	8d 76 00             	lea    0x0(%esi),%esi
 660:	83 c2 01             	add    $0x1,%edx
 663:	80 3c 11 00          	cmpb   $0x0,(%ecx,%edx,1)
 667:	89 d0                	mov    %edx,%eax
 669:	75 f5                	jne    660 <strlen+0x10>
    ;
  return n;
}
 66b:	5d                   	pop    %ebp
 66c:	c3                   	ret    
uint
strlen(char *s)
{
  int n;

  for(n = 0; s[n]; n++)
 66d:	31 c0                	xor    %eax,%eax
    ;
  return n;
}
 66f:	5d                   	pop    %ebp
 670:	c3                   	ret    
 671:	eb 0d                	jmp    680 <memset>
 673:	90                   	nop
 674:	90                   	nop
 675:	90                   	nop
 676:	90                   	nop
 677:	90                   	nop
 678:	90                   	nop
 679:	90                   	nop
 67a:	90                   	nop
 67b:	90                   	nop
 67c:	90                   	nop
 67d:	90                   	nop
 67e:	90                   	nop
 67f:	90                   	nop

00000680 <memset>:

void*
memset(void *dst, int c, uint n)
{
 680:	55                   	push   %ebp
 681:	89 e5                	mov    %esp,%ebp
 683:	8b 55 08             	mov    0x8(%ebp),%edx
 686:	57                   	push   %edi
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
 687:	8b 4d 10             	mov    0x10(%ebp),%ecx
 68a:	8b 45 0c             	mov    0xc(%ebp),%eax
 68d:	89 d7                	mov    %edx,%edi
 68f:	fc                   	cld    
 690:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 692:	89 d0                	mov    %edx,%eax
 694:	5f                   	pop    %edi
 695:	5d                   	pop    %ebp
 696:	c3                   	ret    
 697:	89 f6                	mov    %esi,%esi
 699:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000006a0 <strchr>:

char*
strchr(const char *s, char c)
{
 6a0:	55                   	push   %ebp
 6a1:	89 e5                	mov    %esp,%ebp
 6a3:	8b 45 08             	mov    0x8(%ebp),%eax
 6a6:	53                   	push   %ebx
 6a7:	8b 55 0c             	mov    0xc(%ebp),%edx
  for(; *s; s++)
 6aa:	0f b6 18             	movzbl (%eax),%ebx
 6ad:	84 db                	test   %bl,%bl
 6af:	74 1d                	je     6ce <strchr+0x2e>
    if(*s == c)
 6b1:	38 d3                	cmp    %dl,%bl
 6b3:	89 d1                	mov    %edx,%ecx
 6b5:	75 0d                	jne    6c4 <strchr+0x24>
 6b7:	eb 17                	jmp    6d0 <strchr+0x30>
 6b9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 6c0:	38 ca                	cmp    %cl,%dl
 6c2:	74 0c                	je     6d0 <strchr+0x30>
}

char*
strchr(const char *s, char c)
{
  for(; *s; s++)
 6c4:	83 c0 01             	add    $0x1,%eax
 6c7:	0f b6 10             	movzbl (%eax),%edx
 6ca:	84 d2                	test   %dl,%dl
 6cc:	75 f2                	jne    6c0 <strchr+0x20>
    if(*s == c)
      return (char*)s;
  return 0;
 6ce:	31 c0                	xor    %eax,%eax
}
 6d0:	5b                   	pop    %ebx
 6d1:	5d                   	pop    %ebp
 6d2:	c3                   	ret    
 6d3:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 6d9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000006e0 <gets>:

char*
gets(char *buf, int max)
{
 6e0:	55                   	push   %ebp
 6e1:	89 e5                	mov    %esp,%ebp
 6e3:	57                   	push   %edi
 6e4:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 6e5:	31 f6                	xor    %esi,%esi
  return 0;
}

char*
gets(char *buf, int max)
{
 6e7:	53                   	push   %ebx
 6e8:	83 ec 2c             	sub    $0x2c,%esp
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
 6eb:	8d 7d e7             	lea    -0x19(%ebp),%edi
gets(char *buf, int max)
{
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 6ee:	eb 31                	jmp    721 <gets+0x41>
    cc = read(0, &c, 1);
 6f0:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 6f7:	00 
 6f8:	89 7c 24 04          	mov    %edi,0x4(%esp)
 6fc:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 703:	e8 02 01 00 00       	call   80a <read>
    if(cc < 1)
 708:	85 c0                	test   %eax,%eax
 70a:	7e 1d                	jle    729 <gets+0x49>
      break;
    buf[i++] = c;
 70c:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
gets(char *buf, int max)
{
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 710:	89 de                	mov    %ebx,%esi
    cc = read(0, &c, 1);
    if(cc < 1)
      break;
    buf[i++] = c;
 712:	8b 55 08             	mov    0x8(%ebp),%edx
    if(c == '\n' || c == '\r')
 715:	3c 0d                	cmp    $0xd,%al

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
    if(cc < 1)
      break;
    buf[i++] = c;
 717:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 71b:	74 0c                	je     729 <gets+0x49>
 71d:	3c 0a                	cmp    $0xa,%al
 71f:	74 08                	je     729 <gets+0x49>
gets(char *buf, int max)
{
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 721:	8d 5e 01             	lea    0x1(%esi),%ebx
 724:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 727:	7c c7                	jl     6f0 <gets+0x10>
      break;
    buf[i++] = c;
    if(c == '\n' || c == '\r')
      break;
  }
  buf[i] = '\0';
 729:	8b 45 08             	mov    0x8(%ebp),%eax
 72c:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
 730:	83 c4 2c             	add    $0x2c,%esp
 733:	5b                   	pop    %ebx
 734:	5e                   	pop    %esi
 735:	5f                   	pop    %edi
 736:	5d                   	pop    %ebp
 737:	c3                   	ret    
 738:	90                   	nop
 739:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000740 <stat>:

int
stat(char *n, struct stat *st)
{
 740:	55                   	push   %ebp
 741:	89 e5                	mov    %esp,%ebp
 743:	56                   	push   %esi
 744:	53                   	push   %ebx
 745:	83 ec 10             	sub    $0x10,%esp
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 748:	8b 45 08             	mov    0x8(%ebp),%eax
 74b:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 752:	00 
 753:	89 04 24             	mov    %eax,(%esp)
 756:	e8 d7 00 00 00       	call   832 <open>
  if(fd < 0)
 75b:	85 c0                	test   %eax,%eax
stat(char *n, struct stat *st)
{
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 75d:	89 c3                	mov    %eax,%ebx
  if(fd < 0)
 75f:	78 27                	js     788 <stat+0x48>
    return -1;
  r = fstat(fd, st);
 761:	8b 45 0c             	mov    0xc(%ebp),%eax
 764:	89 1c 24             	mov    %ebx,(%esp)
 767:	89 44 24 04          	mov    %eax,0x4(%esp)
 76b:	e8 da 00 00 00       	call   84a <fstat>
  close(fd);
 770:	89 1c 24             	mov    %ebx,(%esp)
  int r;

  fd = open(n, O_RDONLY);
  if(fd < 0)
    return -1;
  r = fstat(fd, st);
 773:	89 c6                	mov    %eax,%esi
  close(fd);
 775:	e8 a0 00 00 00       	call   81a <close>
  return r;
 77a:	89 f0                	mov    %esi,%eax
}
 77c:	83 c4 10             	add    $0x10,%esp
 77f:	5b                   	pop    %ebx
 780:	5e                   	pop    %esi
 781:	5d                   	pop    %ebp
 782:	c3                   	ret    
 783:	90                   	nop
 784:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  int fd;
  int r;

  fd = open(n, O_RDONLY);
  if(fd < 0)
    return -1;
 788:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 78d:	eb ed                	jmp    77c <stat+0x3c>
 78f:	90                   	nop

00000790 <atoi>:
  return r;
}

int
atoi(const char *s)
{
 790:	55                   	push   %ebp
 791:	89 e5                	mov    %esp,%ebp
 793:	8b 4d 08             	mov    0x8(%ebp),%ecx
 796:	53                   	push   %ebx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 797:	0f be 11             	movsbl (%ecx),%edx
 79a:	8d 42 d0             	lea    -0x30(%edx),%eax
 79d:	3c 09                	cmp    $0x9,%al
int
atoi(const char *s)
{
  int n;

  n = 0;
 79f:	b8 00 00 00 00       	mov    $0x0,%eax
  while('0' <= *s && *s <= '9')
 7a4:	77 17                	ja     7bd <atoi+0x2d>
 7a6:	66 90                	xchg   %ax,%ax
    n = n*10 + *s++ - '0';
 7a8:	83 c1 01             	add    $0x1,%ecx
 7ab:	8d 04 80             	lea    (%eax,%eax,4),%eax
 7ae:	8d 44 42 d0          	lea    -0x30(%edx,%eax,2),%eax
atoi(const char *s)
{
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 7b2:	0f be 11             	movsbl (%ecx),%edx
 7b5:	8d 5a d0             	lea    -0x30(%edx),%ebx
 7b8:	80 fb 09             	cmp    $0x9,%bl
 7bb:	76 eb                	jbe    7a8 <atoi+0x18>
    n = n*10 + *s++ - '0';
  return n;
}
 7bd:	5b                   	pop    %ebx
 7be:	5d                   	pop    %ebp
 7bf:	c3                   	ret    

000007c0 <memmove>:

void*
memmove(void *vdst, void *vsrc, int n)
{
 7c0:	55                   	push   %ebp
  char *dst, *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 7c1:	31 d2                	xor    %edx,%edx
  return n;
}

void*
memmove(void *vdst, void *vsrc, int n)
{
 7c3:	89 e5                	mov    %esp,%ebp
 7c5:	56                   	push   %esi
 7c6:	8b 45 08             	mov    0x8(%ebp),%eax
 7c9:	53                   	push   %ebx
 7ca:	8b 5d 10             	mov    0x10(%ebp),%ebx
 7cd:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst, *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 7d0:	85 db                	test   %ebx,%ebx
 7d2:	7e 12                	jle    7e6 <memmove+0x26>
 7d4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    *dst++ = *src++;
 7d8:	0f b6 0c 16          	movzbl (%esi,%edx,1),%ecx
 7dc:	88 0c 10             	mov    %cl,(%eax,%edx,1)
 7df:	83 c2 01             	add    $0x1,%edx
{
  char *dst, *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 7e2:	39 da                	cmp    %ebx,%edx
 7e4:	75 f2                	jne    7d8 <memmove+0x18>
    *dst++ = *src++;
  return vdst;
}
 7e6:	5b                   	pop    %ebx
 7e7:	5e                   	pop    %esi
 7e8:	5d                   	pop    %ebp
 7e9:	c3                   	ret    

000007ea <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 7ea:	b8 01 00 00 00       	mov    $0x1,%eax
 7ef:	cd 40                	int    $0x40
 7f1:	c3                   	ret    

000007f2 <exit>:
SYSCALL(exit)
 7f2:	b8 02 00 00 00       	mov    $0x2,%eax
 7f7:	cd 40                	int    $0x40
 7f9:	c3                   	ret    

000007fa <wait>:
SYSCALL(wait)
 7fa:	b8 03 00 00 00       	mov    $0x3,%eax
 7ff:	cd 40                	int    $0x40
 801:	c3                   	ret    

00000802 <pipe>:
SYSCALL(pipe)
 802:	b8 04 00 00 00       	mov    $0x4,%eax
 807:	cd 40                	int    $0x40
 809:	c3                   	ret    

0000080a <read>:
SYSCALL(read)
 80a:	b8 05 00 00 00       	mov    $0x5,%eax
 80f:	cd 40                	int    $0x40
 811:	c3                   	ret    

00000812 <write>:
SYSCALL(write)
 812:	b8 10 00 00 00       	mov    $0x10,%eax
 817:	cd 40                	int    $0x40
 819:	c3                   	ret    

0000081a <close>:
SYSCALL(close)
 81a:	b8 15 00 00 00       	mov    $0x15,%eax
 81f:	cd 40                	int    $0x40
 821:	c3                   	ret    

00000822 <kill>:
SYSCALL(kill)
 822:	b8 06 00 00 00       	mov    $0x6,%eax
 827:	cd 40                	int    $0x40
 829:	c3                   	ret    

0000082a <exec>:
SYSCALL(exec)
 82a:	b8 07 00 00 00       	mov    $0x7,%eax
 82f:	cd 40                	int    $0x40
 831:	c3                   	ret    

00000832 <open>:
SYSCALL(open)
 832:	b8 0f 00 00 00       	mov    $0xf,%eax
 837:	cd 40                	int    $0x40
 839:	c3                   	ret    

0000083a <mknod>:
SYSCALL(mknod)
 83a:	b8 11 00 00 00       	mov    $0x11,%eax
 83f:	cd 40                	int    $0x40
 841:	c3                   	ret    

00000842 <unlink>:
SYSCALL(unlink)
 842:	b8 12 00 00 00       	mov    $0x12,%eax
 847:	cd 40                	int    $0x40
 849:	c3                   	ret    

0000084a <fstat>:
SYSCALL(fstat)
 84a:	b8 08 00 00 00       	mov    $0x8,%eax
 84f:	cd 40                	int    $0x40
 851:	c3                   	ret    

00000852 <link>:
SYSCALL(link)
 852:	b8 13 00 00 00       	mov    $0x13,%eax
 857:	cd 40                	int    $0x40
 859:	c3                   	ret    

0000085a <mkdir>:
SYSCALL(mkdir)
 85a:	b8 14 00 00 00       	mov    $0x14,%eax
 85f:	cd 40                	int    $0x40
 861:	c3                   	ret    

00000862 <chdir>:
SYSCALL(chdir)
 862:	b8 09 00 00 00       	mov    $0x9,%eax
 867:	cd 40                	int    $0x40
 869:	c3                   	ret    

0000086a <dup>:
SYSCALL(dup)
 86a:	b8 0a 00 00 00       	mov    $0xa,%eax
 86f:	cd 40                	int    $0x40
 871:	c3                   	ret    

00000872 <getpid>:
SYSCALL(getpid)
 872:	b8 0b 00 00 00       	mov    $0xb,%eax
 877:	cd 40                	int    $0x40
 879:	c3                   	ret    

0000087a <sbrk>:
SYSCALL(sbrk)
 87a:	b8 0c 00 00 00       	mov    $0xc,%eax
 87f:	cd 40                	int    $0x40
 881:	c3                   	ret    

00000882 <sleep>:
SYSCALL(sleep)
 882:	b8 0d 00 00 00       	mov    $0xd,%eax
 887:	cd 40                	int    $0x40
 889:	c3                   	ret    

0000088a <uptime>:
SYSCALL(uptime)
 88a:	b8 0e 00 00 00       	mov    $0xe,%eax
 88f:	cd 40                	int    $0x40
 891:	c3                   	ret    
 892:	66 90                	xchg   %ax,%ax
 894:	66 90                	xchg   %ax,%ax
 896:	66 90                	xchg   %ax,%ax
 898:	66 90                	xchg   %ax,%ax
 89a:	66 90                	xchg   %ax,%ax
 89c:	66 90                	xchg   %ax,%ax
 89e:	66 90                	xchg   %ax,%ax

000008a0 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 8a0:	55                   	push   %ebp
 8a1:	89 e5                	mov    %esp,%ebp
 8a3:	57                   	push   %edi
 8a4:	56                   	push   %esi
 8a5:	89 c6                	mov    %eax,%esi
 8a7:	53                   	push   %ebx
 8a8:	83 ec 4c             	sub    $0x4c,%esp
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
 8ab:	8b 5d 08             	mov    0x8(%ebp),%ebx
 8ae:	85 db                	test   %ebx,%ebx
 8b0:	74 09                	je     8bb <printint+0x1b>
 8b2:	89 d0                	mov    %edx,%eax
 8b4:	c1 e8 1f             	shr    $0x1f,%eax
 8b7:	84 c0                	test   %al,%al
 8b9:	75 75                	jne    930 <printint+0x90>
    neg = 1;
    x = -xx;
  } else {
    x = xx;
 8bb:	89 d0                	mov    %edx,%eax
  static char digits[] = "0123456789ABCDEF";
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
 8bd:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
 8c4:	89 75 c0             	mov    %esi,-0x40(%ebp)
    x = -xx;
  } else {
    x = xx;
  }

  i = 0;
 8c7:	31 ff                	xor    %edi,%edi
 8c9:	89 ce                	mov    %ecx,%esi
 8cb:	8d 5d d7             	lea    -0x29(%ebp),%ebx
 8ce:	eb 02                	jmp    8d2 <printint+0x32>
  do{
    buf[i++] = digits[x % base];
 8d0:	89 cf                	mov    %ecx,%edi
 8d2:	31 d2                	xor    %edx,%edx
 8d4:	f7 f6                	div    %esi
 8d6:	8d 4f 01             	lea    0x1(%edi),%ecx
 8d9:	0f b6 92 4b 0d 00 00 	movzbl 0xd4b(%edx),%edx
  }while((x /= base) != 0);
 8e0:	85 c0                	test   %eax,%eax
    x = xx;
  }

  i = 0;
  do{
    buf[i++] = digits[x % base];
 8e2:	88 14 0b             	mov    %dl,(%ebx,%ecx,1)
  }while((x /= base) != 0);
 8e5:	75 e9                	jne    8d0 <printint+0x30>
  if(neg)
 8e7:	8b 55 c4             	mov    -0x3c(%ebp),%edx
    x = xx;
  }

  i = 0;
  do{
    buf[i++] = digits[x % base];
 8ea:	89 c8                	mov    %ecx,%eax
 8ec:	8b 75 c0             	mov    -0x40(%ebp),%esi
  }while((x /= base) != 0);
  if(neg)
 8ef:	85 d2                	test   %edx,%edx
 8f1:	74 08                	je     8fb <printint+0x5b>
    buf[i++] = '-';
 8f3:	8d 4f 02             	lea    0x2(%edi),%ecx
 8f6:	c6 44 05 d8 2d       	movb   $0x2d,-0x28(%ebp,%eax,1)

  while(--i >= 0)
 8fb:	8d 79 ff             	lea    -0x1(%ecx),%edi
 8fe:	66 90                	xchg   %ax,%ax
 900:	0f b6 44 3d d8       	movzbl -0x28(%ebp,%edi,1),%eax
 905:	83 ef 01             	sub    $0x1,%edi
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 908:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 90f:	00 
 910:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 914:	89 34 24             	mov    %esi,(%esp)
 917:	88 45 d7             	mov    %al,-0x29(%ebp)
 91a:	e8 f3 fe ff ff       	call   812 <write>
    buf[i++] = digits[x % base];
  }while((x /= base) != 0);
  if(neg)
    buf[i++] = '-';

  while(--i >= 0)
 91f:	83 ff ff             	cmp    $0xffffffff,%edi
 922:	75 dc                	jne    900 <printint+0x60>
    putc(fd, buf[i]);
}
 924:	83 c4 4c             	add    $0x4c,%esp
 927:	5b                   	pop    %ebx
 928:	5e                   	pop    %esi
 929:	5f                   	pop    %edi
 92a:	5d                   	pop    %ebp
 92b:	c3                   	ret    
 92c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
 930:	89 d0                	mov    %edx,%eax
 932:	f7 d8                	neg    %eax
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
 934:	c7 45 c4 01 00 00 00 	movl   $0x1,-0x3c(%ebp)
 93b:	eb 87                	jmp    8c4 <printint+0x24>
 93d:	8d 76 00             	lea    0x0(%esi),%esi

00000940 <printf>:
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
 940:	55                   	push   %ebp
 941:	89 e5                	mov    %esp,%ebp
 943:	57                   	push   %edi
  char *s;
  int c, i, state;
  uint *ap;

  state = 0;
 944:	31 ff                	xor    %edi,%edi
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
 946:	56                   	push   %esi
 947:	53                   	push   %ebx
 948:	83 ec 3c             	sub    $0x3c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 94b:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  char *s;
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
 94e:	8d 45 10             	lea    0x10(%ebp),%eax
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
 951:	8b 75 08             	mov    0x8(%ebp),%esi
  char *s;
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
 954:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  for(i = 0; fmt[i]; i++){
 957:	0f b6 13             	movzbl (%ebx),%edx
 95a:	83 c3 01             	add    $0x1,%ebx
 95d:	84 d2                	test   %dl,%dl
 95f:	75 39                	jne    99a <printf+0x5a>
 961:	e9 c2 00 00 00       	jmp    a28 <printf+0xe8>
 966:	66 90                	xchg   %ax,%ax
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
 968:	83 fa 25             	cmp    $0x25,%edx
 96b:	0f 84 bf 00 00 00    	je     a30 <printf+0xf0>
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 971:	8d 45 e2             	lea    -0x1e(%ebp),%eax
 974:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 97b:	00 
 97c:	89 44 24 04          	mov    %eax,0x4(%esp)
 980:	89 34 24             	mov    %esi,(%esp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
      } else {
        putc(fd, c);
 983:	88 55 e2             	mov    %dl,-0x1e(%ebp)
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 986:	e8 87 fe ff ff       	call   812 <write>
 98b:	83 c3 01             	add    $0x1,%ebx
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 98e:	0f b6 53 ff          	movzbl -0x1(%ebx),%edx
 992:	84 d2                	test   %dl,%dl
 994:	0f 84 8e 00 00 00    	je     a28 <printf+0xe8>
    c = fmt[i] & 0xff;
    if(state == 0){
 99a:	85 ff                	test   %edi,%edi
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    c = fmt[i] & 0xff;
 99c:	0f be c2             	movsbl %dl,%eax
    if(state == 0){
 99f:	74 c7                	je     968 <printf+0x28>
      if(c == '%'){
        state = '%';
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
 9a1:	83 ff 25             	cmp    $0x25,%edi
 9a4:	75 e5                	jne    98b <printf+0x4b>
      if(c == 'd'){
 9a6:	83 fa 64             	cmp    $0x64,%edx
 9a9:	0f 84 31 01 00 00    	je     ae0 <printf+0x1a0>
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
 9af:	25 f7 00 00 00       	and    $0xf7,%eax
 9b4:	83 f8 70             	cmp    $0x70,%eax
 9b7:	0f 84 83 00 00 00    	je     a40 <printf+0x100>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
 9bd:	83 fa 73             	cmp    $0x73,%edx
 9c0:	0f 84 a2 00 00 00    	je     a68 <printf+0x128>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
 9c6:	83 fa 63             	cmp    $0x63,%edx
 9c9:	0f 84 35 01 00 00    	je     b04 <printf+0x1c4>
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
 9cf:	83 fa 25             	cmp    $0x25,%edx
 9d2:	0f 84 e0 00 00 00    	je     ab8 <printf+0x178>
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 9d8:	8d 45 e6             	lea    -0x1a(%ebp),%eax
 9db:	83 c3 01             	add    $0x1,%ebx
 9de:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 9e5:	00 
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 9e6:	31 ff                	xor    %edi,%edi
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 9e8:	89 44 24 04          	mov    %eax,0x4(%esp)
 9ec:	89 34 24             	mov    %esi,(%esp)
 9ef:	89 55 d0             	mov    %edx,-0x30(%ebp)
 9f2:	c6 45 e6 25          	movb   $0x25,-0x1a(%ebp)
 9f6:	e8 17 fe ff ff       	call   812 <write>
      } else if(c == '%'){
        putc(fd, c);
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
 9fb:	8b 55 d0             	mov    -0x30(%ebp),%edx
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 9fe:	8d 45 e7             	lea    -0x19(%ebp),%eax
 a01:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 a08:	00 
 a09:	89 44 24 04          	mov    %eax,0x4(%esp)
 a0d:	89 34 24             	mov    %esi,(%esp)
      } else if(c == '%'){
        putc(fd, c);
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
 a10:	88 55 e7             	mov    %dl,-0x19(%ebp)
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 a13:	e8 fa fd ff ff       	call   812 <write>
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 a18:	0f b6 53 ff          	movzbl -0x1(%ebx),%edx
 a1c:	84 d2                	test   %dl,%dl
 a1e:	0f 85 76 ff ff ff    	jne    99a <printf+0x5a>
 a24:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 a28:	83 c4 3c             	add    $0x3c,%esp
 a2b:	5b                   	pop    %ebx
 a2c:	5e                   	pop    %esi
 a2d:	5f                   	pop    %edi
 a2e:	5d                   	pop    %ebp
 a2f:	c3                   	ret    
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
 a30:	bf 25 00 00 00       	mov    $0x25,%edi
 a35:	e9 51 ff ff ff       	jmp    98b <printf+0x4b>
 a3a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
        printint(fd, *ap, 16, 0);
 a40:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 a43:	b9 10 00 00 00       	mov    $0x10,%ecx
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 a48:	31 ff                	xor    %edi,%edi
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
        printint(fd, *ap, 16, 0);
 a4a:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 a51:	8b 10                	mov    (%eax),%edx
 a53:	89 f0                	mov    %esi,%eax
 a55:	e8 46 fe ff ff       	call   8a0 <printint>
        ap++;
 a5a:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
 a5e:	e9 28 ff ff ff       	jmp    98b <printf+0x4b>
 a63:	90                   	nop
 a64:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      } else if(c == 's'){
        s = (char*)*ap;
 a68:	8b 45 d4             	mov    -0x2c(%ebp),%eax
        ap++;
 a6b:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
        ap++;
      } else if(c == 'x' || c == 'p'){
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
        s = (char*)*ap;
 a6f:	8b 38                	mov    (%eax),%edi
        ap++;
        if(s == 0)
          s = "(null)";
 a71:	b8 44 0d 00 00       	mov    $0xd44,%eax
 a76:	85 ff                	test   %edi,%edi
 a78:	0f 44 f8             	cmove  %eax,%edi
        while(*s != 0){
 a7b:	0f b6 07             	movzbl (%edi),%eax
 a7e:	84 c0                	test   %al,%al
 a80:	74 2a                	je     aac <printf+0x16c>
 a82:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 a88:	88 45 e3             	mov    %al,-0x1d(%ebp)
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 a8b:	8d 45 e3             	lea    -0x1d(%ebp),%eax
        ap++;
        if(s == 0)
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
 a8e:	83 c7 01             	add    $0x1,%edi
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 a91:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 a98:	00 
 a99:	89 44 24 04          	mov    %eax,0x4(%esp)
 a9d:	89 34 24             	mov    %esi,(%esp)
 aa0:	e8 6d fd ff ff       	call   812 <write>
      } else if(c == 's'){
        s = (char*)*ap;
        ap++;
        if(s == 0)
          s = "(null)";
        while(*s != 0){
 aa5:	0f b6 07             	movzbl (%edi),%eax
 aa8:	84 c0                	test   %al,%al
 aaa:	75 dc                	jne    a88 <printf+0x148>
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 aac:	31 ff                	xor    %edi,%edi
 aae:	e9 d8 fe ff ff       	jmp    98b <printf+0x4b>
 ab3:	90                   	nop
 ab4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 ab8:	8d 45 e5             	lea    -0x1b(%ebp),%eax
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 abb:	31 ff                	xor    %edi,%edi
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 abd:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 ac4:	00 
 ac5:	89 44 24 04          	mov    %eax,0x4(%esp)
 ac9:	89 34 24             	mov    %esi,(%esp)
 acc:	c6 45 e5 25          	movb   $0x25,-0x1b(%ebp)
 ad0:	e8 3d fd ff ff       	call   812 <write>
 ad5:	e9 b1 fe ff ff       	jmp    98b <printf+0x4b>
 ada:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
 ae0:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 ae3:	b9 0a 00 00 00       	mov    $0xa,%ecx
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 ae8:	66 31 ff             	xor    %di,%di
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
 aeb:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 af2:	8b 10                	mov    (%eax),%edx
 af4:	89 f0                	mov    %esi,%eax
 af6:	e8 a5 fd ff ff       	call   8a0 <printint>
        ap++;
 afb:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
 aff:	e9 87 fe ff ff       	jmp    98b <printf+0x4b>
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
        putc(fd, *ap);
 b04:	8b 45 d4             	mov    -0x2c(%ebp),%eax
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 b07:	31 ff                	xor    %edi,%edi
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
        putc(fd, *ap);
 b09:	8b 00                	mov    (%eax),%eax
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 b0b:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 b12:	00 
 b13:	89 34 24             	mov    %esi,(%esp)
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
        putc(fd, *ap);
 b16:	88 45 e4             	mov    %al,-0x1c(%ebp)
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 b19:	8d 45 e4             	lea    -0x1c(%ebp),%eax
 b1c:	89 44 24 04          	mov    %eax,0x4(%esp)
 b20:	e8 ed fc ff ff       	call   812 <write>
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
        putc(fd, *ap);
        ap++;
 b25:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
 b29:	e9 5d fe ff ff       	jmp    98b <printf+0x4b>
 b2e:	66 90                	xchg   %ax,%ax

00000b30 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 b30:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 b31:	a1 a0 10 00 00       	mov    0x10a0,%eax
static Header base;
static Header *freep;

void
free(void *ap)
{
 b36:	89 e5                	mov    %esp,%ebp
 b38:	57                   	push   %edi
 b39:	56                   	push   %esi
 b3a:	53                   	push   %ebx
 b3b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 b3e:	8b 08                	mov    (%eax),%ecx
void
free(void *ap)
{
  Header *bp, *p;

  bp = (Header*)ap - 1;
 b40:	8d 53 f8             	lea    -0x8(%ebx),%edx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 b43:	39 d0                	cmp    %edx,%eax
 b45:	72 11                	jb     b58 <free+0x28>
 b47:	90                   	nop
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 b48:	39 c8                	cmp    %ecx,%eax
 b4a:	72 04                	jb     b50 <free+0x20>
 b4c:	39 ca                	cmp    %ecx,%edx
 b4e:	72 10                	jb     b60 <free+0x30>
 b50:	89 c8                	mov    %ecx,%eax
free(void *ap)
{
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 b52:	39 d0                	cmp    %edx,%eax
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 b54:	8b 08                	mov    (%eax),%ecx
free(void *ap)
{
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 b56:	73 f0                	jae    b48 <free+0x18>
 b58:	39 ca                	cmp    %ecx,%edx
 b5a:	72 04                	jb     b60 <free+0x30>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 b5c:	39 c8                	cmp    %ecx,%eax
 b5e:	72 f0                	jb     b50 <free+0x20>
      break;
  if(bp + bp->s.size == p->s.ptr){
 b60:	8b 73 fc             	mov    -0x4(%ebx),%esi
 b63:	8d 3c f2             	lea    (%edx,%esi,8),%edi
 b66:	39 cf                	cmp    %ecx,%edi
 b68:	74 1e                	je     b88 <free+0x58>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
 b6a:	89 4b f8             	mov    %ecx,-0x8(%ebx)
  if(p + p->s.size == bp){
 b6d:	8b 48 04             	mov    0x4(%eax),%ecx
 b70:	8d 34 c8             	lea    (%eax,%ecx,8),%esi
 b73:	39 f2                	cmp    %esi,%edx
 b75:	74 28                	je     b9f <free+0x6f>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
 b77:	89 10                	mov    %edx,(%eax)
  freep = p;
 b79:	a3 a0 10 00 00       	mov    %eax,0x10a0
}
 b7e:	5b                   	pop    %ebx
 b7f:	5e                   	pop    %esi
 b80:	5f                   	pop    %edi
 b81:	5d                   	pop    %ebp
 b82:	c3                   	ret    
 b83:	90                   	nop
 b84:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
      break;
  if(bp + bp->s.size == p->s.ptr){
    bp->s.size += p->s.ptr->s.size;
 b88:	03 71 04             	add    0x4(%ecx),%esi
 b8b:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 b8e:	8b 08                	mov    (%eax),%ecx
 b90:	8b 09                	mov    (%ecx),%ecx
 b92:	89 4b f8             	mov    %ecx,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 b95:	8b 48 04             	mov    0x4(%eax),%ecx
 b98:	8d 34 c8             	lea    (%eax,%ecx,8),%esi
 b9b:	39 f2                	cmp    %esi,%edx
 b9d:	75 d8                	jne    b77 <free+0x47>
    p->s.size += bp->s.size;
 b9f:	03 4b fc             	add    -0x4(%ebx),%ecx
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
  freep = p;
 ba2:	a3 a0 10 00 00       	mov    %eax,0x10a0
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
    p->s.size += bp->s.size;
 ba7:	89 48 04             	mov    %ecx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
 baa:	8b 53 f8             	mov    -0x8(%ebx),%edx
 bad:	89 10                	mov    %edx,(%eax)
  } else
    p->s.ptr = bp;
  freep = p;
}
 baf:	5b                   	pop    %ebx
 bb0:	5e                   	pop    %esi
 bb1:	5f                   	pop    %edi
 bb2:	5d                   	pop    %ebp
 bb3:	c3                   	ret    
 bb4:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 bba:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00000bc0 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 bc0:	55                   	push   %ebp
 bc1:	89 e5                	mov    %esp,%ebp
 bc3:	57                   	push   %edi
 bc4:	56                   	push   %esi
 bc5:	53                   	push   %ebx
 bc6:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 bc9:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 bcc:	8b 1d a0 10 00 00    	mov    0x10a0,%ebx
malloc(uint nbytes)
{
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 bd2:	8d 48 07             	lea    0x7(%eax),%ecx
 bd5:	c1 e9 03             	shr    $0x3,%ecx
  if((prevp = freep) == 0){
 bd8:	85 db                	test   %ebx,%ebx
malloc(uint nbytes)
{
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 bda:	8d 71 01             	lea    0x1(%ecx),%esi
  if((prevp = freep) == 0){
 bdd:	0f 84 9b 00 00 00    	je     c7e <malloc+0xbe>
 be3:	8b 13                	mov    (%ebx),%edx
 be5:	8b 7a 04             	mov    0x4(%edx),%edi
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
 be8:	39 fe                	cmp    %edi,%esi
 bea:	76 64                	jbe    c50 <malloc+0x90>
 bec:	8d 04 f5 00 00 00 00 	lea    0x0(,%esi,8),%eax
morecore(uint nu)
{
  char *p;
  Header *hp;

  if(nu < 4096)
 bf3:	bb 00 80 00 00       	mov    $0x8000,%ebx
 bf8:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 bfb:	eb 0e                	jmp    c0b <malloc+0x4b>
 bfd:	8d 76 00             	lea    0x0(%esi),%esi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
  if((prevp = freep) == 0){
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 c00:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 c02:	8b 78 04             	mov    0x4(%eax),%edi
 c05:	39 fe                	cmp    %edi,%esi
 c07:	76 4f                	jbe    c58 <malloc+0x98>
 c09:	89 c2                	mov    %eax,%edx
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 c0b:	3b 15 a0 10 00 00    	cmp    0x10a0,%edx
 c11:	75 ed                	jne    c00 <malloc+0x40>
morecore(uint nu)
{
  char *p;
  Header *hp;

  if(nu < 4096)
 c13:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 c16:	81 fe 00 10 00 00    	cmp    $0x1000,%esi
 c1c:	bf 00 10 00 00       	mov    $0x1000,%edi
 c21:	0f 43 fe             	cmovae %esi,%edi
 c24:	0f 42 c3             	cmovb  %ebx,%eax
    nu = 4096;
  p = sbrk(nu * sizeof(Header));
 c27:	89 04 24             	mov    %eax,(%esp)
 c2a:	e8 4b fc ff ff       	call   87a <sbrk>
  if(p == (char*)-1)
 c2f:	83 f8 ff             	cmp    $0xffffffff,%eax
 c32:	74 18                	je     c4c <malloc+0x8c>
    return 0;
  hp = (Header*)p;
  hp->s.size = nu;
 c34:	89 78 04             	mov    %edi,0x4(%eax)
  free((void*)(hp + 1));
 c37:	83 c0 08             	add    $0x8,%eax
 c3a:	89 04 24             	mov    %eax,(%esp)
 c3d:	e8 ee fe ff ff       	call   b30 <free>
  return freep;
 c42:	8b 15 a0 10 00 00    	mov    0x10a0,%edx
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
      if((p = morecore(nunits)) == 0)
 c48:	85 d2                	test   %edx,%edx
 c4a:	75 b4                	jne    c00 <malloc+0x40>
        return 0;
 c4c:	31 c0                	xor    %eax,%eax
 c4e:	eb 20                	jmp    c70 <malloc+0xb0>
  if((prevp = freep) == 0){
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
 c50:	89 d0                	mov    %edx,%eax
 c52:	89 da                	mov    %ebx,%edx
 c54:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      if(p->s.size == nunits)
 c58:	39 fe                	cmp    %edi,%esi
 c5a:	74 1c                	je     c78 <malloc+0xb8>
        prevp->s.ptr = p->s.ptr;
      else {
        p->s.size -= nunits;
 c5c:	29 f7                	sub    %esi,%edi
 c5e:	89 78 04             	mov    %edi,0x4(%eax)
        p += p->s.size;
 c61:	8d 04 f8             	lea    (%eax,%edi,8),%eax
        p->s.size = nunits;
 c64:	89 70 04             	mov    %esi,0x4(%eax)
      }
      freep = prevp;
 c67:	89 15 a0 10 00 00    	mov    %edx,0x10a0
      return (void*)(p + 1);
 c6d:	83 c0 08             	add    $0x8,%eax
    }
    if(p == freep)
      if((p = morecore(nunits)) == 0)
        return 0;
  }
}
 c70:	83 c4 1c             	add    $0x1c,%esp
 c73:	5b                   	pop    %ebx
 c74:	5e                   	pop    %esi
 c75:	5f                   	pop    %edi
 c76:	5d                   	pop    %ebp
 c77:	c3                   	ret    
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
      if(p->s.size == nunits)
        prevp->s.ptr = p->s.ptr;
 c78:	8b 08                	mov    (%eax),%ecx
 c7a:	89 0a                	mov    %ecx,(%edx)
 c7c:	eb e9                	jmp    c67 <malloc+0xa7>
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
  if((prevp = freep) == 0){
    base.s.ptr = freep = prevp = &base;
 c7e:	c7 05 a0 10 00 00 a4 	movl   $0x10a4,0x10a0
 c85:	10 00 00 
    base.s.size = 0;
 c88:	ba a4 10 00 00       	mov    $0x10a4,%edx
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
  if((prevp = freep) == 0){
    base.s.ptr = freep = prevp = &base;
 c8d:	c7 05 a4 10 00 00 a4 	movl   $0x10a4,0x10a4
 c94:	10 00 00 
    base.s.size = 0;
 c97:	c7 05 a8 10 00 00 00 	movl   $0x0,0x10a8
 c9e:	00 00 00 
 ca1:	e9 46 ff ff ff       	jmp    bec <malloc+0x2c>
