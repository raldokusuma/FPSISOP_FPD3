
_cp:     file format elf32-i386


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
      1f:	74 46                	je     67 <main+0x67>

int main (int argc, char **argv) {
    int all = 0;
    int i;

    for (i=0;i<strlen(argv[1])-1;i++){
      21:	83 c3 01             	add    $0x1,%ebx
      24:	89 04 24             	mov    %eax,(%esp)
      27:	e8 54 0c 00 00       	call   c80 <strlen>
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
      39:	e8 42 0c 00 00       	call   c80 <strlen>
    close(pwd);
    close(fd);
}

int main (int argc, char **argv) {
    int all = 0;
      3e:	31 d2                	xor    %edx,%edx
            printf(1,"Misplaced *\n");
            exit();
        }
    }

    if (argv[1][strlen(argv[1])-1] == '*'){
      40:	80 7c 03 ff 2a       	cmpb   $0x2a,-0x1(%ebx,%eax,1)
      45:	74 5a                	je     a1 <main+0xa1>
        all = 1;
        printf(1,"* Found\n");
    }

    if (argv[1][0] == '-' && argv[1][1] == 'R') cp_recursion(argv[2],argv[3]);
      47:	8b 46 04             	mov    0x4(%esi),%eax
      4a:	80 38 2d             	cmpb   $0x2d,(%eax)
      4d:	74 38                	je     87 <main+0x87>
	else if (all) cp_all(argv[1],argv[2]);
      4f:	85 d2                	test   %edx,%edx
      51:	8b 56 08             	mov    0x8(%esi),%edx
      54:	89 04 24             	mov    %eax,(%esp)
      57:	89 54 24 04          	mov    %edx,0x4(%esp)
      5b:	74 23                	je     80 <main+0x80>
      5d:	e8 7e 02 00 00       	call   2e0 <cp_all>
	else cp(argv[1],argv[2]);

	exit();
      62:	e8 bb 0d 00 00       	call   e22 <exit>
    int all = 0;
    int i;

    for (i=0;i<strlen(argv[1])-1;i++){
        if (argv[1][i] == '*'){
            printf(1,"Misplaced *\n");
      67:	c7 44 24 04 46 13 00 	movl   $0x1346,0x4(%esp)
      6e:	00 
      6f:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
      76:	e8 f5 0e 00 00       	call   f70 <printf>
            exit();
      7b:	e8 a2 0d 00 00       	call   e22 <exit>
        printf(1,"* Found\n");
    }

    if (argv[1][0] == '-' && argv[1][1] == 'R') cp_recursion(argv[2],argv[3]);
	else if (all) cp_all(argv[1],argv[2]);
	else cp(argv[1],argv[2]);
      80:	e8 6b 01 00 00       	call   1f0 <cp>
      85:	eb db                	jmp    62 <main+0x62>
    if (argv[1][strlen(argv[1])-1] == '*'){
        all = 1;
        printf(1,"* Found\n");
    }

    if (argv[1][0] == '-' && argv[1][1] == 'R') cp_recursion(argv[2],argv[3]);
      87:	80 78 01 52          	cmpb   $0x52,0x1(%eax)
      8b:	75 c2                	jne    4f <main+0x4f>
      8d:	8b 46 0c             	mov    0xc(%esi),%eax
      90:	89 44 24 04          	mov    %eax,0x4(%esp)
      94:	8b 46 08             	mov    0x8(%esi),%eax
      97:	89 04 24             	mov    %eax,(%esp)
      9a:	e8 01 06 00 00       	call   6a0 <cp_recursion>
      9f:	eb c1                	jmp    62 <main+0x62>
        }
    }

    if (argv[1][strlen(argv[1])-1] == '*'){
        all = 1;
        printf(1,"* Found\n");
      a1:	c7 44 24 04 53 13 00 	movl   $0x1353,0x4(%esp)
      a8:	00 
      a9:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
      b0:	e8 bb 0e 00 00       	call   f70 <printf>
            exit();
        }
    }

    if (argv[1][strlen(argv[1])-1] == '*'){
        all = 1;
      b5:	ba 01 00 00 00       	mov    $0x1,%edx
      ba:	eb 8b                	jmp    47 <main+0x47>
      bc:	66 90                	xchg   %ax,%ax
      be:	66 90                	xchg   %ax,%ax

000000c0 <strcat>:
#include "stat.h"
#include "fs.h"

char *
strcat(char *dest, const char *src)
{
      c0:	55                   	push   %ebp
      c1:	89 e5                	mov    %esp,%ebp
      c3:	8b 45 08             	mov    0x8(%ebp),%eax
      c6:	57                   	push   %edi
      c7:	56                   	push   %esi
      c8:	8b 75 0c             	mov    0xc(%ebp),%esi
      cb:	53                   	push   %ebx
    int i,j;
    for (i = 0; dest[i] != '\0'; i++)
      cc:	80 38 00             	cmpb   $0x0,(%eax)
      cf:	74 38                	je     109 <strcat+0x49>
      d1:	31 c9                	xor    %ecx,%ecx
      d3:	90                   	nop
      d4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      d8:	83 c1 01             	add    $0x1,%ecx
      db:	80 3c 08 00          	cmpb   $0x0,(%eax,%ecx,1)
      df:	75 f7                	jne    d8 <strcat+0x18>
      e1:	89 ca                	mov    %ecx,%edx
        ;
    for (j = 0; src[j] != '\0'; j++)
      e3:	0f b6 1e             	movzbl (%esi),%ebx
      e6:	84 db                	test   %bl,%bl
      e8:	74 16                	je     100 <strcat+0x40>
      ea:	31 d2                	xor    %edx,%edx
      ec:	8d 3c 08             	lea    (%eax,%ecx,1),%edi
      ef:	90                   	nop
        dest[i+j] = src[j];
      f0:	88 1c 17             	mov    %bl,(%edi,%edx,1)
strcat(char *dest, const char *src)
{
    int i,j;
    for (i = 0; dest[i] != '\0'; i++)
        ;
    for (j = 0; src[j] != '\0'; j++)
      f3:	83 c2 01             	add    $0x1,%edx
      f6:	0f b6 1c 16          	movzbl (%esi,%edx,1),%ebx
      fa:	84 db                	test   %bl,%bl
      fc:	75 f2                	jne    f0 <strcat+0x30>
      fe:	01 ca                	add    %ecx,%edx
        dest[i+j] = src[j];
    dest[i+j] = '\0';
     100:	c6 04 10 00          	movb   $0x0,(%eax,%edx,1)
    return dest;
}
     104:	5b                   	pop    %ebx
     105:	5e                   	pop    %esi
     106:	5f                   	pop    %edi
     107:	5d                   	pop    %ebp
     108:	c3                   	ret    

char *
strcat(char *dest, const char *src)
{
    int i,j;
    for (i = 0; dest[i] != '\0'; i++)
     109:	31 d2                	xor    %edx,%edx
     10b:	31 c9                	xor    %ecx,%ecx
     10d:	eb d4                	jmp    e3 <strcat+0x23>
     10f:	90                   	nop

00000110 <fmtname>:
}

// list every file
char*
fmtname(char *path)
{
     110:	55                   	push   %ebp
     111:	89 e5                	mov    %esp,%ebp
     113:	53                   	push   %ebx
     114:	83 ec 14             	sub    $0x14,%esp
     117:	8b 5d 08             	mov    0x8(%ebp),%ebx
    //static char buf[DIRSIZ+1];
    char *p;

    // Find first character after last slash.
    for(p=path+strlen(path); p >= path && *p != '/'; p--);
     11a:	89 1c 24             	mov    %ebx,(%esp)
     11d:	e8 5e 0b 00 00       	call   c80 <strlen>
     122:	01 d8                	add    %ebx,%eax
     124:	73 0c                	jae    132 <fmtname+0x22>
     126:	eb 0f                	jmp    137 <fmtname+0x27>
     128:	83 e8 01             	sub    $0x1,%eax
     12b:	39 c3                	cmp    %eax,%ebx
     12d:	8d 76 00             	lea    0x0(%esi),%esi
     130:	77 05                	ja     137 <fmtname+0x27>
     132:	80 38 2f             	cmpb   $0x2f,(%eax)
     135:	75 f1                	jne    128 <fmtname+0x18>
    p++;
     137:	8d 58 01             	lea    0x1(%eax),%ebx

    // Return blank-padded name.
    if(strlen(p) >= DIRSIZ) return p;
     13a:	89 1c 24             	mov    %ebx,(%esp)
     13d:	e8 3e 0b 00 00       	call   c80 <strlen>

    //memmove(buf, p, strlen(p));
    //memset(buf+strlen(p), ' ', DIRSIZ-strlen(p));
    return p;
}
     142:	83 c4 14             	add    $0x14,%esp
     145:	89 d8                	mov    %ebx,%eax
     147:	5b                   	pop    %ebx
     148:	5d                   	pop    %ebp
     149:	c3                   	ret    
     14a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000150 <absolute_path>:

int absolute_path(char *dir){
     150:	55                   	push   %ebp
     151:	89 e5                	mov    %esp,%ebp
     153:	56                   	push   %esi
     154:	53                   	push   %ebx
     155:	83 ec 10             	sub    $0x10,%esp
     158:	8b 75 08             	mov    0x8(%ebp),%esi
    char *next = {""};
    next = strcat(next,dir);
     15b:	c7 04 24 52 13 00 00 	movl   $0x1352,(%esp)
     162:	89 74 24 04          	mov    %esi,0x4(%esp)
     166:	e8 55 ff ff ff       	call   c0 <strcat>
    next = strcat(next,"/");
     16b:	c7 44 24 04 d8 12 00 	movl   $0x12d8,0x4(%esp)
     172:	00 
     173:	89 04 24             	mov    %eax,(%esp)
     176:	e8 45 ff ff ff       	call   c0 <strcat>
    next = strcat(next,".pwd");
     17b:	c7 44 24 04 da 12 00 	movl   $0x12da,0x4(%esp)
     182:	00 
     183:	89 04 24             	mov    %eax,(%esp)
     186:	e8 35 ff ff ff       	call   c0 <strcat>

    int next_pwd;

    next_pwd = open(next,O_CREATE | O_RDWR);
     18b:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
     192:	00 
     193:	89 04 24             	mov    %eax,(%esp)
     196:	e8 c7 0c 00 00       	call   e62 <open>
    write(next_pwd,dir,strlen(dir));
     19b:	89 34 24             	mov    %esi,(%esp)
    next = strcat(next,"/");
    next = strcat(next,".pwd");

    int next_pwd;

    next_pwd = open(next,O_CREATE | O_RDWR);
     19e:	89 c3                	mov    %eax,%ebx
    write(next_pwd,dir,strlen(dir));
     1a0:	e8 db 0a 00 00       	call   c80 <strlen>
     1a5:	89 74 24 04          	mov    %esi,0x4(%esp)
     1a9:	89 1c 24             	mov    %ebx,(%esp)
     1ac:	89 44 24 08          	mov    %eax,0x8(%esp)
     1b0:	e8 8d 0c 00 00       	call   e42 <write>
    write(next_pwd,"/",1);
     1b5:	89 1c 24             	mov    %ebx,(%esp)
     1b8:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
     1bf:	00 
     1c0:	c7 44 24 04 d8 12 00 	movl   $0x12d8,0x4(%esp)
     1c7:	00 
     1c8:	e8 75 0c 00 00       	call   e42 <write>
    close(next_pwd);
     1cd:	89 1c 24             	mov    %ebx,(%esp)
     1d0:	e8 75 0c 00 00       	call   e4a <close>
    return 1;
}
     1d5:	83 c4 10             	add    $0x10,%esp
     1d8:	b8 01 00 00 00       	mov    $0x1,%eax
     1dd:	5b                   	pop    %ebx
     1de:	5e                   	pop    %esi
     1df:	5d                   	pop    %ebp
     1e0:	c3                   	ret    
     1e1:	eb 0d                	jmp    1f0 <cp>
     1e3:	90                   	nop
     1e4:	90                   	nop
     1e5:	90                   	nop
     1e6:	90                   	nop
     1e7:	90                   	nop
     1e8:	90                   	nop
     1e9:	90                   	nop
     1ea:	90                   	nop
     1eb:	90                   	nop
     1ec:	90                   	nop
     1ed:	90                   	nop
     1ee:	90                   	nop
     1ef:	90                   	nop

000001f0 <cp>:

void cp(char *source, char *destination){
     1f0:	55                   	push   %ebp
     1f1:	89 e5                	mov    %esp,%ebp
     1f3:	57                   	push   %edi
     1f4:	56                   	push   %esi
     1f5:	53                   	push   %ebx
     1f6:	81 ec 1c 04 00 00    	sub    $0x41c,%esp
     1fc:	8b 75 08             	mov    0x8(%ebp),%esi
    int fsource;
    int fcdest;
    int fdest;

    if ((fsource = open(source,O_RDONLY)) < 0){
     1ff:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
     206:	00 
     207:	89 34 24             	mov    %esi,(%esp)
     20a:	e8 53 0c 00 00       	call   e62 <open>
     20f:	85 c0                	test   %eax,%eax
     211:	89 c3                	mov    %eax,%ebx
     213:	78 33                	js     248 <cp+0x58>
        printf(1,"Source File %s Does Not Exist\n", source);
        return;
    }

    if ((fcdest = open(destination,O_RDONLY)) < 0){
     215:	8b 45 0c             	mov    0xc(%ebp),%eax
     218:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
     21f:	00 
     220:	89 04 24             	mov    %eax,(%esp)
     223:	e8 3a 0c 00 00       	call   e62 <open>
     228:	85 c0                	test   %eax,%eax
     22a:	89 c6                	mov    %eax,%esi
     22c:	78 42                	js     270 <cp+0x80>
        char temp[1024];
        while ((n = read(fsource,temp,sizeof(temp))) > 0)
            write(fdest,temp,n);
        close(fdest);
    }
    close(fcdest);
     22e:	89 34 24             	mov    %esi,(%esp)
     231:	e8 14 0c 00 00       	call   e4a <close>

    return;
}
     236:	81 c4 1c 04 00 00    	add    $0x41c,%esp
     23c:	5b                   	pop    %ebx
     23d:	5e                   	pop    %esi
     23e:	5f                   	pop    %edi
     23f:	5d                   	pop    %ebp
     240:	c3                   	ret    
     241:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    int fsource;
    int fcdest;
    int fdest;

    if ((fsource = open(source,O_RDONLY)) < 0){
        printf(1,"Source File %s Does Not Exist\n", source);
     248:	89 74 24 08          	mov    %esi,0x8(%esp)
     24c:	c7 44 24 04 5c 13 00 	movl   $0x135c,0x4(%esp)
     253:	00 
     254:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     25b:	e8 10 0d 00 00       	call   f70 <printf>
        close(fdest);
    }
    close(fcdest);

    return;
}
     260:	81 c4 1c 04 00 00    	add    $0x41c,%esp
     266:	5b                   	pop    %ebx
     267:	5e                   	pop    %esi
     268:	5f                   	pop    %edi
     269:	5d                   	pop    %ebp
     26a:	c3                   	ret    
     26b:	90                   	nop
     26c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        printf(1,"Source File %s Does Not Exist\n", source);
        return;
    }

    if ((fcdest = open(destination,O_RDONLY)) < 0){
        fdest = open(destination, O_CREATE | O_RDWR);
     270:	8b 45 0c             	mov    0xc(%ebp),%eax
     273:	8d bd e8 fb ff ff    	lea    -0x418(%ebp),%edi
     279:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
     280:	00 
     281:	89 04 24             	mov    %eax,(%esp)
     284:	e8 d9 0b 00 00       	call   e62 <open>
     289:	89 85 e4 fb ff ff    	mov    %eax,-0x41c(%ebp)
        int n;
        char temp[1024];
        while ((n = read(fsource,temp,sizeof(temp))) > 0)
     28f:	eb 1d                	jmp    2ae <cp+0xbe>
     291:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
            write(fdest,temp,n);
     298:	89 44 24 08          	mov    %eax,0x8(%esp)
     29c:	8b 85 e4 fb ff ff    	mov    -0x41c(%ebp),%eax
     2a2:	89 7c 24 04          	mov    %edi,0x4(%esp)
     2a6:	89 04 24             	mov    %eax,(%esp)
     2a9:	e8 94 0b 00 00       	call   e42 <write>

    if ((fcdest = open(destination,O_RDONLY)) < 0){
        fdest = open(destination, O_CREATE | O_RDWR);
        int n;
        char temp[1024];
        while ((n = read(fsource,temp,sizeof(temp))) > 0)
     2ae:	c7 44 24 08 00 04 00 	movl   $0x400,0x8(%esp)
     2b5:	00 
     2b6:	89 7c 24 04          	mov    %edi,0x4(%esp)
     2ba:	89 1c 24             	mov    %ebx,(%esp)
     2bd:	e8 78 0b 00 00       	call   e3a <read>
     2c2:	85 c0                	test   %eax,%eax
     2c4:	7f d2                	jg     298 <cp+0xa8>
            write(fdest,temp,n);
        close(fdest);
     2c6:	8b 85 e4 fb ff ff    	mov    -0x41c(%ebp),%eax
     2cc:	89 04 24             	mov    %eax,(%esp)
     2cf:	e8 76 0b 00 00       	call   e4a <close>
     2d4:	e9 55 ff ff ff       	jmp    22e <cp+0x3e>
     2d9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000002e0 <cp_all>:

    return;
}

void cp_all(char *path,char *destination)
{
     2e0:	55                   	push   %ebp
     2e1:	89 e5                	mov    %esp,%ebp
     2e3:	57                   	push   %edi
     2e4:	56                   	push   %esi
     2e5:	53                   	push   %ebx
     2e6:	81 ec 6c 06 00 00    	sub    $0x66c,%esp
    struct stat st;
    //*/

    int pwd;
    char *tmp = {""};
    strcat(tmp,path);
     2ec:	8b 45 08             	mov    0x8(%ebp),%eax
     2ef:	c7 04 24 52 13 00 00 	movl   $0x1352,(%esp)
    tmp[strlen(tmp)-1]='\0';
    strcat(tmp,".pwd");
    pwd = open(tmp,O_RDONLY);

    char dummy[1024];
    read(pwd,dummy,sizeof(dummy));
     2f6:	8d 9d e8 fb ff ff    	lea    -0x418(%ebp),%ebx
    struct stat st;
    //*/

    int pwd;
    char *tmp = {""};
    strcat(tmp,path);
     2fc:	89 44 24 04          	mov    %eax,0x4(%esp)
     300:	e8 bb fd ff ff       	call   c0 <strcat>
    tmp[strlen(tmp)-1]='\0';
     305:	c7 04 24 52 13 00 00 	movl   $0x1352,(%esp)
     30c:	e8 6f 09 00 00       	call   c80 <strlen>
    strcat(tmp,".pwd");
     311:	c7 44 24 04 da 12 00 	movl   $0x12da,0x4(%esp)
     318:	00 
     319:	c7 04 24 52 13 00 00 	movl   $0x1352,(%esp)
    //*/

    int pwd;
    char *tmp = {""};
    strcat(tmp,path);
    tmp[strlen(tmp)-1]='\0';
     320:	c6 80 51 13 00 00 00 	movb   $0x0,0x1351(%eax)
    strcat(tmp,".pwd");
     327:	e8 94 fd ff ff       	call   c0 <strcat>
    pwd = open(tmp,O_RDONLY);
     32c:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
     333:	00 
     334:	c7 04 24 52 13 00 00 	movl   $0x1352,(%esp)
     33b:	e8 22 0b 00 00       	call   e62 <open>

    char dummy[1024];
    read(pwd,dummy,sizeof(dummy));
     340:	c7 44 24 08 00 04 00 	movl   $0x400,0x8(%esp)
     347:	00 
     348:	89 5c 24 04          	mov    %ebx,0x4(%esp)
     34c:	89 04 24             	mov    %eax,(%esp)
    int pwd;
    char *tmp = {""};
    strcat(tmp,path);
    tmp[strlen(tmp)-1]='\0';
    strcat(tmp,".pwd");
    pwd = open(tmp,O_RDONLY);
     34f:	89 c7                	mov    %eax,%edi

    char dummy[1024];
    read(pwd,dummy,sizeof(dummy));
     351:	e8 e4 0a 00 00       	call   e3a <read>
    dummy[strlen(dummy)] = '.';
     356:	89 1c 24             	mov    %ebx,(%esp)
     359:	e8 22 09 00 00       	call   c80 <strlen>
    dummy[strlen(dummy)+1] = '\0';
     35e:	89 1c 24             	mov    %ebx,(%esp)
    strcat(tmp,".pwd");
    pwd = open(tmp,O_RDONLY);

    char dummy[1024];
    read(pwd,dummy,sizeof(dummy));
    dummy[strlen(dummy)] = '.';
     361:	c6 84 05 e8 fb ff ff 	movb   $0x2e,-0x418(%ebp,%eax,1)
     368:	2e 
    dummy[strlen(dummy)+1] = '\0';
     369:	e8 12 09 00 00       	call   c80 <strlen>
    printf(1,"alamat : %s\n",dummy);
     36e:	89 5c 24 08          	mov    %ebx,0x8(%esp)
     372:	c7 44 24 04 df 12 00 	movl   $0x12df,0x4(%esp)
     379:	00 
     37a:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    pwd = open(tmp,O_RDONLY);

    char dummy[1024];
    read(pwd,dummy,sizeof(dummy));
    dummy[strlen(dummy)] = '.';
    dummy[strlen(dummy)+1] = '\0';
     381:	c6 84 05 e9 fb ff ff 	movb   $0x0,-0x417(%ebp,%eax,1)
     388:	00 
    printf(1,"alamat : %s\n",dummy);
     389:	e8 e2 0b 00 00       	call   f70 <printf>

    if((fd = open(dummy, 0)) < 0){
     38e:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
     395:	00 
     396:	89 1c 24             	mov    %ebx,(%esp)
     399:	e8 c4 0a 00 00       	call   e62 <open>
     39e:	85 c0                	test   %eax,%eax
     3a0:	89 c6                	mov    %eax,%esi
     3a2:	0f 88 68 02 00 00    	js     610 <cp_all+0x330>
        printf(2, "ls: cannot open %s\n", dummy);
        return;
    }

    if(fstat(fd, &st) < 0){
     3a8:	8d 85 d4 f9 ff ff    	lea    -0x62c(%ebp),%eax
     3ae:	89 44 24 04          	mov    %eax,0x4(%esp)
     3b2:	89 34 24             	mov    %esi,(%esp)
     3b5:	e8 c0 0a 00 00       	call   e7a <fstat>
     3ba:	85 c0                	test   %eax,%eax
     3bc:	0f 88 96 02 00 00    	js     658 <cp_all+0x378>
        printf(2, "ls: cannot stat %s\n", dummy);
        close(fd);
        return;
    }

    switch(st.type){
     3c2:	0f b7 85 d4 f9 ff ff 	movzwl -0x62c(%ebp),%eax
     3c9:	66 83 f8 01          	cmp    $0x1,%ax
     3cd:	74 79                	je     448 <cp_all+0x168>
     3cf:	66 83 f8 02          	cmp    $0x2,%ax
     3d3:	75 54                	jne    429 <cp_all+0x149>
        case T_FILE:
            printf(1, "%s %d %d %d\n", fmtname(dummy), st.type, st.ino, st.size);
     3d5:	8b 95 e4 f9 ff ff    	mov    -0x61c(%ebp),%edx
     3db:	8b 8d dc f9 ff ff    	mov    -0x624(%ebp),%ecx
     3e1:	89 1c 24             	mov    %ebx,(%esp)
     3e4:	89 95 b0 f9 ff ff    	mov    %edx,-0x650(%ebp)
     3ea:	89 8d b4 f9 ff ff    	mov    %ecx,-0x64c(%ebp)
     3f0:	e8 1b fd ff ff       	call   110 <fmtname>
     3f5:	8b 95 b0 f9 ff ff    	mov    -0x650(%ebp),%edx
     3fb:	8b 8d b4 f9 ff ff    	mov    -0x64c(%ebp),%ecx
     401:	c7 44 24 0c 02 00 00 	movl   $0x2,0xc(%esp)
     408:	00 
     409:	c7 44 24 04 14 13 00 	movl   $0x1314,0x4(%esp)
     410:	00 
     411:	89 54 24 14          	mov    %edx,0x14(%esp)
     415:	89 4c 24 10          	mov    %ecx,0x10(%esp)
     419:	89 44 24 08          	mov    %eax,0x8(%esp)
     41d:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     424:	e8 47 0b 00 00       	call   f70 <printf>
                    //cp(tmp1,tmp);
                }
            }
            break;
    }
    close(pwd);
     429:	89 3c 24             	mov    %edi,(%esp)
     42c:	e8 19 0a 00 00       	call   e4a <close>
    close(fd);
     431:	89 34 24             	mov    %esi,(%esp)
     434:	e8 11 0a 00 00       	call   e4a <close>
}
     439:	81 c4 6c 06 00 00    	add    $0x66c,%esp
     43f:	5b                   	pop    %ebx
     440:	5e                   	pop    %esi
     441:	5f                   	pop    %edi
     442:	5d                   	pop    %ebp
     443:	c3                   	ret    
     444:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        case T_FILE:
            printf(1, "%s %d %d %d\n", fmtname(dummy), st.type, st.ino, st.size);
            break;

        case T_DIR:
            if(strlen(dummy) + 1 + DIRSIZ + 1 > sizeof buf){
     448:	89 1c 24             	mov    %ebx,(%esp)
     44b:	e8 30 08 00 00       	call   c80 <strlen>
     450:	83 c0 10             	add    $0x10,%eax
     453:	3d 00 02 00 00       	cmp    $0x200,%eax
     458:	0f 87 da 01 00 00    	ja     638 <cp_all+0x358>
                printf(1, "ls: path too long\n");
                break;
            }
            strcpy(buf, dummy);
     45e:	8d 85 e8 f9 ff ff    	lea    -0x618(%ebp),%eax
     464:	89 5c 24 04          	mov    %ebx,0x4(%esp)
     468:	89 04 24             	mov    %eax,(%esp)
     46b:	e8 90 07 00 00       	call   c00 <strcpy>
            p = buf+strlen(buf);
     470:	8d 85 e8 f9 ff ff    	lea    -0x618(%ebp),%eax
     476:	89 04 24             	mov    %eax,(%esp)
     479:	e8 02 08 00 00       	call   c80 <strlen>
     47e:	8d 8d e8 f9 ff ff    	lea    -0x618(%ebp),%ecx
     484:	01 c8                	add    %ecx,%eax
            *p++ = '/';
     486:	8d 48 01             	lea    0x1(%eax),%ecx
            if(strlen(dummy) + 1 + DIRSIZ + 1 > sizeof buf){
                printf(1, "ls: path too long\n");
                break;
            }
            strcpy(buf, dummy);
            p = buf+strlen(buf);
     489:	89 85 b4 f9 ff ff    	mov    %eax,-0x64c(%ebp)
            *p++ = '/';
     48f:	89 8d b0 f9 ff ff    	mov    %ecx,-0x650(%ebp)
     495:	c6 00 2f             	movb   $0x2f,(%eax)

            while(read(fd, &de, sizeof(de)) == sizeof(de)){
     498:	8d 85 c4 f9 ff ff    	lea    -0x63c(%ebp),%eax
     49e:	c7 44 24 08 10 00 00 	movl   $0x10,0x8(%esp)
     4a5:	00 
     4a6:	89 44 24 04          	mov    %eax,0x4(%esp)
     4aa:	89 34 24             	mov    %esi,(%esp)
     4ad:	e8 88 09 00 00       	call   e3a <read>
     4b2:	83 f8 10             	cmp    $0x10,%eax
     4b5:	0f 85 6e ff ff ff    	jne    429 <cp_all+0x149>
                if(de.inum == 0) continue;
     4bb:	66 83 bd c4 f9 ff ff 	cmpw   $0x0,-0x63c(%ebp)
     4c2:	00 
     4c3:	74 d3                	je     498 <cp_all+0x1b8>
                memmove(p, de.name, DIRSIZ);
     4c5:	8d 85 c6 f9 ff ff    	lea    -0x63a(%ebp),%eax
     4cb:	89 44 24 04          	mov    %eax,0x4(%esp)
     4cf:	8b 85 b0 f9 ff ff    	mov    -0x650(%ebp),%eax
     4d5:	c7 44 24 08 0e 00 00 	movl   $0xe,0x8(%esp)
     4dc:	00 
     4dd:	89 04 24             	mov    %eax,(%esp)
     4e0:	e8 0b 09 00 00       	call   df0 <memmove>
                p[DIRSIZ] = 0;
     4e5:	8b 85 b4 f9 ff ff    	mov    -0x64c(%ebp),%eax
     4eb:	c6 40 0f 00          	movb   $0x0,0xf(%eax)
                if(stat(buf, &st) < 0){
     4ef:	8d 85 d4 f9 ff ff    	lea    -0x62c(%ebp),%eax
     4f5:	89 44 24 04          	mov    %eax,0x4(%esp)
     4f9:	8d 85 e8 f9 ff ff    	lea    -0x618(%ebp),%eax
     4ff:	89 04 24             	mov    %eax,(%esp)
     502:	e8 69 08 00 00       	call   d70 <stat>
     507:	85 c0                	test   %eax,%eax
                    printf(1, "ls: cannot stat %s\n", buf);
     509:	8d 85 e8 f9 ff ff    	lea    -0x618(%ebp),%eax

            while(read(fd, &de, sizeof(de)) == sizeof(de)){
                if(de.inum == 0) continue;
                memmove(p, de.name, DIRSIZ);
                p[DIRSIZ] = 0;
                if(stat(buf, &st) < 0){
     50f:	0f 88 6b 01 00 00    	js     680 <cp_all+0x3a0>
                    printf(1, "ls: cannot stat %s\n", buf);
                    continue;
                }
                if (fmtname(buf)[0] != '.' && st.type == T_FILE){
     515:	89 04 24             	mov    %eax,(%esp)
     518:	e8 f3 fb ff ff       	call   110 <fmtname>
     51d:	80 38 2e             	cmpb   $0x2e,(%eax)
     520:	0f 84 72 ff ff ff    	je     498 <cp_all+0x1b8>
     526:	66 83 bd d4 f9 ff ff 	cmpw   $0x2,-0x62c(%ebp)
     52d:	02 
     52e:	0f 85 64 ff ff ff    	jne    498 <cp_all+0x1b8>
                    char *name = fmtname(buf);
     534:	8d 85 e8 f9 ff ff    	lea    -0x618(%ebp),%eax
     53a:	89 04 24             	mov    %eax,(%esp)
     53d:	e8 ce fb ff ff       	call   110 <fmtname>

                    char *tmp1 = malloc(100);
     542:	c7 04 24 64 00 00 00 	movl   $0x64,(%esp)
                if(stat(buf, &st) < 0){
                    printf(1, "ls: cannot stat %s\n", buf);
                    continue;
                }
                if (fmtname(buf)[0] != '.' && st.type == T_FILE){
                    char *name = fmtname(buf);
     549:	89 85 ac f9 ff ff    	mov    %eax,-0x654(%ebp)

                    char *tmp1 = malloc(100);
     54f:	e8 9c 0c 00 00       	call   11f0 <malloc>
                    memset(tmp1,0,100);
     554:	c7 44 24 08 64 00 00 	movl   $0x64,0x8(%esp)
     55b:	00 
     55c:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
     563:	00 
     564:	89 04 24             	mov    %eax,(%esp)
     567:	89 85 a8 f9 ff ff    	mov    %eax,-0x658(%ebp)
     56d:	e8 3e 07 00 00       	call   cb0 <memset>
                    strcat(tmp1,dummy);
     572:	8b 95 a8 f9 ff ff    	mov    -0x658(%ebp),%edx
     578:	89 5c 24 04          	mov    %ebx,0x4(%esp)
     57c:	89 14 24             	mov    %edx,(%esp)
     57f:	e8 3c fb ff ff       	call   c0 <strcat>
                    tmp1[strlen(tmp1)-1]='\0';
     584:	8b 95 a8 f9 ff ff    	mov    -0x658(%ebp),%edx
     58a:	89 14 24             	mov    %edx,(%esp)
     58d:	e8 ee 06 00 00       	call   c80 <strlen>
     592:	8b 95 a8 f9 ff ff    	mov    -0x658(%ebp),%edx
     598:	c6 44 02 ff 00       	movb   $0x0,-0x1(%edx,%eax,1)
                    strcat(tmp1,name);
     59d:	8b 85 ac f9 ff ff    	mov    -0x654(%ebp),%eax
     5a3:	89 14 24             	mov    %edx,(%esp)
     5a6:	89 44 24 04          	mov    %eax,0x4(%esp)
     5aa:	e8 11 fb ff ff       	call   c0 <strcat>

                    char *tmp = malloc(100);
     5af:	c7 04 24 64 00 00 00 	movl   $0x64,(%esp)
     5b6:	e8 35 0c 00 00       	call   11f0 <malloc>
                    memset(tmp,0,100);
     5bb:	c7 44 24 08 64 00 00 	movl   $0x64,0x8(%esp)
     5c2:	00 
     5c3:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
     5ca:	00 
     5cb:	89 04 24             	mov    %eax,(%esp)
     5ce:	89 85 a8 f9 ff ff    	mov    %eax,-0x658(%ebp)
     5d4:	e8 d7 06 00 00       	call   cb0 <memset>
                    strcat(tmp,destination);
     5d9:	8b 95 a8 f9 ff ff    	mov    -0x658(%ebp),%edx
     5df:	8b 4d 0c             	mov    0xc(%ebp),%ecx
     5e2:	89 14 24             	mov    %edx,(%esp)
     5e5:	89 4c 24 04          	mov    %ecx,0x4(%esp)
     5e9:	e8 d2 fa ff ff       	call   c0 <strcat>
                    strcat(tmp,name);
     5ee:	8b 85 ac f9 ff ff    	mov    -0x654(%ebp),%eax
     5f4:	8b 95 a8 f9 ff ff    	mov    -0x658(%ebp),%edx
     5fa:	89 44 24 04          	mov    %eax,0x4(%esp)
     5fe:	89 14 24             	mov    %edx,(%esp)
     601:	e8 ba fa ff ff       	call   c0 <strcat>
     606:	e9 8d fe ff ff       	jmp    498 <cp_all+0x1b8>
     60b:	90                   	nop
     60c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    dummy[strlen(dummy)] = '.';
    dummy[strlen(dummy)+1] = '\0';
    printf(1,"alamat : %s\n",dummy);

    if((fd = open(dummy, 0)) < 0){
        printf(2, "ls: cannot open %s\n", dummy);
     610:	89 5c 24 08          	mov    %ebx,0x8(%esp)
     614:	c7 44 24 04 ec 12 00 	movl   $0x12ec,0x4(%esp)
     61b:	00 
     61c:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
     623:	e8 48 09 00 00       	call   f70 <printf>
            }
            break;
    }
    close(pwd);
    close(fd);
}
     628:	81 c4 6c 06 00 00    	add    $0x66c,%esp
     62e:	5b                   	pop    %ebx
     62f:	5e                   	pop    %esi
     630:	5f                   	pop    %edi
     631:	5d                   	pop    %ebp
     632:	c3                   	ret    
     633:	90                   	nop
     634:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
            printf(1, "%s %d %d %d\n", fmtname(dummy), st.type, st.ino, st.size);
            break;

        case T_DIR:
            if(strlen(dummy) + 1 + DIRSIZ + 1 > sizeof buf){
                printf(1, "ls: path too long\n");
     638:	c7 44 24 04 21 13 00 	movl   $0x1321,0x4(%esp)
     63f:	00 
     640:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     647:	e8 24 09 00 00       	call   f70 <printf>
                break;
     64c:	e9 d8 fd ff ff       	jmp    429 <cp_all+0x149>
     651:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        printf(2, "ls: cannot open %s\n", dummy);
        return;
    }

    if(fstat(fd, &st) < 0){
        printf(2, "ls: cannot stat %s\n", dummy);
     658:	89 5c 24 08          	mov    %ebx,0x8(%esp)
     65c:	c7 44 24 04 00 13 00 	movl   $0x1300,0x4(%esp)
     663:	00 
     664:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
     66b:	e8 00 09 00 00       	call   f70 <printf>
        close(fd);
     670:	89 34 24             	mov    %esi,(%esp)
     673:	e8 d2 07 00 00       	call   e4a <close>
        return;
     678:	e9 bc fd ff ff       	jmp    439 <cp_all+0x159>
     67d:	8d 76 00             	lea    0x0(%esi),%esi
            while(read(fd, &de, sizeof(de)) == sizeof(de)){
                if(de.inum == 0) continue;
                memmove(p, de.name, DIRSIZ);
                p[DIRSIZ] = 0;
                if(stat(buf, &st) < 0){
                    printf(1, "ls: cannot stat %s\n", buf);
     680:	89 44 24 08          	mov    %eax,0x8(%esp)
     684:	c7 44 24 04 00 13 00 	movl   $0x1300,0x4(%esp)
     68b:	00 
     68c:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     693:	e8 d8 08 00 00       	call   f70 <printf>
                    continue;
     698:	e9 fb fd ff ff       	jmp    498 <cp_all+0x1b8>
     69d:	8d 76 00             	lea    0x0(%esi),%esi

000006a0 <cp_recursion>:
    close(pwd);
    close(fd);
}

void cp_recursion(char *path,char *destination)
{
     6a0:	55                   	push   %ebp
     6a1:	89 e5                	mov    %esp,%ebp
     6a3:	57                   	push   %edi
     6a4:	56                   	push   %esi
     6a5:	53                   	push   %ebx
     6a6:	81 ec 6c 02 00 00    	sub    $0x26c,%esp
    if (path[strlen(dummy)-1] != '/'){
        path[strlen(dummy)] = '/';
        path[strlen(dummy)+1] = '\0';
    }
    */
    strcat(tmp,path);
     6ac:	8b 45 08             	mov    0x8(%ebp),%eax
     6af:	c7 04 24 52 13 00 00 	movl   $0x1352,(%esp)
     6b6:	89 44 24 04          	mov    %eax,0x4(%esp)
     6ba:	e8 01 fa ff ff       	call   c0 <strcat>
    strcat(tmp,".pwd");
     6bf:	c7 44 24 04 da 12 00 	movl   $0x12da,0x4(%esp)
     6c6:	00 
     6c7:	c7 04 24 52 13 00 00 	movl   $0x1352,(%esp)
     6ce:	e8 ed f9 ff ff       	call   c0 <strcat>
    pwd = open(tmp,O_RDONLY);
     6d3:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
     6da:	00 
     6db:	c7 04 24 52 13 00 00 	movl   $0x1352,(%esp)
     6e2:	e8 7b 07 00 00       	call   e62 <open>

    char *dummy = malloc(1024);
     6e7:	c7 04 24 00 04 00 00 	movl   $0x400,(%esp)
        path[strlen(dummy)+1] = '\0';
    }
    */
    strcat(tmp,path);
    strcat(tmp,".pwd");
    pwd = open(tmp,O_RDONLY);
     6ee:	89 c6                	mov    %eax,%esi

    char *dummy = malloc(1024);
     6f0:	e8 fb 0a 00 00       	call   11f0 <malloc>
    memset(dummy,0,1024);
     6f5:	c7 44 24 08 00 04 00 	movl   $0x400,0x8(%esp)
     6fc:	00 
     6fd:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
     704:	00 
    */
    strcat(tmp,path);
    strcat(tmp,".pwd");
    pwd = open(tmp,O_RDONLY);

    char *dummy = malloc(1024);
     705:	89 c3                	mov    %eax,%ebx
    memset(dummy,0,1024);
     707:	89 04 24             	mov    %eax,(%esp)
     70a:	e8 a1 05 00 00       	call   cb0 <memset>
    read(pwd,dummy,sizeof(dummy));
     70f:	c7 44 24 08 04 00 00 	movl   $0x4,0x8(%esp)
     716:	00 
     717:	89 5c 24 04          	mov    %ebx,0x4(%esp)
     71b:	89 34 24             	mov    %esi,(%esp)
     71e:	e8 17 07 00 00       	call   e3a <read>
    dummy[strlen(dummy)] = '.';
     723:	89 1c 24             	mov    %ebx,(%esp)
     726:	e8 55 05 00 00       	call   c80 <strlen>
     72b:	c6 04 03 2e          	movb   $0x2e,(%ebx,%eax,1)
    dummy[strlen(dummy)+1] = '\0';
     72f:	89 1c 24             	mov    %ebx,(%esp)
     732:	e8 49 05 00 00       	call   c80 <strlen>
     737:	c6 44 03 01 00       	movb   $0x0,0x1(%ebx,%eax,1)
    //printf(1,"alamat : %s\n",dummy);

    if((fd = open(dummy, 0)) < 0){
     73c:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
     743:	00 
     744:	89 1c 24             	mov    %ebx,(%esp)
     747:	e8 16 07 00 00       	call   e62 <open>
     74c:	85 c0                	test   %eax,%eax
     74e:	89 c7                	mov    %eax,%edi
     750:	0f 88 22 03 00 00    	js     a78 <cp_recursion+0x3d8>
        printf(2, "ls: cannot open %s\n", dummy);
        return;
    }

    if(fstat(fd, &st) < 0){
     756:	8d 85 d4 fd ff ff    	lea    -0x22c(%ebp),%eax
     75c:	89 44 24 04          	mov    %eax,0x4(%esp)
     760:	89 3c 24             	mov    %edi,(%esp)
     763:	e8 12 07 00 00       	call   e7a <fstat>
     768:	85 c0                	test   %eax,%eax
     76a:	0f 88 50 03 00 00    	js     ac0 <cp_recursion+0x420>
        printf(2, "ls: cannot stat %s\n", dummy);
        close(fd);
        return;
    }

    switch(st.type){
     770:	0f b7 85 d4 fd ff ff 	movzwl -0x22c(%ebp),%eax
     777:	66 83 f8 01          	cmp    $0x1,%ax
     77b:	74 7b                	je     7f8 <cp_recursion+0x158>
     77d:	66 83 f8 02          	cmp    $0x2,%ax
     781:	75 54                	jne    7d7 <cp_recursion+0x137>
        case T_FILE:
            printf(1, "%s %d %d %d\n", fmtname(dummy), st.type, st.ino, st.size);
     783:	8b 8d e4 fd ff ff    	mov    -0x21c(%ebp),%ecx
     789:	8b 95 dc fd ff ff    	mov    -0x224(%ebp),%edx
     78f:	89 1c 24             	mov    %ebx,(%esp)
     792:	89 8d b0 fd ff ff    	mov    %ecx,-0x250(%ebp)
     798:	89 95 b4 fd ff ff    	mov    %edx,-0x24c(%ebp)
     79e:	e8 6d f9 ff ff       	call   110 <fmtname>
     7a3:	8b 8d b0 fd ff ff    	mov    -0x250(%ebp),%ecx
     7a9:	8b 95 b4 fd ff ff    	mov    -0x24c(%ebp),%edx
     7af:	c7 44 24 0c 02 00 00 	movl   $0x2,0xc(%esp)
     7b6:	00 
     7b7:	c7 44 24 04 14 13 00 	movl   $0x1314,0x4(%esp)
     7be:	00 
     7bf:	89 4c 24 14          	mov    %ecx,0x14(%esp)
     7c3:	89 54 24 10          	mov    %edx,0x10(%esp)
     7c7:	89 44 24 08          	mov    %eax,0x8(%esp)
     7cb:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     7d2:	e8 99 07 00 00       	call   f70 <printf>
                    cp_recursion(tmp1,tmp);
                }
            }
            break;
    }
    close(pwd);
     7d7:	89 34 24             	mov    %esi,(%esp)
     7da:	e8 6b 06 00 00       	call   e4a <close>
    close(fd);
     7df:	89 3c 24             	mov    %edi,(%esp)
     7e2:	e8 63 06 00 00       	call   e4a <close>
}
     7e7:	81 c4 6c 02 00 00    	add    $0x26c,%esp
     7ed:	5b                   	pop    %ebx
     7ee:	5e                   	pop    %esi
     7ef:	5f                   	pop    %edi
     7f0:	5d                   	pop    %ebp
     7f1:	c3                   	ret    
     7f2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        case T_FILE:
            printf(1, "%s %d %d %d\n", fmtname(dummy), st.type, st.ino, st.size);
            break;

        case T_DIR:
            if(strlen(dummy) + 1 + DIRSIZ + 1 > sizeof buf){
     7f8:	89 1c 24             	mov    %ebx,(%esp)
     7fb:	e8 80 04 00 00       	call   c80 <strlen>
     800:	83 c0 10             	add    $0x10,%eax
     803:	3d 00 02 00 00       	cmp    $0x200,%eax
     808:	0f 87 92 02 00 00    	ja     aa0 <cp_recursion+0x400>
                printf(1, "ls: path too long\n");
                break;
            }
            strcpy(buf, dummy);
     80e:	8d 85 e8 fd ff ff    	lea    -0x218(%ebp),%eax
     814:	89 5c 24 04          	mov    %ebx,0x4(%esp)
     818:	89 04 24             	mov    %eax,(%esp)
     81b:	e8 e0 03 00 00       	call   c00 <strcpy>
            p = buf+strlen(buf);
     820:	8d 85 e8 fd ff ff    	lea    -0x218(%ebp),%eax
     826:	89 04 24             	mov    %eax,(%esp)
     829:	e8 52 04 00 00       	call   c80 <strlen>
     82e:	8d 95 e8 fd ff ff    	lea    -0x218(%ebp),%edx
     834:	01 d0                	add    %edx,%eax
            *p++ = '/';
     836:	8d 48 01             	lea    0x1(%eax),%ecx
            if(strlen(dummy) + 1 + DIRSIZ + 1 > sizeof buf){
                printf(1, "ls: path too long\n");
                break;
            }
            strcpy(buf, dummy);
            p = buf+strlen(buf);
     839:	89 85 b4 fd ff ff    	mov    %eax,-0x24c(%ebp)
            *p++ = '/';
     83f:	89 8d b0 fd ff ff    	mov    %ecx,-0x250(%ebp)
     845:	c6 00 2f             	movb   $0x2f,(%eax)

            while(read(fd, &de, sizeof(de)) == sizeof(de)){
     848:	8d 85 c4 fd ff ff    	lea    -0x23c(%ebp),%eax
     84e:	c7 44 24 08 10 00 00 	movl   $0x10,0x8(%esp)
     855:	00 
     856:	89 44 24 04          	mov    %eax,0x4(%esp)
     85a:	89 3c 24             	mov    %edi,(%esp)
     85d:	e8 d8 05 00 00       	call   e3a <read>
     862:	83 f8 10             	cmp    $0x10,%eax
     865:	0f 85 6c ff ff ff    	jne    7d7 <cp_recursion+0x137>
                if(de.inum == 0) continue;
     86b:	66 83 bd c4 fd ff ff 	cmpw   $0x0,-0x23c(%ebp)
     872:	00 
     873:	74 d3                	je     848 <cp_recursion+0x1a8>
                memmove(p, de.name, DIRSIZ);
     875:	8d 85 c6 fd ff ff    	lea    -0x23a(%ebp),%eax
     87b:	89 44 24 04          	mov    %eax,0x4(%esp)
     87f:	8b 85 b0 fd ff ff    	mov    -0x250(%ebp),%eax
     885:	c7 44 24 08 0e 00 00 	movl   $0xe,0x8(%esp)
     88c:	00 
     88d:	89 04 24             	mov    %eax,(%esp)
     890:	e8 5b 05 00 00       	call   df0 <memmove>
                p[DIRSIZ] = 0;
     895:	8b 85 b4 fd ff ff    	mov    -0x24c(%ebp),%eax
     89b:	c6 40 0f 00          	movb   $0x0,0xf(%eax)
                if(stat(buf, &st) < 0){
     89f:	8d 85 d4 fd ff ff    	lea    -0x22c(%ebp),%eax
     8a5:	89 44 24 04          	mov    %eax,0x4(%esp)
     8a9:	8d 85 e8 fd ff ff    	lea    -0x218(%ebp),%eax
     8af:	89 04 24             	mov    %eax,(%esp)
     8b2:	e8 b9 04 00 00       	call   d70 <stat>
     8b7:	85 c0                	test   %eax,%eax
                    printf(1, "ls: cannot stat %s\n", buf);
     8b9:	8d 85 e8 fd ff ff    	lea    -0x218(%ebp),%eax

            while(read(fd, &de, sizeof(de)) == sizeof(de)){
                if(de.inum == 0) continue;
                memmove(p, de.name, DIRSIZ);
                p[DIRSIZ] = 0;
                if(stat(buf, &st) < 0){
     8bf:	0f 88 23 02 00 00    	js     ae8 <cp_recursion+0x448>
                    printf(1, "ls: cannot stat %s\n", buf);
                    continue;
                }
                if (fmtname(buf)[0] != '.' && st.type == T_FILE){
     8c5:	89 04 24             	mov    %eax,(%esp)
     8c8:	e8 43 f8 ff ff       	call   110 <fmtname>
     8cd:	80 38 2e             	cmpb   $0x2e,(%eax)
     8d0:	74 0e                	je     8e0 <cp_recursion+0x240>
     8d2:	66 83 bd d4 fd ff ff 	cmpw   $0x2,-0x22c(%ebp)
     8d9:	02 
     8da:	0f 84 28 02 00 00    	je     b08 <cp_recursion+0x468>
                    memset(tmp,0,100);
                    strcat(tmp,destination);
                    strcat(tmp,name);
                    cp(tmp1,tmp);
                }
                if (fmtname(buf)[0] != '.' && st.type == T_DIR){
     8e0:	8d 85 e8 fd ff ff    	lea    -0x218(%ebp),%eax
     8e6:	89 04 24             	mov    %eax,(%esp)
     8e9:	e8 22 f8 ff ff       	call   110 <fmtname>
     8ee:	80 38 2e             	cmpb   $0x2e,(%eax)
     8f1:	0f 84 51 ff ff ff    	je     848 <cp_recursion+0x1a8>
     8f7:	66 83 bd d4 fd ff ff 	cmpw   $0x1,-0x22c(%ebp)
     8fe:	01 
     8ff:	0f 85 43 ff ff ff    	jne    848 <cp_recursion+0x1a8>
                    char *name = fmtname(buf);
     905:	8d 85 e8 fd ff ff    	lea    -0x218(%ebp),%eax
     90b:	89 04 24             	mov    %eax,(%esp)
     90e:	e8 fd f7 ff ff       	call   110 <fmtname>

                    char *tmp1 = malloc(100);
     913:	c7 04 24 64 00 00 00 	movl   $0x64,(%esp)
                    strcat(tmp,destination);
                    strcat(tmp,name);
                    cp(tmp1,tmp);
                }
                if (fmtname(buf)[0] != '.' && st.type == T_DIR){
                    char *name = fmtname(buf);
     91a:	89 85 a4 fd ff ff    	mov    %eax,-0x25c(%ebp)

                    char *tmp1 = malloc(100);
     920:	e8 cb 08 00 00       	call   11f0 <malloc>
                    memset(tmp1,0,100);
     925:	c7 44 24 08 64 00 00 	movl   $0x64,0x8(%esp)
     92c:	00 
     92d:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
     934:	00 
     935:	89 04 24             	mov    %eax,(%esp)
     938:	89 85 ac fd ff ff    	mov    %eax,-0x254(%ebp)
     93e:	e8 6d 03 00 00       	call   cb0 <memset>
                    strcat(tmp1,dummy);
     943:	8b 95 ac fd ff ff    	mov    -0x254(%ebp),%edx
     949:	89 5c 24 04          	mov    %ebx,0x4(%esp)
     94d:	89 14 24             	mov    %edx,(%esp)
     950:	e8 6b f7 ff ff       	call   c0 <strcat>
                    tmp1[strlen(tmp1)-1]='\0';
     955:	8b 95 ac fd ff ff    	mov    -0x254(%ebp),%edx
     95b:	89 14 24             	mov    %edx,(%esp)
     95e:	e8 1d 03 00 00       	call   c80 <strlen>
     963:	8b 95 ac fd ff ff    	mov    -0x254(%ebp),%edx
     969:	c6 44 02 ff 00       	movb   $0x0,-0x1(%edx,%eax,1)
                    strcat(tmp1,name);
     96e:	8b 85 a4 fd ff ff    	mov    -0x25c(%ebp),%eax
     974:	89 14 24             	mov    %edx,(%esp)
     977:	89 44 24 04          	mov    %eax,0x4(%esp)
     97b:	e8 40 f7 ff ff       	call   c0 <strcat>
                    strcat(tmp1,"/");
     980:	8b 95 ac fd ff ff    	mov    -0x254(%ebp),%edx
     986:	c7 44 24 04 d8 12 00 	movl   $0x12d8,0x4(%esp)
     98d:	00 
     98e:	89 14 24             	mov    %edx,(%esp)
     991:	e8 2a f7 ff ff       	call   c0 <strcat>

                    char *tmp = malloc(100);
     996:	c7 04 24 64 00 00 00 	movl   $0x64,(%esp)
     99d:	e8 4e 08 00 00       	call   11f0 <malloc>
                    memset(tmp,0,100);
     9a2:	c7 44 24 08 64 00 00 	movl   $0x64,0x8(%esp)
     9a9:	00 
     9aa:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
     9b1:	00 
     9b2:	89 04 24             	mov    %eax,(%esp)
     9b5:	89 85 a8 fd ff ff    	mov    %eax,-0x258(%ebp)
     9bb:	e8 f0 02 00 00       	call   cb0 <memset>
                    strcat(tmp,destination);
     9c0:	8b 4d 0c             	mov    0xc(%ebp),%ecx
     9c3:	8b 85 a8 fd ff ff    	mov    -0x258(%ebp),%eax
     9c9:	89 4c 24 04          	mov    %ecx,0x4(%esp)
     9cd:	89 04 24             	mov    %eax,(%esp)
     9d0:	e8 eb f6 ff ff       	call   c0 <strcat>
                    strcat(tmp,name);
     9d5:	8b 8d a4 fd ff ff    	mov    -0x25c(%ebp),%ecx
     9db:	8b 85 a8 fd ff ff    	mov    -0x258(%ebp),%eax
     9e1:	89 4c 24 04          	mov    %ecx,0x4(%esp)
     9e5:	89 04 24             	mov    %eax,(%esp)
     9e8:	e8 d3 f6 ff ff       	call   c0 <strcat>
                    mkdir(tmp);
     9ed:	8b 85 a8 fd ff ff    	mov    -0x258(%ebp),%eax
     9f3:	89 04 24             	mov    %eax,(%esp)
     9f6:	e8 8f 04 00 00       	call   e8a <mkdir>
                    absolute_path(tmp);
     9fb:	8b 85 a8 fd ff ff    	mov    -0x258(%ebp),%eax
     a01:	89 04 24             	mov    %eax,(%esp)
     a04:	e8 47 f7 ff ff       	call   150 <absolute_path>
                    strcat(tmp,"/");
     a09:	8b 85 a8 fd ff ff    	mov    -0x258(%ebp),%eax
     a0f:	c7 44 24 04 d8 12 00 	movl   $0x12d8,0x4(%esp)
     a16:	00 
     a17:	89 04 24             	mov    %eax,(%esp)
     a1a:	e8 a1 f6 ff ff       	call   c0 <strcat>

                    printf(1,"path %s\n",tmp1);
     a1f:	8b 95 ac fd ff ff    	mov    -0x254(%ebp),%edx
     a25:	c7 44 24 04 34 13 00 	movl   $0x1334,0x4(%esp)
     a2c:	00 
     a2d:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     a34:	89 54 24 08          	mov    %edx,0x8(%esp)
     a38:	e8 33 05 00 00       	call   f70 <printf>
                    printf(1,"dest %s\n",tmp);
     a3d:	8b 85 a8 fd ff ff    	mov    -0x258(%ebp),%eax
     a43:	c7 44 24 04 3d 13 00 	movl   $0x133d,0x4(%esp)
     a4a:	00 
     a4b:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     a52:	89 44 24 08          	mov    %eax,0x8(%esp)
     a56:	e8 15 05 00 00       	call   f70 <printf>

                    cp_recursion(tmp1,tmp);
     a5b:	8b 85 a8 fd ff ff    	mov    -0x258(%ebp),%eax
     a61:	8b 95 ac fd ff ff    	mov    -0x254(%ebp),%edx
     a67:	89 44 24 04          	mov    %eax,0x4(%esp)
     a6b:	89 14 24             	mov    %edx,(%esp)
     a6e:	e8 2d fc ff ff       	call   6a0 <cp_recursion>
     a73:	e9 d0 fd ff ff       	jmp    848 <cp_recursion+0x1a8>
    dummy[strlen(dummy)] = '.';
    dummy[strlen(dummy)+1] = '\0';
    //printf(1,"alamat : %s\n",dummy);

    if((fd = open(dummy, 0)) < 0){
        printf(2, "ls: cannot open %s\n", dummy);
     a78:	89 5c 24 08          	mov    %ebx,0x8(%esp)
     a7c:	c7 44 24 04 ec 12 00 	movl   $0x12ec,0x4(%esp)
     a83:	00 
     a84:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
     a8b:	e8 e0 04 00 00       	call   f70 <printf>
            }
            break;
    }
    close(pwd);
    close(fd);
}
     a90:	81 c4 6c 02 00 00    	add    $0x26c,%esp
     a96:	5b                   	pop    %ebx
     a97:	5e                   	pop    %esi
     a98:	5f                   	pop    %edi
     a99:	5d                   	pop    %ebp
     a9a:	c3                   	ret    
     a9b:	90                   	nop
     a9c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
            printf(1, "%s %d %d %d\n", fmtname(dummy), st.type, st.ino, st.size);
            break;

        case T_DIR:
            if(strlen(dummy) + 1 + DIRSIZ + 1 > sizeof buf){
                printf(1, "ls: path too long\n");
     aa0:	c7 44 24 04 21 13 00 	movl   $0x1321,0x4(%esp)
     aa7:	00 
     aa8:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     aaf:	e8 bc 04 00 00       	call   f70 <printf>
                break;
     ab4:	e9 1e fd ff ff       	jmp    7d7 <cp_recursion+0x137>
     ab9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        printf(2, "ls: cannot open %s\n", dummy);
        return;
    }

    if(fstat(fd, &st) < 0){
        printf(2, "ls: cannot stat %s\n", dummy);
     ac0:	89 5c 24 08          	mov    %ebx,0x8(%esp)
     ac4:	c7 44 24 04 00 13 00 	movl   $0x1300,0x4(%esp)
     acb:	00 
     acc:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
     ad3:	e8 98 04 00 00       	call   f70 <printf>
        close(fd);
     ad8:	89 3c 24             	mov    %edi,(%esp)
     adb:	e8 6a 03 00 00       	call   e4a <close>
        return;
     ae0:	e9 02 fd ff ff       	jmp    7e7 <cp_recursion+0x147>
     ae5:	8d 76 00             	lea    0x0(%esi),%esi
            while(read(fd, &de, sizeof(de)) == sizeof(de)){
                if(de.inum == 0) continue;
                memmove(p, de.name, DIRSIZ);
                p[DIRSIZ] = 0;
                if(stat(buf, &st) < 0){
                    printf(1, "ls: cannot stat %s\n", buf);
     ae8:	89 44 24 08          	mov    %eax,0x8(%esp)
     aec:	c7 44 24 04 00 13 00 	movl   $0x1300,0x4(%esp)
     af3:	00 
     af4:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     afb:	e8 70 04 00 00       	call   f70 <printf>
                    continue;
     b00:	e9 43 fd ff ff       	jmp    848 <cp_recursion+0x1a8>
     b05:	8d 76 00             	lea    0x0(%esi),%esi
                }
                if (fmtname(buf)[0] != '.' && st.type == T_FILE){
                    char *name = fmtname(buf);
     b08:	8d 85 e8 fd ff ff    	lea    -0x218(%ebp),%eax
     b0e:	89 04 24             	mov    %eax,(%esp)
     b11:	e8 fa f5 ff ff       	call   110 <fmtname>

                    char *tmp1 = malloc(100);
     b16:	c7 04 24 64 00 00 00 	movl   $0x64,(%esp)
                if(stat(buf, &st) < 0){
                    printf(1, "ls: cannot stat %s\n", buf);
                    continue;
                }
                if (fmtname(buf)[0] != '.' && st.type == T_FILE){
                    char *name = fmtname(buf);
     b1d:	89 85 a4 fd ff ff    	mov    %eax,-0x25c(%ebp)

                    char *tmp1 = malloc(100);
     b23:	e8 c8 06 00 00       	call   11f0 <malloc>
                    memset(tmp1,0,100);
     b28:	c7 44 24 08 64 00 00 	movl   $0x64,0x8(%esp)
     b2f:	00 
     b30:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
     b37:	00 
     b38:	89 04 24             	mov    %eax,(%esp)
     b3b:	89 85 ac fd ff ff    	mov    %eax,-0x254(%ebp)
     b41:	e8 6a 01 00 00       	call   cb0 <memset>
                    strcat(tmp1,dummy);
     b46:	8b 8d ac fd ff ff    	mov    -0x254(%ebp),%ecx
     b4c:	89 5c 24 04          	mov    %ebx,0x4(%esp)
     b50:	89 0c 24             	mov    %ecx,(%esp)
     b53:	e8 68 f5 ff ff       	call   c0 <strcat>
                    tmp1[strlen(tmp1)-1]='\0';
     b58:	8b 8d ac fd ff ff    	mov    -0x254(%ebp),%ecx
     b5e:	89 0c 24             	mov    %ecx,(%esp)
     b61:	e8 1a 01 00 00       	call   c80 <strlen>
     b66:	8b 8d ac fd ff ff    	mov    -0x254(%ebp),%ecx
     b6c:	c6 44 01 ff 00       	movb   $0x0,-0x1(%ecx,%eax,1)
                    strcat(tmp1,name);
     b71:	8b 85 a4 fd ff ff    	mov    -0x25c(%ebp),%eax
     b77:	89 0c 24             	mov    %ecx,(%esp)
     b7a:	89 44 24 04          	mov    %eax,0x4(%esp)
     b7e:	e8 3d f5 ff ff       	call   c0 <strcat>

                    char *tmp = malloc(100);
     b83:	c7 04 24 64 00 00 00 	movl   $0x64,(%esp)
     b8a:	e8 61 06 00 00       	call   11f0 <malloc>
                    memset(tmp,0,100);
     b8f:	c7 44 24 08 64 00 00 	movl   $0x64,0x8(%esp)
     b96:	00 
     b97:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
     b9e:	00 
     b9f:	89 04 24             	mov    %eax,(%esp)
     ba2:	89 85 a8 fd ff ff    	mov    %eax,-0x258(%ebp)
     ba8:	e8 03 01 00 00       	call   cb0 <memset>
                    strcat(tmp,destination);
     bad:	8b 55 0c             	mov    0xc(%ebp),%edx
     bb0:	8b 85 a8 fd ff ff    	mov    -0x258(%ebp),%eax
     bb6:	89 54 24 04          	mov    %edx,0x4(%esp)
     bba:	89 04 24             	mov    %eax,(%esp)
     bbd:	e8 fe f4 ff ff       	call   c0 <strcat>
                    strcat(tmp,name);
     bc2:	8b 95 a4 fd ff ff    	mov    -0x25c(%ebp),%edx
     bc8:	8b 85 a8 fd ff ff    	mov    -0x258(%ebp),%eax
     bce:	89 54 24 04          	mov    %edx,0x4(%esp)
     bd2:	89 04 24             	mov    %eax,(%esp)
     bd5:	e8 e6 f4 ff ff       	call   c0 <strcat>
                    cp(tmp1,tmp);
     bda:	8b 85 a8 fd ff ff    	mov    -0x258(%ebp),%eax
     be0:	8b 8d ac fd ff ff    	mov    -0x254(%ebp),%ecx
     be6:	89 44 24 04          	mov    %eax,0x4(%esp)
     bea:	89 0c 24             	mov    %ecx,(%esp)
     bed:	e8 fe f5 ff ff       	call   1f0 <cp>
     bf2:	e9 e9 fc ff ff       	jmp    8e0 <cp_recursion+0x240>
     bf7:	66 90                	xchg   %ax,%ax
     bf9:	66 90                	xchg   %ax,%ax
     bfb:	66 90                	xchg   %ax,%ax
     bfd:	66 90                	xchg   %ax,%ax
     bff:	90                   	nop

00000c00 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, char *t)
{
     c00:	55                   	push   %ebp
     c01:	89 e5                	mov    %esp,%ebp
     c03:	8b 45 08             	mov    0x8(%ebp),%eax
     c06:	8b 4d 0c             	mov    0xc(%ebp),%ecx
     c09:	53                   	push   %ebx
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
     c0a:	89 c2                	mov    %eax,%edx
     c0c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     c10:	83 c1 01             	add    $0x1,%ecx
     c13:	0f b6 59 ff          	movzbl -0x1(%ecx),%ebx
     c17:	83 c2 01             	add    $0x1,%edx
     c1a:	84 db                	test   %bl,%bl
     c1c:	88 5a ff             	mov    %bl,-0x1(%edx)
     c1f:	75 ef                	jne    c10 <strcpy+0x10>
    ;
  return os;
}
     c21:	5b                   	pop    %ebx
     c22:	5d                   	pop    %ebp
     c23:	c3                   	ret    
     c24:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     c2a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00000c30 <strcmp>:

int
strcmp(const char *p, const char *q)
{
     c30:	55                   	push   %ebp
     c31:	89 e5                	mov    %esp,%ebp
     c33:	8b 55 08             	mov    0x8(%ebp),%edx
     c36:	53                   	push   %ebx
     c37:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
     c3a:	0f b6 02             	movzbl (%edx),%eax
     c3d:	84 c0                	test   %al,%al
     c3f:	74 2d                	je     c6e <strcmp+0x3e>
     c41:	0f b6 19             	movzbl (%ecx),%ebx
     c44:	38 d8                	cmp    %bl,%al
     c46:	74 0e                	je     c56 <strcmp+0x26>
     c48:	eb 2b                	jmp    c75 <strcmp+0x45>
     c4a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     c50:	38 c8                	cmp    %cl,%al
     c52:	75 15                	jne    c69 <strcmp+0x39>
    p++, q++;
     c54:	89 d9                	mov    %ebx,%ecx
     c56:	83 c2 01             	add    $0x1,%edx
}

int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
     c59:	0f b6 02             	movzbl (%edx),%eax
    p++, q++;
     c5c:	8d 59 01             	lea    0x1(%ecx),%ebx
}

int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
     c5f:	0f b6 49 01          	movzbl 0x1(%ecx),%ecx
     c63:	84 c0                	test   %al,%al
     c65:	75 e9                	jne    c50 <strcmp+0x20>
     c67:	31 c0                	xor    %eax,%eax
    p++, q++;
  return (uchar)*p - (uchar)*q;
     c69:	29 c8                	sub    %ecx,%eax
}
     c6b:	5b                   	pop    %ebx
     c6c:	5d                   	pop    %ebp
     c6d:	c3                   	ret    
     c6e:	0f b6 09             	movzbl (%ecx),%ecx
}

int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
     c71:	31 c0                	xor    %eax,%eax
     c73:	eb f4                	jmp    c69 <strcmp+0x39>
     c75:	0f b6 cb             	movzbl %bl,%ecx
     c78:	eb ef                	jmp    c69 <strcmp+0x39>
     c7a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000c80 <strlen>:
  return (uchar)*p - (uchar)*q;
}

uint
strlen(char *s)
{
     c80:	55                   	push   %ebp
     c81:	89 e5                	mov    %esp,%ebp
     c83:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  for(n = 0; s[n]; n++)
     c86:	80 39 00             	cmpb   $0x0,(%ecx)
     c89:	74 12                	je     c9d <strlen+0x1d>
     c8b:	31 d2                	xor    %edx,%edx
     c8d:	8d 76 00             	lea    0x0(%esi),%esi
     c90:	83 c2 01             	add    $0x1,%edx
     c93:	80 3c 11 00          	cmpb   $0x0,(%ecx,%edx,1)
     c97:	89 d0                	mov    %edx,%eax
     c99:	75 f5                	jne    c90 <strlen+0x10>
    ;
  return n;
}
     c9b:	5d                   	pop    %ebp
     c9c:	c3                   	ret    
uint
strlen(char *s)
{
  int n;

  for(n = 0; s[n]; n++)
     c9d:	31 c0                	xor    %eax,%eax
    ;
  return n;
}
     c9f:	5d                   	pop    %ebp
     ca0:	c3                   	ret    
     ca1:	eb 0d                	jmp    cb0 <memset>
     ca3:	90                   	nop
     ca4:	90                   	nop
     ca5:	90                   	nop
     ca6:	90                   	nop
     ca7:	90                   	nop
     ca8:	90                   	nop
     ca9:	90                   	nop
     caa:	90                   	nop
     cab:	90                   	nop
     cac:	90                   	nop
     cad:	90                   	nop
     cae:	90                   	nop
     caf:	90                   	nop

00000cb0 <memset>:

void*
memset(void *dst, int c, uint n)
{
     cb0:	55                   	push   %ebp
     cb1:	89 e5                	mov    %esp,%ebp
     cb3:	8b 55 08             	mov    0x8(%ebp),%edx
     cb6:	57                   	push   %edi
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
     cb7:	8b 4d 10             	mov    0x10(%ebp),%ecx
     cba:	8b 45 0c             	mov    0xc(%ebp),%eax
     cbd:	89 d7                	mov    %edx,%edi
     cbf:	fc                   	cld    
     cc0:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
     cc2:	89 d0                	mov    %edx,%eax
     cc4:	5f                   	pop    %edi
     cc5:	5d                   	pop    %ebp
     cc6:	c3                   	ret    
     cc7:	89 f6                	mov    %esi,%esi
     cc9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000cd0 <strchr>:

char*
strchr(const char *s, char c)
{
     cd0:	55                   	push   %ebp
     cd1:	89 e5                	mov    %esp,%ebp
     cd3:	8b 45 08             	mov    0x8(%ebp),%eax
     cd6:	53                   	push   %ebx
     cd7:	8b 55 0c             	mov    0xc(%ebp),%edx
  for(; *s; s++)
     cda:	0f b6 18             	movzbl (%eax),%ebx
     cdd:	84 db                	test   %bl,%bl
     cdf:	74 1d                	je     cfe <strchr+0x2e>
    if(*s == c)
     ce1:	38 d3                	cmp    %dl,%bl
     ce3:	89 d1                	mov    %edx,%ecx
     ce5:	75 0d                	jne    cf4 <strchr+0x24>
     ce7:	eb 17                	jmp    d00 <strchr+0x30>
     ce9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     cf0:	38 ca                	cmp    %cl,%dl
     cf2:	74 0c                	je     d00 <strchr+0x30>
}

char*
strchr(const char *s, char c)
{
  for(; *s; s++)
     cf4:	83 c0 01             	add    $0x1,%eax
     cf7:	0f b6 10             	movzbl (%eax),%edx
     cfa:	84 d2                	test   %dl,%dl
     cfc:	75 f2                	jne    cf0 <strchr+0x20>
    if(*s == c)
      return (char*)s;
  return 0;
     cfe:	31 c0                	xor    %eax,%eax
}
     d00:	5b                   	pop    %ebx
     d01:	5d                   	pop    %ebp
     d02:	c3                   	ret    
     d03:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     d09:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000d10 <gets>:

char*
gets(char *buf, int max)
{
     d10:	55                   	push   %ebp
     d11:	89 e5                	mov    %esp,%ebp
     d13:	57                   	push   %edi
     d14:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
     d15:	31 f6                	xor    %esi,%esi
  return 0;
}

char*
gets(char *buf, int max)
{
     d17:	53                   	push   %ebx
     d18:	83 ec 2c             	sub    $0x2c,%esp
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
     d1b:	8d 7d e7             	lea    -0x19(%ebp),%edi
gets(char *buf, int max)
{
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
     d1e:	eb 31                	jmp    d51 <gets+0x41>
    cc = read(0, &c, 1);
     d20:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
     d27:	00 
     d28:	89 7c 24 04          	mov    %edi,0x4(%esp)
     d2c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     d33:	e8 02 01 00 00       	call   e3a <read>
    if(cc < 1)
     d38:	85 c0                	test   %eax,%eax
     d3a:	7e 1d                	jle    d59 <gets+0x49>
      break;
    buf[i++] = c;
     d3c:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
gets(char *buf, int max)
{
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
     d40:	89 de                	mov    %ebx,%esi
    cc = read(0, &c, 1);
    if(cc < 1)
      break;
    buf[i++] = c;
     d42:	8b 55 08             	mov    0x8(%ebp),%edx
    if(c == '\n' || c == '\r')
     d45:	3c 0d                	cmp    $0xd,%al

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
    if(cc < 1)
      break;
    buf[i++] = c;
     d47:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
     d4b:	74 0c                	je     d59 <gets+0x49>
     d4d:	3c 0a                	cmp    $0xa,%al
     d4f:	74 08                	je     d59 <gets+0x49>
gets(char *buf, int max)
{
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
     d51:	8d 5e 01             	lea    0x1(%esi),%ebx
     d54:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
     d57:	7c c7                	jl     d20 <gets+0x10>
      break;
    buf[i++] = c;
    if(c == '\n' || c == '\r')
      break;
  }
  buf[i] = '\0';
     d59:	8b 45 08             	mov    0x8(%ebp),%eax
     d5c:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
     d60:	83 c4 2c             	add    $0x2c,%esp
     d63:	5b                   	pop    %ebx
     d64:	5e                   	pop    %esi
     d65:	5f                   	pop    %edi
     d66:	5d                   	pop    %ebp
     d67:	c3                   	ret    
     d68:	90                   	nop
     d69:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000d70 <stat>:

int
stat(char *n, struct stat *st)
{
     d70:	55                   	push   %ebp
     d71:	89 e5                	mov    %esp,%ebp
     d73:	56                   	push   %esi
     d74:	53                   	push   %ebx
     d75:	83 ec 10             	sub    $0x10,%esp
  int fd;
  int r;

  fd = open(n, O_RDONLY);
     d78:	8b 45 08             	mov    0x8(%ebp),%eax
     d7b:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
     d82:	00 
     d83:	89 04 24             	mov    %eax,(%esp)
     d86:	e8 d7 00 00 00       	call   e62 <open>
  if(fd < 0)
     d8b:	85 c0                	test   %eax,%eax
stat(char *n, struct stat *st)
{
  int fd;
  int r;

  fd = open(n, O_RDONLY);
     d8d:	89 c3                	mov    %eax,%ebx
  if(fd < 0)
     d8f:	78 27                	js     db8 <stat+0x48>
    return -1;
  r = fstat(fd, st);
     d91:	8b 45 0c             	mov    0xc(%ebp),%eax
     d94:	89 1c 24             	mov    %ebx,(%esp)
     d97:	89 44 24 04          	mov    %eax,0x4(%esp)
     d9b:	e8 da 00 00 00       	call   e7a <fstat>
  close(fd);
     da0:	89 1c 24             	mov    %ebx,(%esp)
  int r;

  fd = open(n, O_RDONLY);
  if(fd < 0)
    return -1;
  r = fstat(fd, st);
     da3:	89 c6                	mov    %eax,%esi
  close(fd);
     da5:	e8 a0 00 00 00       	call   e4a <close>
  return r;
     daa:	89 f0                	mov    %esi,%eax
}
     dac:	83 c4 10             	add    $0x10,%esp
     daf:	5b                   	pop    %ebx
     db0:	5e                   	pop    %esi
     db1:	5d                   	pop    %ebp
     db2:	c3                   	ret    
     db3:	90                   	nop
     db4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  int fd;
  int r;

  fd = open(n, O_RDONLY);
  if(fd < 0)
    return -1;
     db8:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
     dbd:	eb ed                	jmp    dac <stat+0x3c>
     dbf:	90                   	nop

00000dc0 <atoi>:
  return r;
}

int
atoi(const char *s)
{
     dc0:	55                   	push   %ebp
     dc1:	89 e5                	mov    %esp,%ebp
     dc3:	8b 4d 08             	mov    0x8(%ebp),%ecx
     dc6:	53                   	push   %ebx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
     dc7:	0f be 11             	movsbl (%ecx),%edx
     dca:	8d 42 d0             	lea    -0x30(%edx),%eax
     dcd:	3c 09                	cmp    $0x9,%al
int
atoi(const char *s)
{
  int n;

  n = 0;
     dcf:	b8 00 00 00 00       	mov    $0x0,%eax
  while('0' <= *s && *s <= '9')
     dd4:	77 17                	ja     ded <atoi+0x2d>
     dd6:	66 90                	xchg   %ax,%ax
    n = n*10 + *s++ - '0';
     dd8:	83 c1 01             	add    $0x1,%ecx
     ddb:	8d 04 80             	lea    (%eax,%eax,4),%eax
     dde:	8d 44 42 d0          	lea    -0x30(%edx,%eax,2),%eax
atoi(const char *s)
{
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
     de2:	0f be 11             	movsbl (%ecx),%edx
     de5:	8d 5a d0             	lea    -0x30(%edx),%ebx
     de8:	80 fb 09             	cmp    $0x9,%bl
     deb:	76 eb                	jbe    dd8 <atoi+0x18>
    n = n*10 + *s++ - '0';
  return n;
}
     ded:	5b                   	pop    %ebx
     dee:	5d                   	pop    %ebp
     def:	c3                   	ret    

00000df0 <memmove>:

void*
memmove(void *vdst, void *vsrc, int n)
{
     df0:	55                   	push   %ebp
  char *dst, *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
     df1:	31 d2                	xor    %edx,%edx
  return n;
}

void*
memmove(void *vdst, void *vsrc, int n)
{
     df3:	89 e5                	mov    %esp,%ebp
     df5:	56                   	push   %esi
     df6:	8b 45 08             	mov    0x8(%ebp),%eax
     df9:	53                   	push   %ebx
     dfa:	8b 5d 10             	mov    0x10(%ebp),%ebx
     dfd:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst, *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
     e00:	85 db                	test   %ebx,%ebx
     e02:	7e 12                	jle    e16 <memmove+0x26>
     e04:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    *dst++ = *src++;
     e08:	0f b6 0c 16          	movzbl (%esi,%edx,1),%ecx
     e0c:	88 0c 10             	mov    %cl,(%eax,%edx,1)
     e0f:	83 c2 01             	add    $0x1,%edx
{
  char *dst, *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
     e12:	39 da                	cmp    %ebx,%edx
     e14:	75 f2                	jne    e08 <memmove+0x18>
    *dst++ = *src++;
  return vdst;
}
     e16:	5b                   	pop    %ebx
     e17:	5e                   	pop    %esi
     e18:	5d                   	pop    %ebp
     e19:	c3                   	ret    

00000e1a <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
     e1a:	b8 01 00 00 00       	mov    $0x1,%eax
     e1f:	cd 40                	int    $0x40
     e21:	c3                   	ret    

00000e22 <exit>:
SYSCALL(exit)
     e22:	b8 02 00 00 00       	mov    $0x2,%eax
     e27:	cd 40                	int    $0x40
     e29:	c3                   	ret    

00000e2a <wait>:
SYSCALL(wait)
     e2a:	b8 03 00 00 00       	mov    $0x3,%eax
     e2f:	cd 40                	int    $0x40
     e31:	c3                   	ret    

00000e32 <pipe>:
SYSCALL(pipe)
     e32:	b8 04 00 00 00       	mov    $0x4,%eax
     e37:	cd 40                	int    $0x40
     e39:	c3                   	ret    

00000e3a <read>:
SYSCALL(read)
     e3a:	b8 05 00 00 00       	mov    $0x5,%eax
     e3f:	cd 40                	int    $0x40
     e41:	c3                   	ret    

00000e42 <write>:
SYSCALL(write)
     e42:	b8 10 00 00 00       	mov    $0x10,%eax
     e47:	cd 40                	int    $0x40
     e49:	c3                   	ret    

00000e4a <close>:
SYSCALL(close)
     e4a:	b8 15 00 00 00       	mov    $0x15,%eax
     e4f:	cd 40                	int    $0x40
     e51:	c3                   	ret    

00000e52 <kill>:
SYSCALL(kill)
     e52:	b8 06 00 00 00       	mov    $0x6,%eax
     e57:	cd 40                	int    $0x40
     e59:	c3                   	ret    

00000e5a <exec>:
SYSCALL(exec)
     e5a:	b8 07 00 00 00       	mov    $0x7,%eax
     e5f:	cd 40                	int    $0x40
     e61:	c3                   	ret    

00000e62 <open>:
SYSCALL(open)
     e62:	b8 0f 00 00 00       	mov    $0xf,%eax
     e67:	cd 40                	int    $0x40
     e69:	c3                   	ret    

00000e6a <mknod>:
SYSCALL(mknod)
     e6a:	b8 11 00 00 00       	mov    $0x11,%eax
     e6f:	cd 40                	int    $0x40
     e71:	c3                   	ret    

00000e72 <unlink>:
SYSCALL(unlink)
     e72:	b8 12 00 00 00       	mov    $0x12,%eax
     e77:	cd 40                	int    $0x40
     e79:	c3                   	ret    

00000e7a <fstat>:
SYSCALL(fstat)
     e7a:	b8 08 00 00 00       	mov    $0x8,%eax
     e7f:	cd 40                	int    $0x40
     e81:	c3                   	ret    

00000e82 <link>:
SYSCALL(link)
     e82:	b8 13 00 00 00       	mov    $0x13,%eax
     e87:	cd 40                	int    $0x40
     e89:	c3                   	ret    

00000e8a <mkdir>:
SYSCALL(mkdir)
     e8a:	b8 14 00 00 00       	mov    $0x14,%eax
     e8f:	cd 40                	int    $0x40
     e91:	c3                   	ret    

00000e92 <chdir>:
SYSCALL(chdir)
     e92:	b8 09 00 00 00       	mov    $0x9,%eax
     e97:	cd 40                	int    $0x40
     e99:	c3                   	ret    

00000e9a <dup>:
SYSCALL(dup)
     e9a:	b8 0a 00 00 00       	mov    $0xa,%eax
     e9f:	cd 40                	int    $0x40
     ea1:	c3                   	ret    

00000ea2 <getpid>:
SYSCALL(getpid)
     ea2:	b8 0b 00 00 00       	mov    $0xb,%eax
     ea7:	cd 40                	int    $0x40
     ea9:	c3                   	ret    

00000eaa <sbrk>:
SYSCALL(sbrk)
     eaa:	b8 0c 00 00 00       	mov    $0xc,%eax
     eaf:	cd 40                	int    $0x40
     eb1:	c3                   	ret    

00000eb2 <sleep>:
SYSCALL(sleep)
     eb2:	b8 0d 00 00 00       	mov    $0xd,%eax
     eb7:	cd 40                	int    $0x40
     eb9:	c3                   	ret    

00000eba <uptime>:
SYSCALL(uptime)
     eba:	b8 0e 00 00 00       	mov    $0xe,%eax
     ebf:	cd 40                	int    $0x40
     ec1:	c3                   	ret    
     ec2:	66 90                	xchg   %ax,%ax
     ec4:	66 90                	xchg   %ax,%ax
     ec6:	66 90                	xchg   %ax,%ax
     ec8:	66 90                	xchg   %ax,%ax
     eca:	66 90                	xchg   %ax,%ax
     ecc:	66 90                	xchg   %ax,%ax
     ece:	66 90                	xchg   %ax,%ax

00000ed0 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
     ed0:	55                   	push   %ebp
     ed1:	89 e5                	mov    %esp,%ebp
     ed3:	57                   	push   %edi
     ed4:	56                   	push   %esi
     ed5:	89 c6                	mov    %eax,%esi
     ed7:	53                   	push   %ebx
     ed8:	83 ec 4c             	sub    $0x4c,%esp
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
     edb:	8b 5d 08             	mov    0x8(%ebp),%ebx
     ede:	85 db                	test   %ebx,%ebx
     ee0:	74 09                	je     eeb <printint+0x1b>
     ee2:	89 d0                	mov    %edx,%eax
     ee4:	c1 e8 1f             	shr    $0x1f,%eax
     ee7:	84 c0                	test   %al,%al
     ee9:	75 75                	jne    f60 <printint+0x90>
    neg = 1;
    x = -xx;
  } else {
    x = xx;
     eeb:	89 d0                	mov    %edx,%eax
  static char digits[] = "0123456789ABCDEF";
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
     eed:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
     ef4:	89 75 c0             	mov    %esi,-0x40(%ebp)
    x = -xx;
  } else {
    x = xx;
  }

  i = 0;
     ef7:	31 ff                	xor    %edi,%edi
     ef9:	89 ce                	mov    %ecx,%esi
     efb:	8d 5d d7             	lea    -0x29(%ebp),%ebx
     efe:	eb 02                	jmp    f02 <printint+0x32>
  do{
    buf[i++] = digits[x % base];
     f00:	89 cf                	mov    %ecx,%edi
     f02:	31 d2                	xor    %edx,%edx
     f04:	f7 f6                	div    %esi
     f06:	8d 4f 01             	lea    0x1(%edi),%ecx
     f09:	0f b6 92 83 13 00 00 	movzbl 0x1383(%edx),%edx
  }while((x /= base) != 0);
     f10:	85 c0                	test   %eax,%eax
    x = xx;
  }

  i = 0;
  do{
    buf[i++] = digits[x % base];
     f12:	88 14 0b             	mov    %dl,(%ebx,%ecx,1)
  }while((x /= base) != 0);
     f15:	75 e9                	jne    f00 <printint+0x30>
  if(neg)
     f17:	8b 55 c4             	mov    -0x3c(%ebp),%edx
    x = xx;
  }

  i = 0;
  do{
    buf[i++] = digits[x % base];
     f1a:	89 c8                	mov    %ecx,%eax
     f1c:	8b 75 c0             	mov    -0x40(%ebp),%esi
  }while((x /= base) != 0);
  if(neg)
     f1f:	85 d2                	test   %edx,%edx
     f21:	74 08                	je     f2b <printint+0x5b>
    buf[i++] = '-';
     f23:	8d 4f 02             	lea    0x2(%edi),%ecx
     f26:	c6 44 05 d8 2d       	movb   $0x2d,-0x28(%ebp,%eax,1)

  while(--i >= 0)
     f2b:	8d 79 ff             	lea    -0x1(%ecx),%edi
     f2e:	66 90                	xchg   %ax,%ax
     f30:	0f b6 44 3d d8       	movzbl -0x28(%ebp,%edi,1),%eax
     f35:	83 ef 01             	sub    $0x1,%edi
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
     f38:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
     f3f:	00 
     f40:	89 5c 24 04          	mov    %ebx,0x4(%esp)
     f44:	89 34 24             	mov    %esi,(%esp)
     f47:	88 45 d7             	mov    %al,-0x29(%ebp)
     f4a:	e8 f3 fe ff ff       	call   e42 <write>
    buf[i++] = digits[x % base];
  }while((x /= base) != 0);
  if(neg)
    buf[i++] = '-';

  while(--i >= 0)
     f4f:	83 ff ff             	cmp    $0xffffffff,%edi
     f52:	75 dc                	jne    f30 <printint+0x60>
    putc(fd, buf[i]);
}
     f54:	83 c4 4c             	add    $0x4c,%esp
     f57:	5b                   	pop    %ebx
     f58:	5e                   	pop    %esi
     f59:	5f                   	pop    %edi
     f5a:	5d                   	pop    %ebp
     f5b:	c3                   	ret    
     f5c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
     f60:	89 d0                	mov    %edx,%eax
     f62:	f7 d8                	neg    %eax
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
     f64:	c7 45 c4 01 00 00 00 	movl   $0x1,-0x3c(%ebp)
     f6b:	eb 87                	jmp    ef4 <printint+0x24>
     f6d:	8d 76 00             	lea    0x0(%esi),%esi

00000f70 <printf>:
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
     f70:	55                   	push   %ebp
     f71:	89 e5                	mov    %esp,%ebp
     f73:	57                   	push   %edi
  char *s;
  int c, i, state;
  uint *ap;

  state = 0;
     f74:	31 ff                	xor    %edi,%edi
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
     f76:	56                   	push   %esi
     f77:	53                   	push   %ebx
     f78:	83 ec 3c             	sub    $0x3c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
     f7b:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  char *s;
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
     f7e:	8d 45 10             	lea    0x10(%ebp),%eax
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
     f81:	8b 75 08             	mov    0x8(%ebp),%esi
  char *s;
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
     f84:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  for(i = 0; fmt[i]; i++){
     f87:	0f b6 13             	movzbl (%ebx),%edx
     f8a:	83 c3 01             	add    $0x1,%ebx
     f8d:	84 d2                	test   %dl,%dl
     f8f:	75 39                	jne    fca <printf+0x5a>
     f91:	e9 c2 00 00 00       	jmp    1058 <printf+0xe8>
     f96:	66 90                	xchg   %ax,%ax
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
     f98:	83 fa 25             	cmp    $0x25,%edx
     f9b:	0f 84 bf 00 00 00    	je     1060 <printf+0xf0>
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
     fa1:	8d 45 e2             	lea    -0x1e(%ebp),%eax
     fa4:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
     fab:	00 
     fac:	89 44 24 04          	mov    %eax,0x4(%esp)
     fb0:	89 34 24             	mov    %esi,(%esp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
      } else {
        putc(fd, c);
     fb3:	88 55 e2             	mov    %dl,-0x1e(%ebp)
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
     fb6:	e8 87 fe ff ff       	call   e42 <write>
     fbb:	83 c3 01             	add    $0x1,%ebx
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
     fbe:	0f b6 53 ff          	movzbl -0x1(%ebx),%edx
     fc2:	84 d2                	test   %dl,%dl
     fc4:	0f 84 8e 00 00 00    	je     1058 <printf+0xe8>
    c = fmt[i] & 0xff;
    if(state == 0){
     fca:	85 ff                	test   %edi,%edi
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    c = fmt[i] & 0xff;
     fcc:	0f be c2             	movsbl %dl,%eax
    if(state == 0){
     fcf:	74 c7                	je     f98 <printf+0x28>
      if(c == '%'){
        state = '%';
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
     fd1:	83 ff 25             	cmp    $0x25,%edi
     fd4:	75 e5                	jne    fbb <printf+0x4b>
      if(c == 'd'){
     fd6:	83 fa 64             	cmp    $0x64,%edx
     fd9:	0f 84 31 01 00 00    	je     1110 <printf+0x1a0>
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
     fdf:	25 f7 00 00 00       	and    $0xf7,%eax
     fe4:	83 f8 70             	cmp    $0x70,%eax
     fe7:	0f 84 83 00 00 00    	je     1070 <printf+0x100>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
     fed:	83 fa 73             	cmp    $0x73,%edx
     ff0:	0f 84 a2 00 00 00    	je     1098 <printf+0x128>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
     ff6:	83 fa 63             	cmp    $0x63,%edx
     ff9:	0f 84 35 01 00 00    	je     1134 <printf+0x1c4>
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
     fff:	83 fa 25             	cmp    $0x25,%edx
    1002:	0f 84 e0 00 00 00    	je     10e8 <printf+0x178>
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    1008:	8d 45 e6             	lea    -0x1a(%ebp),%eax
    100b:	83 c3 01             	add    $0x1,%ebx
    100e:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    1015:	00 
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
    1016:	31 ff                	xor    %edi,%edi
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    1018:	89 44 24 04          	mov    %eax,0x4(%esp)
    101c:	89 34 24             	mov    %esi,(%esp)
    101f:	89 55 d0             	mov    %edx,-0x30(%ebp)
    1022:	c6 45 e6 25          	movb   $0x25,-0x1a(%ebp)
    1026:	e8 17 fe ff ff       	call   e42 <write>
      } else if(c == '%'){
        putc(fd, c);
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
    102b:	8b 55 d0             	mov    -0x30(%ebp),%edx
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    102e:	8d 45 e7             	lea    -0x19(%ebp),%eax
    1031:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    1038:	00 
    1039:	89 44 24 04          	mov    %eax,0x4(%esp)
    103d:	89 34 24             	mov    %esi,(%esp)
      } else if(c == '%'){
        putc(fd, c);
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
    1040:	88 55 e7             	mov    %dl,-0x19(%ebp)
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    1043:	e8 fa fd ff ff       	call   e42 <write>
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    1048:	0f b6 53 ff          	movzbl -0x1(%ebx),%edx
    104c:	84 d2                	test   %dl,%dl
    104e:	0f 85 76 ff ff ff    	jne    fca <printf+0x5a>
    1054:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        putc(fd, c);
      }
      state = 0;
    }
  }
}
    1058:	83 c4 3c             	add    $0x3c,%esp
    105b:	5b                   	pop    %ebx
    105c:	5e                   	pop    %esi
    105d:	5f                   	pop    %edi
    105e:	5d                   	pop    %ebp
    105f:	c3                   	ret    
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
    1060:	bf 25 00 00 00       	mov    $0x25,%edi
    1065:	e9 51 ff ff ff       	jmp    fbb <printf+0x4b>
    106a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
        printint(fd, *ap, 16, 0);
    1070:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    1073:	b9 10 00 00 00       	mov    $0x10,%ecx
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
    1078:	31 ff                	xor    %edi,%edi
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
        printint(fd, *ap, 16, 0);
    107a:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1081:	8b 10                	mov    (%eax),%edx
    1083:	89 f0                	mov    %esi,%eax
    1085:	e8 46 fe ff ff       	call   ed0 <printint>
        ap++;
    108a:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
    108e:	e9 28 ff ff ff       	jmp    fbb <printf+0x4b>
    1093:	90                   	nop
    1094:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      } else if(c == 's'){
        s = (char*)*ap;
    1098:	8b 45 d4             	mov    -0x2c(%ebp),%eax
        ap++;
    109b:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
        ap++;
      } else if(c == 'x' || c == 'p'){
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
        s = (char*)*ap;
    109f:	8b 38                	mov    (%eax),%edi
        ap++;
        if(s == 0)
          s = "(null)";
    10a1:	b8 7c 13 00 00       	mov    $0x137c,%eax
    10a6:	85 ff                	test   %edi,%edi
    10a8:	0f 44 f8             	cmove  %eax,%edi
        while(*s != 0){
    10ab:	0f b6 07             	movzbl (%edi),%eax
    10ae:	84 c0                	test   %al,%al
    10b0:	74 2a                	je     10dc <printf+0x16c>
    10b2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    10b8:	88 45 e3             	mov    %al,-0x1d(%ebp)
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    10bb:	8d 45 e3             	lea    -0x1d(%ebp),%eax
        ap++;
        if(s == 0)
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
    10be:	83 c7 01             	add    $0x1,%edi
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    10c1:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    10c8:	00 
    10c9:	89 44 24 04          	mov    %eax,0x4(%esp)
    10cd:	89 34 24             	mov    %esi,(%esp)
    10d0:	e8 6d fd ff ff       	call   e42 <write>
      } else if(c == 's'){
        s = (char*)*ap;
        ap++;
        if(s == 0)
          s = "(null)";
        while(*s != 0){
    10d5:	0f b6 07             	movzbl (%edi),%eax
    10d8:	84 c0                	test   %al,%al
    10da:	75 dc                	jne    10b8 <printf+0x148>
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
    10dc:	31 ff                	xor    %edi,%edi
    10de:	e9 d8 fe ff ff       	jmp    fbb <printf+0x4b>
    10e3:	90                   	nop
    10e4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    10e8:	8d 45 e5             	lea    -0x1b(%ebp),%eax
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
    10eb:	31 ff                	xor    %edi,%edi
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    10ed:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    10f4:	00 
    10f5:	89 44 24 04          	mov    %eax,0x4(%esp)
    10f9:	89 34 24             	mov    %esi,(%esp)
    10fc:	c6 45 e5 25          	movb   $0x25,-0x1b(%ebp)
    1100:	e8 3d fd ff ff       	call   e42 <write>
    1105:	e9 b1 fe ff ff       	jmp    fbb <printf+0x4b>
    110a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
    1110:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    1113:	b9 0a 00 00 00       	mov    $0xa,%ecx
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
    1118:	66 31 ff             	xor    %di,%di
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
    111b:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1122:	8b 10                	mov    (%eax),%edx
    1124:	89 f0                	mov    %esi,%eax
    1126:	e8 a5 fd ff ff       	call   ed0 <printint>
        ap++;
    112b:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
    112f:	e9 87 fe ff ff       	jmp    fbb <printf+0x4b>
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
        putc(fd, *ap);
    1134:	8b 45 d4             	mov    -0x2c(%ebp),%eax
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
    1137:	31 ff                	xor    %edi,%edi
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
        putc(fd, *ap);
    1139:	8b 00                	mov    (%eax),%eax
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    113b:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    1142:	00 
    1143:	89 34 24             	mov    %esi,(%esp)
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
        putc(fd, *ap);
    1146:	88 45 e4             	mov    %al,-0x1c(%ebp)
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    1149:	8d 45 e4             	lea    -0x1c(%ebp),%eax
    114c:	89 44 24 04          	mov    %eax,0x4(%esp)
    1150:	e8 ed fc ff ff       	call   e42 <write>
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
        putc(fd, *ap);
        ap++;
    1155:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
    1159:	e9 5d fe ff ff       	jmp    fbb <printf+0x4b>
    115e:	66 90                	xchg   %ax,%ax

00001160 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
    1160:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    1161:	a1 38 17 00 00       	mov    0x1738,%eax
static Header base;
static Header *freep;

void
free(void *ap)
{
    1166:	89 e5                	mov    %esp,%ebp
    1168:	57                   	push   %edi
    1169:	56                   	push   %esi
    116a:	53                   	push   %ebx
    116b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    116e:	8b 08                	mov    (%eax),%ecx
void
free(void *ap)
{
  Header *bp, *p;

  bp = (Header*)ap - 1;
    1170:	8d 53 f8             	lea    -0x8(%ebx),%edx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    1173:	39 d0                	cmp    %edx,%eax
    1175:	72 11                	jb     1188 <free+0x28>
    1177:	90                   	nop
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    1178:	39 c8                	cmp    %ecx,%eax
    117a:	72 04                	jb     1180 <free+0x20>
    117c:	39 ca                	cmp    %ecx,%edx
    117e:	72 10                	jb     1190 <free+0x30>
    1180:	89 c8                	mov    %ecx,%eax
free(void *ap)
{
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    1182:	39 d0                	cmp    %edx,%eax
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    1184:	8b 08                	mov    (%eax),%ecx
free(void *ap)
{
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    1186:	73 f0                	jae    1178 <free+0x18>
    1188:	39 ca                	cmp    %ecx,%edx
    118a:	72 04                	jb     1190 <free+0x30>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    118c:	39 c8                	cmp    %ecx,%eax
    118e:	72 f0                	jb     1180 <free+0x20>
      break;
  if(bp + bp->s.size == p->s.ptr){
    1190:	8b 73 fc             	mov    -0x4(%ebx),%esi
    1193:	8d 3c f2             	lea    (%edx,%esi,8),%edi
    1196:	39 cf                	cmp    %ecx,%edi
    1198:	74 1e                	je     11b8 <free+0x58>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
    119a:	89 4b f8             	mov    %ecx,-0x8(%ebx)
  if(p + p->s.size == bp){
    119d:	8b 48 04             	mov    0x4(%eax),%ecx
    11a0:	8d 34 c8             	lea    (%eax,%ecx,8),%esi
    11a3:	39 f2                	cmp    %esi,%edx
    11a5:	74 28                	je     11cf <free+0x6f>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
    11a7:	89 10                	mov    %edx,(%eax)
  freep = p;
    11a9:	a3 38 17 00 00       	mov    %eax,0x1738
}
    11ae:	5b                   	pop    %ebx
    11af:	5e                   	pop    %esi
    11b0:	5f                   	pop    %edi
    11b1:	5d                   	pop    %ebp
    11b2:	c3                   	ret    
    11b3:	90                   	nop
    11b4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
      break;
  if(bp + bp->s.size == p->s.ptr){
    bp->s.size += p->s.ptr->s.size;
    11b8:	03 71 04             	add    0x4(%ecx),%esi
    11bb:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
    11be:	8b 08                	mov    (%eax),%ecx
    11c0:	8b 09                	mov    (%ecx),%ecx
    11c2:	89 4b f8             	mov    %ecx,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
    11c5:	8b 48 04             	mov    0x4(%eax),%ecx
    11c8:	8d 34 c8             	lea    (%eax,%ecx,8),%esi
    11cb:	39 f2                	cmp    %esi,%edx
    11cd:	75 d8                	jne    11a7 <free+0x47>
    p->s.size += bp->s.size;
    11cf:	03 4b fc             	add    -0x4(%ebx),%ecx
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
  freep = p;
    11d2:	a3 38 17 00 00       	mov    %eax,0x1738
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
    p->s.size += bp->s.size;
    11d7:	89 48 04             	mov    %ecx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
    11da:	8b 53 f8             	mov    -0x8(%ebx),%edx
    11dd:	89 10                	mov    %edx,(%eax)
  } else
    p->s.ptr = bp;
  freep = p;
}
    11df:	5b                   	pop    %ebx
    11e0:	5e                   	pop    %esi
    11e1:	5f                   	pop    %edi
    11e2:	5d                   	pop    %ebp
    11e3:	c3                   	ret    
    11e4:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    11ea:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

000011f0 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
    11f0:	55                   	push   %ebp
    11f1:	89 e5                	mov    %esp,%ebp
    11f3:	57                   	push   %edi
    11f4:	56                   	push   %esi
    11f5:	53                   	push   %ebx
    11f6:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    11f9:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
    11fc:	8b 1d 38 17 00 00    	mov    0x1738,%ebx
malloc(uint nbytes)
{
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    1202:	8d 48 07             	lea    0x7(%eax),%ecx
    1205:	c1 e9 03             	shr    $0x3,%ecx
  if((prevp = freep) == 0){
    1208:	85 db                	test   %ebx,%ebx
malloc(uint nbytes)
{
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    120a:	8d 71 01             	lea    0x1(%ecx),%esi
  if((prevp = freep) == 0){
    120d:	0f 84 9b 00 00 00    	je     12ae <malloc+0xbe>
    1213:	8b 13                	mov    (%ebx),%edx
    1215:	8b 7a 04             	mov    0x4(%edx),%edi
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
    1218:	39 fe                	cmp    %edi,%esi
    121a:	76 64                	jbe    1280 <malloc+0x90>
    121c:	8d 04 f5 00 00 00 00 	lea    0x0(,%esi,8),%eax
morecore(uint nu)
{
  char *p;
  Header *hp;

  if(nu < 4096)
    1223:	bb 00 80 00 00       	mov    $0x8000,%ebx
    1228:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    122b:	eb 0e                	jmp    123b <malloc+0x4b>
    122d:	8d 76 00             	lea    0x0(%esi),%esi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
  if((prevp = freep) == 0){
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    1230:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
    1232:	8b 78 04             	mov    0x4(%eax),%edi
    1235:	39 fe                	cmp    %edi,%esi
    1237:	76 4f                	jbe    1288 <malloc+0x98>
    1239:	89 c2                	mov    %eax,%edx
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
    123b:	3b 15 38 17 00 00    	cmp    0x1738,%edx
    1241:	75 ed                	jne    1230 <malloc+0x40>
morecore(uint nu)
{
  char *p;
  Header *hp;

  if(nu < 4096)
    1243:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    1246:	81 fe 00 10 00 00    	cmp    $0x1000,%esi
    124c:	bf 00 10 00 00       	mov    $0x1000,%edi
    1251:	0f 43 fe             	cmovae %esi,%edi
    1254:	0f 42 c3             	cmovb  %ebx,%eax
    nu = 4096;
  p = sbrk(nu * sizeof(Header));
    1257:	89 04 24             	mov    %eax,(%esp)
    125a:	e8 4b fc ff ff       	call   eaa <sbrk>
  if(p == (char*)-1)
    125f:	83 f8 ff             	cmp    $0xffffffff,%eax
    1262:	74 18                	je     127c <malloc+0x8c>
    return 0;
  hp = (Header*)p;
  hp->s.size = nu;
    1264:	89 78 04             	mov    %edi,0x4(%eax)
  free((void*)(hp + 1));
    1267:	83 c0 08             	add    $0x8,%eax
    126a:	89 04 24             	mov    %eax,(%esp)
    126d:	e8 ee fe ff ff       	call   1160 <free>
  return freep;
    1272:	8b 15 38 17 00 00    	mov    0x1738,%edx
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
      if((p = morecore(nunits)) == 0)
    1278:	85 d2                	test   %edx,%edx
    127a:	75 b4                	jne    1230 <malloc+0x40>
        return 0;
    127c:	31 c0                	xor    %eax,%eax
    127e:	eb 20                	jmp    12a0 <malloc+0xb0>
  if((prevp = freep) == 0){
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
    1280:	89 d0                	mov    %edx,%eax
    1282:	89 da                	mov    %ebx,%edx
    1284:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      if(p->s.size == nunits)
    1288:	39 fe                	cmp    %edi,%esi
    128a:	74 1c                	je     12a8 <malloc+0xb8>
        prevp->s.ptr = p->s.ptr;
      else {
        p->s.size -= nunits;
    128c:	29 f7                	sub    %esi,%edi
    128e:	89 78 04             	mov    %edi,0x4(%eax)
        p += p->s.size;
    1291:	8d 04 f8             	lea    (%eax,%edi,8),%eax
        p->s.size = nunits;
    1294:	89 70 04             	mov    %esi,0x4(%eax)
      }
      freep = prevp;
    1297:	89 15 38 17 00 00    	mov    %edx,0x1738
      return (void*)(p + 1);
    129d:	83 c0 08             	add    $0x8,%eax
    }
    if(p == freep)
      if((p = morecore(nunits)) == 0)
        return 0;
  }
}
    12a0:	83 c4 1c             	add    $0x1c,%esp
    12a3:	5b                   	pop    %ebx
    12a4:	5e                   	pop    %esi
    12a5:	5f                   	pop    %edi
    12a6:	5d                   	pop    %ebp
    12a7:	c3                   	ret    
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
      if(p->s.size == nunits)
        prevp->s.ptr = p->s.ptr;
    12a8:	8b 08                	mov    (%eax),%ecx
    12aa:	89 0a                	mov    %ecx,(%edx)
    12ac:	eb e9                	jmp    1297 <malloc+0xa7>
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
  if((prevp = freep) == 0){
    base.s.ptr = freep = prevp = &base;
    12ae:	c7 05 38 17 00 00 3c 	movl   $0x173c,0x1738
    12b5:	17 00 00 
    base.s.size = 0;
    12b8:	ba 3c 17 00 00       	mov    $0x173c,%edx
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
  if((prevp = freep) == 0){
    base.s.ptr = freep = prevp = &base;
    12bd:	c7 05 3c 17 00 00 3c 	movl   $0x173c,0x173c
    12c4:	17 00 00 
    base.s.size = 0;
    12c7:	c7 05 40 17 00 00 00 	movl   $0x0,0x1740
    12ce:	00 00 00 
    12d1:	e9 46 ff ff ff       	jmp    121c <malloc+0x2c>
