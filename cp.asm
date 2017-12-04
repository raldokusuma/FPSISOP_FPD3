
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
       5:	83 e4 f0             	and    $0xfffffff0,%esp
       8:	83 ec 10             	sub    $0x10,%esp
       b:	8b 75 0c             	mov    0xc(%ebp),%esi
    int all = 0;
    int i;

    if (argv[1][0] == '-' && argv[1][1] == 'h'){
       e:	8b 46 04             	mov    0x4(%esi),%eax
      11:	80 38 2d             	cmpb   $0x2d,(%eax)
      14:	74 5e                	je     74 <main+0x74>
    }
    close(pwd);
    close(fd);
}

int main (int argc, char **argv) {
      16:	31 db                	xor    %ebx,%ebx
      18:	eb 16                	jmp    30 <main+0x30>
      1a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        printf(1,"cp -R /[Folder]/ /[Folder]/ to recursively copy all files\n");
        exit();
    }

    for (i=0;i<strlen(argv[1])-1;i++){
        if (argv[1][i] == '*'){
      20:	8b 46 04             	mov    0x4(%esi),%eax
      23:	80 3c 18 2a          	cmpb   $0x2a,(%eax,%ebx,1)
      27:	0f 84 8e 00 00 00    	je     bb <main+0xbb>
        printf(1,"cp /[Folder]/* /[Folder]/ to copy all files\n");
        printf(1,"cp -R /[Folder]/ /[Folder]/ to recursively copy all files\n");
        exit();
    }

    for (i=0;i<strlen(argv[1])-1;i++){
      2d:	83 c3 01             	add    $0x1,%ebx
      30:	89 04 24             	mov    %eax,(%esp)
      33:	e8 88 0c 00 00       	call   cc0 <strlen>
      38:	83 e8 01             	sub    $0x1,%eax
      3b:	39 c3                	cmp    %eax,%ebx
      3d:	72 e1                	jb     20 <main+0x20>
            printf(1,"Misplaced *\n");
            exit();
        }
    }

    if (argv[1][strlen(argv[1])-1] == '*') all = 1;
      3f:	8b 5e 04             	mov    0x4(%esi),%ebx
      42:	89 1c 24             	mov    %ebx,(%esp)
      45:	e8 76 0c 00 00       	call   cc0 <strlen>
      4a:	0f b6 54 03 ff       	movzbl -0x1(%ebx,%eax,1),%edx

    if (argv[1][0] == '-' && argv[1][1] == 'R') cp_recursion(argv[2],argv[3]);
      4f:	8b 46 04             	mov    0x4(%esi),%eax
      52:	80 38 2d             	cmpb   $0x2d,(%eax)
      55:	0f 84 80 00 00 00    	je     db <main+0xdb>
	else if (all) cp_all(argv[1],argv[2]);
      5b:	80 fa 2a             	cmp    $0x2a,%dl
      5e:	8b 56 08             	mov    0x8(%esi),%edx
      61:	89 04 24             	mov    %eax,(%esp)
      64:	89 54 24 04          	mov    %edx,0x4(%esp)
      68:	75 6a                	jne    d4 <main+0xd4>
      6a:	e8 b1 02 00 00       	call   320 <cp_all>
	else cp(argv[1],argv[2]);

	exit();
      6f:	e8 ee 0d 00 00       	call   e62 <exit>

int main (int argc, char **argv) {
    int all = 0;
    int i;

    if (argv[1][0] == '-' && argv[1][1] == 'h'){
      74:	80 78 01 68          	cmpb   $0x68,0x1(%eax)
      78:	75 9c                	jne    16 <main+0x16>
        printf(1,"cp [File] [File]\n");
      7a:	c7 44 24 04 86 13 00 	movl   $0x1386,0x4(%esp)
      81:	00 
      82:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
      89:	e8 22 0f 00 00       	call   fb0 <printf>
        printf(1,"cp /[Folder]/* /[Folder]/ to copy all files\n");
      8e:	c7 44 24 04 c8 13 00 	movl   $0x13c8,0x4(%esp)
      95:	00 
      96:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
      9d:	e8 0e 0f 00 00       	call   fb0 <printf>
        printf(1,"cp -R /[Folder]/ /[Folder]/ to recursively copy all files\n");
      a2:	c7 44 24 04 f8 13 00 	movl   $0x13f8,0x4(%esp)
      a9:	00 
      aa:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
      b1:	e8 fa 0e 00 00       	call   fb0 <printf>
        exit();
      b6:	e8 a7 0d 00 00       	call   e62 <exit>
    }

    for (i=0;i<strlen(argv[1])-1;i++){
        if (argv[1][i] == '*'){
            printf(1,"Misplaced *\n");
      bb:	c7 44 24 04 98 13 00 	movl   $0x1398,0x4(%esp)
      c2:	00 
      c3:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
      ca:	e8 e1 0e 00 00       	call   fb0 <printf>
            exit();
      cf:	e8 8e 0d 00 00       	call   e62 <exit>

    if (argv[1][strlen(argv[1])-1] == '*') all = 1;

    if (argv[1][0] == '-' && argv[1][1] == 'R') cp_recursion(argv[2],argv[3]);
	else if (all) cp_all(argv[1],argv[2]);
	else cp(argv[1],argv[2]);
      d4:	e8 57 01 00 00       	call   230 <cp>
      d9:	eb 94                	jmp    6f <main+0x6f>
        }
    }

    if (argv[1][strlen(argv[1])-1] == '*') all = 1;

    if (argv[1][0] == '-' && argv[1][1] == 'R') cp_recursion(argv[2],argv[3]);
      db:	80 78 01 52          	cmpb   $0x52,0x1(%eax)
      df:	90                   	nop
      e0:	0f 85 75 ff ff ff    	jne    5b <main+0x5b>
      e6:	8b 46 0c             	mov    0xc(%esi),%eax
      e9:	89 44 24 04          	mov    %eax,0x4(%esp)
      ed:	8b 46 08             	mov    0x8(%esi),%eax
      f0:	89 04 24             	mov    %eax,(%esp)
      f3:	e8 e8 05 00 00       	call   6e0 <cp_recursion>
      f8:	e9 72 ff ff ff       	jmp    6f <main+0x6f>
      fd:	66 90                	xchg   %ax,%ax
      ff:	90                   	nop

00000100 <strcat>:
#include "stat.h"
#include "fs.h"

char *
strcat(char *dest, const char *src)
{
     100:	55                   	push   %ebp
     101:	89 e5                	mov    %esp,%ebp
     103:	8b 45 08             	mov    0x8(%ebp),%eax
     106:	57                   	push   %edi
     107:	56                   	push   %esi
     108:	8b 75 0c             	mov    0xc(%ebp),%esi
     10b:	53                   	push   %ebx
    int i,j;
    for (i = 0; dest[i] != '\0'; i++)
     10c:	80 38 00             	cmpb   $0x0,(%eax)
     10f:	74 38                	je     149 <strcat+0x49>
     111:	31 c9                	xor    %ecx,%ecx
     113:	90                   	nop
     114:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     118:	83 c1 01             	add    $0x1,%ecx
     11b:	80 3c 08 00          	cmpb   $0x0,(%eax,%ecx,1)
     11f:	75 f7                	jne    118 <strcat+0x18>
     121:	89 ca                	mov    %ecx,%edx
        ;
    for (j = 0; src[j] != '\0'; j++)
     123:	0f b6 1e             	movzbl (%esi),%ebx
     126:	84 db                	test   %bl,%bl
     128:	74 16                	je     140 <strcat+0x40>
     12a:	31 d2                	xor    %edx,%edx
     12c:	8d 3c 08             	lea    (%eax,%ecx,1),%edi
     12f:	90                   	nop
        dest[i+j] = src[j];
     130:	88 1c 17             	mov    %bl,(%edi,%edx,1)
strcat(char *dest, const char *src)
{
    int i,j;
    for (i = 0; dest[i] != '\0'; i++)
        ;
    for (j = 0; src[j] != '\0'; j++)
     133:	83 c2 01             	add    $0x1,%edx
     136:	0f b6 1c 16          	movzbl (%esi,%edx,1),%ebx
     13a:	84 db                	test   %bl,%bl
     13c:	75 f2                	jne    130 <strcat+0x30>
     13e:	01 ca                	add    %ecx,%edx
        dest[i+j] = src[j];
    dest[i+j] = '\0';
     140:	c6 04 10 00          	movb   $0x0,(%eax,%edx,1)
    return dest;
}
     144:	5b                   	pop    %ebx
     145:	5e                   	pop    %esi
     146:	5f                   	pop    %edi
     147:	5d                   	pop    %ebp
     148:	c3                   	ret    

char *
strcat(char *dest, const char *src)
{
    int i,j;
    for (i = 0; dest[i] != '\0'; i++)
     149:	31 d2                	xor    %edx,%edx
     14b:	31 c9                	xor    %ecx,%ecx
     14d:	eb d4                	jmp    123 <strcat+0x23>
     14f:	90                   	nop

00000150 <fmtname>:
}

// list every file
char*
fmtname(char *path)
{
     150:	55                   	push   %ebp
     151:	89 e5                	mov    %esp,%ebp
     153:	53                   	push   %ebx
     154:	83 ec 14             	sub    $0x14,%esp
     157:	8b 5d 08             	mov    0x8(%ebp),%ebx
    //static char buf[DIRSIZ+1];
    char *p;

    // Find first character after last slash.
    for(p=path+strlen(path); p >= path && *p != '/'; p--);
     15a:	89 1c 24             	mov    %ebx,(%esp)
     15d:	e8 5e 0b 00 00       	call   cc0 <strlen>
     162:	01 d8                	add    %ebx,%eax
     164:	73 0c                	jae    172 <fmtname+0x22>
     166:	eb 0f                	jmp    177 <fmtname+0x27>
     168:	83 e8 01             	sub    $0x1,%eax
     16b:	39 c3                	cmp    %eax,%ebx
     16d:	8d 76 00             	lea    0x0(%esi),%esi
     170:	77 05                	ja     177 <fmtname+0x27>
     172:	80 38 2f             	cmpb   $0x2f,(%eax)
     175:	75 f1                	jne    168 <fmtname+0x18>
    p++;
     177:	8d 58 01             	lea    0x1(%eax),%ebx

    // Return blank-padded name.
    if(strlen(p) >= DIRSIZ) return p;
     17a:	89 1c 24             	mov    %ebx,(%esp)
     17d:	e8 3e 0b 00 00       	call   cc0 <strlen>

    //memmove(buf, p, strlen(p));
    //memset(buf+strlen(p), ' ', DIRSIZ-strlen(p));
    return p;
}
     182:	83 c4 14             	add    $0x14,%esp
     185:	89 d8                	mov    %ebx,%eax
     187:	5b                   	pop    %ebx
     188:	5d                   	pop    %ebp
     189:	c3                   	ret    
     18a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000190 <absolute_path>:

int absolute_path(char *dir){
     190:	55                   	push   %ebp
     191:	89 e5                	mov    %esp,%ebp
     193:	56                   	push   %esi
     194:	53                   	push   %ebx
     195:	83 ec 10             	sub    $0x10,%esp
     198:	8b 75 08             	mov    0x8(%ebp),%esi
    char *next = {""};
    next = strcat(next,dir);
     19b:	c7 04 24 a4 13 00 00 	movl   $0x13a4,(%esp)
     1a2:	89 74 24 04          	mov    %esi,0x4(%esp)
     1a6:	e8 55 ff ff ff       	call   100 <strcat>
    next = strcat(next,"/");
     1ab:	c7 44 24 04 18 13 00 	movl   $0x1318,0x4(%esp)
     1b2:	00 
     1b3:	89 04 24             	mov    %eax,(%esp)
     1b6:	e8 45 ff ff ff       	call   100 <strcat>
    next = strcat(next,".pwd");
     1bb:	c7 44 24 04 1a 13 00 	movl   $0x131a,0x4(%esp)
     1c2:	00 
     1c3:	89 04 24             	mov    %eax,(%esp)
     1c6:	e8 35 ff ff ff       	call   100 <strcat>

    int next_pwd;

    next_pwd = open(next,O_CREATE | O_RDWR);
     1cb:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
     1d2:	00 
     1d3:	89 04 24             	mov    %eax,(%esp)
     1d6:	e8 c7 0c 00 00       	call   ea2 <open>
    write(next_pwd,dir,strlen(dir));
     1db:	89 34 24             	mov    %esi,(%esp)
    next = strcat(next,"/");
    next = strcat(next,".pwd");

    int next_pwd;

    next_pwd = open(next,O_CREATE | O_RDWR);
     1de:	89 c3                	mov    %eax,%ebx
    write(next_pwd,dir,strlen(dir));
     1e0:	e8 db 0a 00 00       	call   cc0 <strlen>
     1e5:	89 74 24 04          	mov    %esi,0x4(%esp)
     1e9:	89 1c 24             	mov    %ebx,(%esp)
     1ec:	89 44 24 08          	mov    %eax,0x8(%esp)
     1f0:	e8 8d 0c 00 00       	call   e82 <write>
    write(next_pwd,"/",1);
     1f5:	89 1c 24             	mov    %ebx,(%esp)
     1f8:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
     1ff:	00 
     200:	c7 44 24 04 18 13 00 	movl   $0x1318,0x4(%esp)
     207:	00 
     208:	e8 75 0c 00 00       	call   e82 <write>
    close(next_pwd);
     20d:	89 1c 24             	mov    %ebx,(%esp)
     210:	e8 75 0c 00 00       	call   e8a <close>
    return 1;
}
     215:	83 c4 10             	add    $0x10,%esp
     218:	b8 01 00 00 00       	mov    $0x1,%eax
     21d:	5b                   	pop    %ebx
     21e:	5e                   	pop    %esi
     21f:	5d                   	pop    %ebp
     220:	c3                   	ret    
     221:	eb 0d                	jmp    230 <cp>
     223:	90                   	nop
     224:	90                   	nop
     225:	90                   	nop
     226:	90                   	nop
     227:	90                   	nop
     228:	90                   	nop
     229:	90                   	nop
     22a:	90                   	nop
     22b:	90                   	nop
     22c:	90                   	nop
     22d:	90                   	nop
     22e:	90                   	nop
     22f:	90                   	nop

00000230 <cp>:

void cp(char *source, char *destination){
     230:	55                   	push   %ebp
     231:	89 e5                	mov    %esp,%ebp
     233:	57                   	push   %edi
     234:	56                   	push   %esi
     235:	53                   	push   %ebx
     236:	81 ec 1c 04 00 00    	sub    $0x41c,%esp
     23c:	8b 75 08             	mov    0x8(%ebp),%esi
    int fsource;
    int fcdest;
    int fdest;

    if ((fsource = open(source,O_RDONLY)) < 0){
     23f:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
     246:	00 
     247:	89 34 24             	mov    %esi,(%esp)
     24a:	e8 53 0c 00 00       	call   ea2 <open>
     24f:	85 c0                	test   %eax,%eax
     251:	89 c3                	mov    %eax,%ebx
     253:	78 33                	js     288 <cp+0x58>
        printf(1,"Source File %s Does Not Exist\n", source);
        return;
    }

    if ((fcdest = open(destination,O_RDONLY)) < 0){
     255:	8b 45 0c             	mov    0xc(%ebp),%eax
     258:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
     25f:	00 
     260:	89 04 24             	mov    %eax,(%esp)
     263:	e8 3a 0c 00 00       	call   ea2 <open>
     268:	85 c0                	test   %eax,%eax
     26a:	89 c6                	mov    %eax,%esi
     26c:	78 42                	js     2b0 <cp+0x80>
        char temp[1024];
        while ((n = read(fsource,temp,sizeof(temp))) > 0)
            write(fdest,temp,n);
        close(fdest);
    }
    close(fcdest);
     26e:	89 34 24             	mov    %esi,(%esp)
     271:	e8 14 0c 00 00       	call   e8a <close>

    return;
}
     276:	81 c4 1c 04 00 00    	add    $0x41c,%esp
     27c:	5b                   	pop    %ebx
     27d:	5e                   	pop    %esi
     27e:	5f                   	pop    %edi
     27f:	5d                   	pop    %ebp
     280:	c3                   	ret    
     281:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    int fsource;
    int fcdest;
    int fdest;

    if ((fsource = open(source,O_RDONLY)) < 0){
        printf(1,"Source File %s Does Not Exist\n", source);
     288:	89 74 24 08          	mov    %esi,0x8(%esp)
     28c:	c7 44 24 04 a8 13 00 	movl   $0x13a8,0x4(%esp)
     293:	00 
     294:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     29b:	e8 10 0d 00 00       	call   fb0 <printf>
        close(fdest);
    }
    close(fcdest);

    return;
}
     2a0:	81 c4 1c 04 00 00    	add    $0x41c,%esp
     2a6:	5b                   	pop    %ebx
     2a7:	5e                   	pop    %esi
     2a8:	5f                   	pop    %edi
     2a9:	5d                   	pop    %ebp
     2aa:	c3                   	ret    
     2ab:	90                   	nop
     2ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        printf(1,"Source File %s Does Not Exist\n", source);
        return;
    }

    if ((fcdest = open(destination,O_RDONLY)) < 0){
        fdest = open(destination, O_CREATE | O_RDWR);
     2b0:	8b 45 0c             	mov    0xc(%ebp),%eax
     2b3:	8d bd e8 fb ff ff    	lea    -0x418(%ebp),%edi
     2b9:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
     2c0:	00 
     2c1:	89 04 24             	mov    %eax,(%esp)
     2c4:	e8 d9 0b 00 00       	call   ea2 <open>
     2c9:	89 85 e4 fb ff ff    	mov    %eax,-0x41c(%ebp)
        int n;
        char temp[1024];
        while ((n = read(fsource,temp,sizeof(temp))) > 0)
     2cf:	eb 1d                	jmp    2ee <cp+0xbe>
     2d1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
            write(fdest,temp,n);
     2d8:	89 44 24 08          	mov    %eax,0x8(%esp)
     2dc:	8b 85 e4 fb ff ff    	mov    -0x41c(%ebp),%eax
     2e2:	89 7c 24 04          	mov    %edi,0x4(%esp)
     2e6:	89 04 24             	mov    %eax,(%esp)
     2e9:	e8 94 0b 00 00       	call   e82 <write>

    if ((fcdest = open(destination,O_RDONLY)) < 0){
        fdest = open(destination, O_CREATE | O_RDWR);
        int n;
        char temp[1024];
        while ((n = read(fsource,temp,sizeof(temp))) > 0)
     2ee:	c7 44 24 08 00 04 00 	movl   $0x400,0x8(%esp)
     2f5:	00 
     2f6:	89 7c 24 04          	mov    %edi,0x4(%esp)
     2fa:	89 1c 24             	mov    %ebx,(%esp)
     2fd:	e8 78 0b 00 00       	call   e7a <read>
     302:	85 c0                	test   %eax,%eax
     304:	7f d2                	jg     2d8 <cp+0xa8>
            write(fdest,temp,n);
        close(fdest);
     306:	8b 85 e4 fb ff ff    	mov    -0x41c(%ebp),%eax
     30c:	89 04 24             	mov    %eax,(%esp)
     30f:	e8 76 0b 00 00       	call   e8a <close>
     314:	e9 55 ff ff ff       	jmp    26e <cp+0x3e>
     319:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000320 <cp_all>:

    return;
}

void cp_all(char *path,char *destination)
{
     320:	55                   	push   %ebp
     321:	89 e5                	mov    %esp,%ebp
     323:	57                   	push   %edi
     324:	56                   	push   %esi
     325:	53                   	push   %ebx
     326:	81 ec 6c 06 00 00    	sub    $0x66c,%esp
    struct stat st;
    //*/

    int pwd;
    char *tmp = {""};
    strcat(tmp,path);
     32c:	8b 45 08             	mov    0x8(%ebp),%eax
     32f:	c7 04 24 a4 13 00 00 	movl   $0x13a4,(%esp)
    tmp[strlen(tmp)-1]='\0';
    strcat(tmp,".pwd");
    pwd = open(tmp,O_RDONLY);

    char dummy[1024];
    read(pwd,dummy,sizeof(dummy));
     336:	8d 9d e8 fb ff ff    	lea    -0x418(%ebp),%ebx
    struct stat st;
    //*/

    int pwd;
    char *tmp = {""};
    strcat(tmp,path);
     33c:	89 44 24 04          	mov    %eax,0x4(%esp)
     340:	e8 bb fd ff ff       	call   100 <strcat>
    tmp[strlen(tmp)-1]='\0';
     345:	c7 04 24 a4 13 00 00 	movl   $0x13a4,(%esp)
     34c:	e8 6f 09 00 00       	call   cc0 <strlen>
    strcat(tmp,".pwd");
     351:	c7 44 24 04 1a 13 00 	movl   $0x131a,0x4(%esp)
     358:	00 
     359:	c7 04 24 a4 13 00 00 	movl   $0x13a4,(%esp)
    //*/

    int pwd;
    char *tmp = {""};
    strcat(tmp,path);
    tmp[strlen(tmp)-1]='\0';
     360:	c6 80 a3 13 00 00 00 	movb   $0x0,0x13a3(%eax)
    strcat(tmp,".pwd");
     367:	e8 94 fd ff ff       	call   100 <strcat>
    pwd = open(tmp,O_RDONLY);
     36c:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
     373:	00 
     374:	c7 04 24 a4 13 00 00 	movl   $0x13a4,(%esp)
     37b:	e8 22 0b 00 00       	call   ea2 <open>

    char dummy[1024];
    read(pwd,dummy,sizeof(dummy));
     380:	c7 44 24 08 00 04 00 	movl   $0x400,0x8(%esp)
     387:	00 
     388:	89 5c 24 04          	mov    %ebx,0x4(%esp)
     38c:	89 04 24             	mov    %eax,(%esp)
    int pwd;
    char *tmp = {""};
    strcat(tmp,path);
    tmp[strlen(tmp)-1]='\0';
    strcat(tmp,".pwd");
    pwd = open(tmp,O_RDONLY);
     38f:	89 c7                	mov    %eax,%edi

    char dummy[1024];
    read(pwd,dummy,sizeof(dummy));
     391:	e8 e4 0a 00 00       	call   e7a <read>
    dummy[strlen(dummy)] = '.';
     396:	89 1c 24             	mov    %ebx,(%esp)
     399:	e8 22 09 00 00       	call   cc0 <strlen>
    dummy[strlen(dummy)+1] = '\0';
     39e:	89 1c 24             	mov    %ebx,(%esp)
    strcat(tmp,".pwd");
    pwd = open(tmp,O_RDONLY);

    char dummy[1024];
    read(pwd,dummy,sizeof(dummy));
    dummy[strlen(dummy)] = '.';
     3a1:	c6 84 05 e8 fb ff ff 	movb   $0x2e,-0x418(%ebp,%eax,1)
     3a8:	2e 
    dummy[strlen(dummy)+1] = '\0';
     3a9:	e8 12 09 00 00       	call   cc0 <strlen>
    printf(1,"alamat : %s\n",dummy);
     3ae:	89 5c 24 08          	mov    %ebx,0x8(%esp)
     3b2:	c7 44 24 04 1f 13 00 	movl   $0x131f,0x4(%esp)
     3b9:	00 
     3ba:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    pwd = open(tmp,O_RDONLY);

    char dummy[1024];
    read(pwd,dummy,sizeof(dummy));
    dummy[strlen(dummy)] = '.';
    dummy[strlen(dummy)+1] = '\0';
     3c1:	c6 84 05 e9 fb ff ff 	movb   $0x0,-0x417(%ebp,%eax,1)
     3c8:	00 
    printf(1,"alamat : %s\n",dummy);
     3c9:	e8 e2 0b 00 00       	call   fb0 <printf>

    if((fd = open(dummy, 0)) < 0){
     3ce:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
     3d5:	00 
     3d6:	89 1c 24             	mov    %ebx,(%esp)
     3d9:	e8 c4 0a 00 00       	call   ea2 <open>
     3de:	85 c0                	test   %eax,%eax
     3e0:	89 c6                	mov    %eax,%esi
     3e2:	0f 88 68 02 00 00    	js     650 <cp_all+0x330>
        printf(2, "ls: cannot open %s\n", dummy);
        return;
    }

    if(fstat(fd, &st) < 0){
     3e8:	8d 85 d4 f9 ff ff    	lea    -0x62c(%ebp),%eax
     3ee:	89 44 24 04          	mov    %eax,0x4(%esp)
     3f2:	89 34 24             	mov    %esi,(%esp)
     3f5:	e8 c0 0a 00 00       	call   eba <fstat>
     3fa:	85 c0                	test   %eax,%eax
     3fc:	0f 88 96 02 00 00    	js     698 <cp_all+0x378>
        printf(2, "ls: cannot stat %s\n", dummy);
        close(fd);
        return;
    }

    switch(st.type){
     402:	0f b7 85 d4 f9 ff ff 	movzwl -0x62c(%ebp),%eax
     409:	66 83 f8 01          	cmp    $0x1,%ax
     40d:	74 79                	je     488 <cp_all+0x168>
     40f:	66 83 f8 02          	cmp    $0x2,%ax
     413:	75 54                	jne    469 <cp_all+0x149>
        case T_FILE:
            printf(1, "%s %d %d %d\n", fmtname(dummy), st.type, st.ino, st.size);
     415:	8b 95 e4 f9 ff ff    	mov    -0x61c(%ebp),%edx
     41b:	8b 8d dc f9 ff ff    	mov    -0x624(%ebp),%ecx
     421:	89 1c 24             	mov    %ebx,(%esp)
     424:	89 95 b0 f9 ff ff    	mov    %edx,-0x650(%ebp)
     42a:	89 8d b4 f9 ff ff    	mov    %ecx,-0x64c(%ebp)
     430:	e8 1b fd ff ff       	call   150 <fmtname>
     435:	8b 95 b0 f9 ff ff    	mov    -0x650(%ebp),%edx
     43b:	8b 8d b4 f9 ff ff    	mov    -0x64c(%ebp),%ecx
     441:	c7 44 24 0c 02 00 00 	movl   $0x2,0xc(%esp)
     448:	00 
     449:	c7 44 24 04 54 13 00 	movl   $0x1354,0x4(%esp)
     450:	00 
     451:	89 54 24 14          	mov    %edx,0x14(%esp)
     455:	89 4c 24 10          	mov    %ecx,0x10(%esp)
     459:	89 44 24 08          	mov    %eax,0x8(%esp)
     45d:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     464:	e8 47 0b 00 00       	call   fb0 <printf>
                    //cp(tmp1,tmp);
                }
            }
            break;
    }
    close(pwd);
     469:	89 3c 24             	mov    %edi,(%esp)
     46c:	e8 19 0a 00 00       	call   e8a <close>
    close(fd);
     471:	89 34 24             	mov    %esi,(%esp)
     474:	e8 11 0a 00 00       	call   e8a <close>
}
     479:	81 c4 6c 06 00 00    	add    $0x66c,%esp
     47f:	5b                   	pop    %ebx
     480:	5e                   	pop    %esi
     481:	5f                   	pop    %edi
     482:	5d                   	pop    %ebp
     483:	c3                   	ret    
     484:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        case T_FILE:
            printf(1, "%s %d %d %d\n", fmtname(dummy), st.type, st.ino, st.size);
            break;

        case T_DIR:
            if(strlen(dummy) + 1 + DIRSIZ + 1 > sizeof buf){
     488:	89 1c 24             	mov    %ebx,(%esp)
     48b:	e8 30 08 00 00       	call   cc0 <strlen>
     490:	83 c0 10             	add    $0x10,%eax
     493:	3d 00 02 00 00       	cmp    $0x200,%eax
     498:	0f 87 da 01 00 00    	ja     678 <cp_all+0x358>
                printf(1, "ls: path too long\n");
                break;
            }
            strcpy(buf, dummy);
     49e:	8d 85 e8 f9 ff ff    	lea    -0x618(%ebp),%eax
     4a4:	89 5c 24 04          	mov    %ebx,0x4(%esp)
     4a8:	89 04 24             	mov    %eax,(%esp)
     4ab:	e8 90 07 00 00       	call   c40 <strcpy>
            p = buf+strlen(buf);
     4b0:	8d 85 e8 f9 ff ff    	lea    -0x618(%ebp),%eax
     4b6:	89 04 24             	mov    %eax,(%esp)
     4b9:	e8 02 08 00 00       	call   cc0 <strlen>
     4be:	8d 8d e8 f9 ff ff    	lea    -0x618(%ebp),%ecx
     4c4:	01 c8                	add    %ecx,%eax
            *p++ = '/';
     4c6:	8d 48 01             	lea    0x1(%eax),%ecx
            if(strlen(dummy) + 1 + DIRSIZ + 1 > sizeof buf){
                printf(1, "ls: path too long\n");
                break;
            }
            strcpy(buf, dummy);
            p = buf+strlen(buf);
     4c9:	89 85 b4 f9 ff ff    	mov    %eax,-0x64c(%ebp)
            *p++ = '/';
     4cf:	89 8d b0 f9 ff ff    	mov    %ecx,-0x650(%ebp)
     4d5:	c6 00 2f             	movb   $0x2f,(%eax)

            while(read(fd, &de, sizeof(de)) == sizeof(de)){
     4d8:	8d 85 c4 f9 ff ff    	lea    -0x63c(%ebp),%eax
     4de:	c7 44 24 08 10 00 00 	movl   $0x10,0x8(%esp)
     4e5:	00 
     4e6:	89 44 24 04          	mov    %eax,0x4(%esp)
     4ea:	89 34 24             	mov    %esi,(%esp)
     4ed:	e8 88 09 00 00       	call   e7a <read>
     4f2:	83 f8 10             	cmp    $0x10,%eax
     4f5:	0f 85 6e ff ff ff    	jne    469 <cp_all+0x149>
                if(de.inum == 0) continue;
     4fb:	66 83 bd c4 f9 ff ff 	cmpw   $0x0,-0x63c(%ebp)
     502:	00 
     503:	74 d3                	je     4d8 <cp_all+0x1b8>
                memmove(p, de.name, DIRSIZ);
     505:	8d 85 c6 f9 ff ff    	lea    -0x63a(%ebp),%eax
     50b:	89 44 24 04          	mov    %eax,0x4(%esp)
     50f:	8b 85 b0 f9 ff ff    	mov    -0x650(%ebp),%eax
     515:	c7 44 24 08 0e 00 00 	movl   $0xe,0x8(%esp)
     51c:	00 
     51d:	89 04 24             	mov    %eax,(%esp)
     520:	e8 0b 09 00 00       	call   e30 <memmove>
                p[DIRSIZ] = 0;
     525:	8b 85 b4 f9 ff ff    	mov    -0x64c(%ebp),%eax
     52b:	c6 40 0f 00          	movb   $0x0,0xf(%eax)
                if(stat(buf, &st) < 0){
     52f:	8d 85 d4 f9 ff ff    	lea    -0x62c(%ebp),%eax
     535:	89 44 24 04          	mov    %eax,0x4(%esp)
     539:	8d 85 e8 f9 ff ff    	lea    -0x618(%ebp),%eax
     53f:	89 04 24             	mov    %eax,(%esp)
     542:	e8 69 08 00 00       	call   db0 <stat>
     547:	85 c0                	test   %eax,%eax
                    printf(1, "ls: cannot stat %s\n", buf);
     549:	8d 85 e8 f9 ff ff    	lea    -0x618(%ebp),%eax

            while(read(fd, &de, sizeof(de)) == sizeof(de)){
                if(de.inum == 0) continue;
                memmove(p, de.name, DIRSIZ);
                p[DIRSIZ] = 0;
                if(stat(buf, &st) < 0){
     54f:	0f 88 6b 01 00 00    	js     6c0 <cp_all+0x3a0>
                    printf(1, "ls: cannot stat %s\n", buf);
                    continue;
                }
                if (fmtname(buf)[0] != '.' && st.type == T_FILE){
     555:	89 04 24             	mov    %eax,(%esp)
     558:	e8 f3 fb ff ff       	call   150 <fmtname>
     55d:	80 38 2e             	cmpb   $0x2e,(%eax)
     560:	0f 84 72 ff ff ff    	je     4d8 <cp_all+0x1b8>
     566:	66 83 bd d4 f9 ff ff 	cmpw   $0x2,-0x62c(%ebp)
     56d:	02 
     56e:	0f 85 64 ff ff ff    	jne    4d8 <cp_all+0x1b8>
                    char *name = fmtname(buf);
     574:	8d 85 e8 f9 ff ff    	lea    -0x618(%ebp),%eax
     57a:	89 04 24             	mov    %eax,(%esp)
     57d:	e8 ce fb ff ff       	call   150 <fmtname>

                    char *tmp1 = malloc(100);
     582:	c7 04 24 64 00 00 00 	movl   $0x64,(%esp)
                if(stat(buf, &st) < 0){
                    printf(1, "ls: cannot stat %s\n", buf);
                    continue;
                }
                if (fmtname(buf)[0] != '.' && st.type == T_FILE){
                    char *name = fmtname(buf);
     589:	89 85 ac f9 ff ff    	mov    %eax,-0x654(%ebp)

                    char *tmp1 = malloc(100);
     58f:	e8 9c 0c 00 00       	call   1230 <malloc>
                    memset(tmp1,0,100);
     594:	c7 44 24 08 64 00 00 	movl   $0x64,0x8(%esp)
     59b:	00 
     59c:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
     5a3:	00 
     5a4:	89 04 24             	mov    %eax,(%esp)
     5a7:	89 85 a8 f9 ff ff    	mov    %eax,-0x658(%ebp)
     5ad:	e8 3e 07 00 00       	call   cf0 <memset>
                    strcat(tmp1,dummy);
     5b2:	8b 95 a8 f9 ff ff    	mov    -0x658(%ebp),%edx
     5b8:	89 5c 24 04          	mov    %ebx,0x4(%esp)
     5bc:	89 14 24             	mov    %edx,(%esp)
     5bf:	e8 3c fb ff ff       	call   100 <strcat>
                    tmp1[strlen(tmp1)-1]='\0';
     5c4:	8b 95 a8 f9 ff ff    	mov    -0x658(%ebp),%edx
     5ca:	89 14 24             	mov    %edx,(%esp)
     5cd:	e8 ee 06 00 00       	call   cc0 <strlen>
     5d2:	8b 95 a8 f9 ff ff    	mov    -0x658(%ebp),%edx
     5d8:	c6 44 02 ff 00       	movb   $0x0,-0x1(%edx,%eax,1)
                    strcat(tmp1,name);
     5dd:	8b 85 ac f9 ff ff    	mov    -0x654(%ebp),%eax
     5e3:	89 14 24             	mov    %edx,(%esp)
     5e6:	89 44 24 04          	mov    %eax,0x4(%esp)
     5ea:	e8 11 fb ff ff       	call   100 <strcat>

                    char *tmp = malloc(100);
     5ef:	c7 04 24 64 00 00 00 	movl   $0x64,(%esp)
     5f6:	e8 35 0c 00 00       	call   1230 <malloc>
                    memset(tmp,0,100);
     5fb:	c7 44 24 08 64 00 00 	movl   $0x64,0x8(%esp)
     602:	00 
     603:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
     60a:	00 
     60b:	89 04 24             	mov    %eax,(%esp)
     60e:	89 85 a8 f9 ff ff    	mov    %eax,-0x658(%ebp)
     614:	e8 d7 06 00 00       	call   cf0 <memset>
                    strcat(tmp,destination);
     619:	8b 95 a8 f9 ff ff    	mov    -0x658(%ebp),%edx
     61f:	8b 4d 0c             	mov    0xc(%ebp),%ecx
     622:	89 14 24             	mov    %edx,(%esp)
     625:	89 4c 24 04          	mov    %ecx,0x4(%esp)
     629:	e8 d2 fa ff ff       	call   100 <strcat>
                    strcat(tmp,name);
     62e:	8b 85 ac f9 ff ff    	mov    -0x654(%ebp),%eax
     634:	8b 95 a8 f9 ff ff    	mov    -0x658(%ebp),%edx
     63a:	89 44 24 04          	mov    %eax,0x4(%esp)
     63e:	89 14 24             	mov    %edx,(%esp)
     641:	e8 ba fa ff ff       	call   100 <strcat>
     646:	e9 8d fe ff ff       	jmp    4d8 <cp_all+0x1b8>
     64b:	90                   	nop
     64c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    dummy[strlen(dummy)] = '.';
    dummy[strlen(dummy)+1] = '\0';
    printf(1,"alamat : %s\n",dummy);

    if((fd = open(dummy, 0)) < 0){
        printf(2, "ls: cannot open %s\n", dummy);
     650:	89 5c 24 08          	mov    %ebx,0x8(%esp)
     654:	c7 44 24 04 2c 13 00 	movl   $0x132c,0x4(%esp)
     65b:	00 
     65c:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
     663:	e8 48 09 00 00       	call   fb0 <printf>
            }
            break;
    }
    close(pwd);
    close(fd);
}
     668:	81 c4 6c 06 00 00    	add    $0x66c,%esp
     66e:	5b                   	pop    %ebx
     66f:	5e                   	pop    %esi
     670:	5f                   	pop    %edi
     671:	5d                   	pop    %ebp
     672:	c3                   	ret    
     673:	90                   	nop
     674:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
            printf(1, "%s %d %d %d\n", fmtname(dummy), st.type, st.ino, st.size);
            break;

        case T_DIR:
            if(strlen(dummy) + 1 + DIRSIZ + 1 > sizeof buf){
                printf(1, "ls: path too long\n");
     678:	c7 44 24 04 61 13 00 	movl   $0x1361,0x4(%esp)
     67f:	00 
     680:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     687:	e8 24 09 00 00       	call   fb0 <printf>
                break;
     68c:	e9 d8 fd ff ff       	jmp    469 <cp_all+0x149>
     691:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        printf(2, "ls: cannot open %s\n", dummy);
        return;
    }

    if(fstat(fd, &st) < 0){
        printf(2, "ls: cannot stat %s\n", dummy);
     698:	89 5c 24 08          	mov    %ebx,0x8(%esp)
     69c:	c7 44 24 04 40 13 00 	movl   $0x1340,0x4(%esp)
     6a3:	00 
     6a4:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
     6ab:	e8 00 09 00 00       	call   fb0 <printf>
        close(fd);
     6b0:	89 34 24             	mov    %esi,(%esp)
     6b3:	e8 d2 07 00 00       	call   e8a <close>
        return;
     6b8:	e9 bc fd ff ff       	jmp    479 <cp_all+0x159>
     6bd:	8d 76 00             	lea    0x0(%esi),%esi
            while(read(fd, &de, sizeof(de)) == sizeof(de)){
                if(de.inum == 0) continue;
                memmove(p, de.name, DIRSIZ);
                p[DIRSIZ] = 0;
                if(stat(buf, &st) < 0){
                    printf(1, "ls: cannot stat %s\n", buf);
     6c0:	89 44 24 08          	mov    %eax,0x8(%esp)
     6c4:	c7 44 24 04 40 13 00 	movl   $0x1340,0x4(%esp)
     6cb:	00 
     6cc:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     6d3:	e8 d8 08 00 00       	call   fb0 <printf>
                    continue;
     6d8:	e9 fb fd ff ff       	jmp    4d8 <cp_all+0x1b8>
     6dd:	8d 76 00             	lea    0x0(%esi),%esi

000006e0 <cp_recursion>:
    close(pwd);
    close(fd);
}

void cp_recursion(char *path,char *destination)
{
     6e0:	55                   	push   %ebp
     6e1:	89 e5                	mov    %esp,%ebp
     6e3:	57                   	push   %edi
     6e4:	56                   	push   %esi
     6e5:	53                   	push   %ebx
     6e6:	81 ec 6c 02 00 00    	sub    $0x26c,%esp
    if (path[strlen(dummy)-1] != '/'){
        path[strlen(dummy)] = '/';
        path[strlen(dummy)+1] = '\0';
    }
    */
    strcat(tmp,path);
     6ec:	8b 45 08             	mov    0x8(%ebp),%eax
     6ef:	c7 04 24 a4 13 00 00 	movl   $0x13a4,(%esp)
     6f6:	89 44 24 04          	mov    %eax,0x4(%esp)
     6fa:	e8 01 fa ff ff       	call   100 <strcat>
    strcat(tmp,".pwd");
     6ff:	c7 44 24 04 1a 13 00 	movl   $0x131a,0x4(%esp)
     706:	00 
     707:	c7 04 24 a4 13 00 00 	movl   $0x13a4,(%esp)
     70e:	e8 ed f9 ff ff       	call   100 <strcat>
    pwd = open(tmp,O_RDONLY);
     713:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
     71a:	00 
     71b:	c7 04 24 a4 13 00 00 	movl   $0x13a4,(%esp)
     722:	e8 7b 07 00 00       	call   ea2 <open>

    char *dummy = malloc(1024);
     727:	c7 04 24 00 04 00 00 	movl   $0x400,(%esp)
        path[strlen(dummy)+1] = '\0';
    }
    */
    strcat(tmp,path);
    strcat(tmp,".pwd");
    pwd = open(tmp,O_RDONLY);
     72e:	89 c6                	mov    %eax,%esi

    char *dummy = malloc(1024);
     730:	e8 fb 0a 00 00       	call   1230 <malloc>
    memset(dummy,0,1024);
     735:	c7 44 24 08 00 04 00 	movl   $0x400,0x8(%esp)
     73c:	00 
     73d:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
     744:	00 
    */
    strcat(tmp,path);
    strcat(tmp,".pwd");
    pwd = open(tmp,O_RDONLY);

    char *dummy = malloc(1024);
     745:	89 c3                	mov    %eax,%ebx
    memset(dummy,0,1024);
     747:	89 04 24             	mov    %eax,(%esp)
     74a:	e8 a1 05 00 00       	call   cf0 <memset>
    read(pwd,dummy,sizeof(dummy));
     74f:	c7 44 24 08 04 00 00 	movl   $0x4,0x8(%esp)
     756:	00 
     757:	89 5c 24 04          	mov    %ebx,0x4(%esp)
     75b:	89 34 24             	mov    %esi,(%esp)
     75e:	e8 17 07 00 00       	call   e7a <read>
    dummy[strlen(dummy)] = '.';
     763:	89 1c 24             	mov    %ebx,(%esp)
     766:	e8 55 05 00 00       	call   cc0 <strlen>
     76b:	c6 04 03 2e          	movb   $0x2e,(%ebx,%eax,1)
    dummy[strlen(dummy)+1] = '\0';
     76f:	89 1c 24             	mov    %ebx,(%esp)
     772:	e8 49 05 00 00       	call   cc0 <strlen>
     777:	c6 44 03 01 00       	movb   $0x0,0x1(%ebx,%eax,1)
    //printf(1,"alamat : %s\n",dummy);

    if((fd = open(dummy, 0)) < 0){
     77c:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
     783:	00 
     784:	89 1c 24             	mov    %ebx,(%esp)
     787:	e8 16 07 00 00       	call   ea2 <open>
     78c:	85 c0                	test   %eax,%eax
     78e:	89 c7                	mov    %eax,%edi
     790:	0f 88 22 03 00 00    	js     ab8 <cp_recursion+0x3d8>
        printf(2, "ls: cannot open %s\n", dummy);
        return;
    }

    if(fstat(fd, &st) < 0){
     796:	8d 85 d4 fd ff ff    	lea    -0x22c(%ebp),%eax
     79c:	89 44 24 04          	mov    %eax,0x4(%esp)
     7a0:	89 3c 24             	mov    %edi,(%esp)
     7a3:	e8 12 07 00 00       	call   eba <fstat>
     7a8:	85 c0                	test   %eax,%eax
     7aa:	0f 88 50 03 00 00    	js     b00 <cp_recursion+0x420>
        printf(2, "ls: cannot stat %s\n", dummy);
        close(fd);
        return;
    }

    switch(st.type){
     7b0:	0f b7 85 d4 fd ff ff 	movzwl -0x22c(%ebp),%eax
     7b7:	66 83 f8 01          	cmp    $0x1,%ax
     7bb:	74 7b                	je     838 <cp_recursion+0x158>
     7bd:	66 83 f8 02          	cmp    $0x2,%ax
     7c1:	75 54                	jne    817 <cp_recursion+0x137>
        case T_FILE:
            printf(1, "%s %d %d %d\n", fmtname(dummy), st.type, st.ino, st.size);
     7c3:	8b 8d e4 fd ff ff    	mov    -0x21c(%ebp),%ecx
     7c9:	8b 95 dc fd ff ff    	mov    -0x224(%ebp),%edx
     7cf:	89 1c 24             	mov    %ebx,(%esp)
     7d2:	89 8d b0 fd ff ff    	mov    %ecx,-0x250(%ebp)
     7d8:	89 95 b4 fd ff ff    	mov    %edx,-0x24c(%ebp)
     7de:	e8 6d f9 ff ff       	call   150 <fmtname>
     7e3:	8b 8d b0 fd ff ff    	mov    -0x250(%ebp),%ecx
     7e9:	8b 95 b4 fd ff ff    	mov    -0x24c(%ebp),%edx
     7ef:	c7 44 24 0c 02 00 00 	movl   $0x2,0xc(%esp)
     7f6:	00 
     7f7:	c7 44 24 04 54 13 00 	movl   $0x1354,0x4(%esp)
     7fe:	00 
     7ff:	89 4c 24 14          	mov    %ecx,0x14(%esp)
     803:	89 54 24 10          	mov    %edx,0x10(%esp)
     807:	89 44 24 08          	mov    %eax,0x8(%esp)
     80b:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     812:	e8 99 07 00 00       	call   fb0 <printf>
                    cp_recursion(tmp1,tmp);
                }
            }
            break;
    }
    close(pwd);
     817:	89 34 24             	mov    %esi,(%esp)
     81a:	e8 6b 06 00 00       	call   e8a <close>
    close(fd);
     81f:	89 3c 24             	mov    %edi,(%esp)
     822:	e8 63 06 00 00       	call   e8a <close>
}
     827:	81 c4 6c 02 00 00    	add    $0x26c,%esp
     82d:	5b                   	pop    %ebx
     82e:	5e                   	pop    %esi
     82f:	5f                   	pop    %edi
     830:	5d                   	pop    %ebp
     831:	c3                   	ret    
     832:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        case T_FILE:
            printf(1, "%s %d %d %d\n", fmtname(dummy), st.type, st.ino, st.size);
            break;

        case T_DIR:
            if(strlen(dummy) + 1 + DIRSIZ + 1 > sizeof buf){
     838:	89 1c 24             	mov    %ebx,(%esp)
     83b:	e8 80 04 00 00       	call   cc0 <strlen>
     840:	83 c0 10             	add    $0x10,%eax
     843:	3d 00 02 00 00       	cmp    $0x200,%eax
     848:	0f 87 92 02 00 00    	ja     ae0 <cp_recursion+0x400>
                printf(1, "ls: path too long\n");
                break;
            }
            strcpy(buf, dummy);
     84e:	8d 85 e8 fd ff ff    	lea    -0x218(%ebp),%eax
     854:	89 5c 24 04          	mov    %ebx,0x4(%esp)
     858:	89 04 24             	mov    %eax,(%esp)
     85b:	e8 e0 03 00 00       	call   c40 <strcpy>
            p = buf+strlen(buf);
     860:	8d 85 e8 fd ff ff    	lea    -0x218(%ebp),%eax
     866:	89 04 24             	mov    %eax,(%esp)
     869:	e8 52 04 00 00       	call   cc0 <strlen>
     86e:	8d 95 e8 fd ff ff    	lea    -0x218(%ebp),%edx
     874:	01 d0                	add    %edx,%eax
            *p++ = '/';
     876:	8d 48 01             	lea    0x1(%eax),%ecx
            if(strlen(dummy) + 1 + DIRSIZ + 1 > sizeof buf){
                printf(1, "ls: path too long\n");
                break;
            }
            strcpy(buf, dummy);
            p = buf+strlen(buf);
     879:	89 85 b4 fd ff ff    	mov    %eax,-0x24c(%ebp)
            *p++ = '/';
     87f:	89 8d b0 fd ff ff    	mov    %ecx,-0x250(%ebp)
     885:	c6 00 2f             	movb   $0x2f,(%eax)

            while(read(fd, &de, sizeof(de)) == sizeof(de)){
     888:	8d 85 c4 fd ff ff    	lea    -0x23c(%ebp),%eax
     88e:	c7 44 24 08 10 00 00 	movl   $0x10,0x8(%esp)
     895:	00 
     896:	89 44 24 04          	mov    %eax,0x4(%esp)
     89a:	89 3c 24             	mov    %edi,(%esp)
     89d:	e8 d8 05 00 00       	call   e7a <read>
     8a2:	83 f8 10             	cmp    $0x10,%eax
     8a5:	0f 85 6c ff ff ff    	jne    817 <cp_recursion+0x137>
                if(de.inum == 0) continue;
     8ab:	66 83 bd c4 fd ff ff 	cmpw   $0x0,-0x23c(%ebp)
     8b2:	00 
     8b3:	74 d3                	je     888 <cp_recursion+0x1a8>
                memmove(p, de.name, DIRSIZ);
     8b5:	8d 85 c6 fd ff ff    	lea    -0x23a(%ebp),%eax
     8bb:	89 44 24 04          	mov    %eax,0x4(%esp)
     8bf:	8b 85 b0 fd ff ff    	mov    -0x250(%ebp),%eax
     8c5:	c7 44 24 08 0e 00 00 	movl   $0xe,0x8(%esp)
     8cc:	00 
     8cd:	89 04 24             	mov    %eax,(%esp)
     8d0:	e8 5b 05 00 00       	call   e30 <memmove>
                p[DIRSIZ] = 0;
     8d5:	8b 85 b4 fd ff ff    	mov    -0x24c(%ebp),%eax
     8db:	c6 40 0f 00          	movb   $0x0,0xf(%eax)
                if(stat(buf, &st) < 0){
     8df:	8d 85 d4 fd ff ff    	lea    -0x22c(%ebp),%eax
     8e5:	89 44 24 04          	mov    %eax,0x4(%esp)
     8e9:	8d 85 e8 fd ff ff    	lea    -0x218(%ebp),%eax
     8ef:	89 04 24             	mov    %eax,(%esp)
     8f2:	e8 b9 04 00 00       	call   db0 <stat>
     8f7:	85 c0                	test   %eax,%eax
                    printf(1, "ls: cannot stat %s\n", buf);
     8f9:	8d 85 e8 fd ff ff    	lea    -0x218(%ebp),%eax

            while(read(fd, &de, sizeof(de)) == sizeof(de)){
                if(de.inum == 0) continue;
                memmove(p, de.name, DIRSIZ);
                p[DIRSIZ] = 0;
                if(stat(buf, &st) < 0){
     8ff:	0f 88 23 02 00 00    	js     b28 <cp_recursion+0x448>
                    printf(1, "ls: cannot stat %s\n", buf);
                    continue;
                }
                if (fmtname(buf)[0] != '.' && st.type == T_FILE){
     905:	89 04 24             	mov    %eax,(%esp)
     908:	e8 43 f8 ff ff       	call   150 <fmtname>
     90d:	80 38 2e             	cmpb   $0x2e,(%eax)
     910:	74 0e                	je     920 <cp_recursion+0x240>
     912:	66 83 bd d4 fd ff ff 	cmpw   $0x2,-0x22c(%ebp)
     919:	02 
     91a:	0f 84 28 02 00 00    	je     b48 <cp_recursion+0x468>
                    memset(tmp,0,100);
                    strcat(tmp,destination);
                    strcat(tmp,name);
                    cp(tmp1,tmp);
                }
                if (fmtname(buf)[0] != '.' && st.type == T_DIR){
     920:	8d 85 e8 fd ff ff    	lea    -0x218(%ebp),%eax
     926:	89 04 24             	mov    %eax,(%esp)
     929:	e8 22 f8 ff ff       	call   150 <fmtname>
     92e:	80 38 2e             	cmpb   $0x2e,(%eax)
     931:	0f 84 51 ff ff ff    	je     888 <cp_recursion+0x1a8>
     937:	66 83 bd d4 fd ff ff 	cmpw   $0x1,-0x22c(%ebp)
     93e:	01 
     93f:	0f 85 43 ff ff ff    	jne    888 <cp_recursion+0x1a8>
                    char *name = fmtname(buf);
     945:	8d 85 e8 fd ff ff    	lea    -0x218(%ebp),%eax
     94b:	89 04 24             	mov    %eax,(%esp)
     94e:	e8 fd f7 ff ff       	call   150 <fmtname>

                    char *tmp1 = malloc(100);
     953:	c7 04 24 64 00 00 00 	movl   $0x64,(%esp)
                    strcat(tmp,destination);
                    strcat(tmp,name);
                    cp(tmp1,tmp);
                }
                if (fmtname(buf)[0] != '.' && st.type == T_DIR){
                    char *name = fmtname(buf);
     95a:	89 85 a4 fd ff ff    	mov    %eax,-0x25c(%ebp)

                    char *tmp1 = malloc(100);
     960:	e8 cb 08 00 00       	call   1230 <malloc>
                    memset(tmp1,0,100);
     965:	c7 44 24 08 64 00 00 	movl   $0x64,0x8(%esp)
     96c:	00 
     96d:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
     974:	00 
     975:	89 04 24             	mov    %eax,(%esp)
     978:	89 85 ac fd ff ff    	mov    %eax,-0x254(%ebp)
     97e:	e8 6d 03 00 00       	call   cf0 <memset>
                    strcat(tmp1,dummy);
     983:	8b 95 ac fd ff ff    	mov    -0x254(%ebp),%edx
     989:	89 5c 24 04          	mov    %ebx,0x4(%esp)
     98d:	89 14 24             	mov    %edx,(%esp)
     990:	e8 6b f7 ff ff       	call   100 <strcat>
                    tmp1[strlen(tmp1)-1]='\0';
     995:	8b 95 ac fd ff ff    	mov    -0x254(%ebp),%edx
     99b:	89 14 24             	mov    %edx,(%esp)
     99e:	e8 1d 03 00 00       	call   cc0 <strlen>
     9a3:	8b 95 ac fd ff ff    	mov    -0x254(%ebp),%edx
     9a9:	c6 44 02 ff 00       	movb   $0x0,-0x1(%edx,%eax,1)
                    strcat(tmp1,name);
     9ae:	8b 85 a4 fd ff ff    	mov    -0x25c(%ebp),%eax
     9b4:	89 14 24             	mov    %edx,(%esp)
     9b7:	89 44 24 04          	mov    %eax,0x4(%esp)
     9bb:	e8 40 f7 ff ff       	call   100 <strcat>
                    strcat(tmp1,"/");
     9c0:	8b 95 ac fd ff ff    	mov    -0x254(%ebp),%edx
     9c6:	c7 44 24 04 18 13 00 	movl   $0x1318,0x4(%esp)
     9cd:	00 
     9ce:	89 14 24             	mov    %edx,(%esp)
     9d1:	e8 2a f7 ff ff       	call   100 <strcat>

                    char *tmp = malloc(100);
     9d6:	c7 04 24 64 00 00 00 	movl   $0x64,(%esp)
     9dd:	e8 4e 08 00 00       	call   1230 <malloc>
                    memset(tmp,0,100);
     9e2:	c7 44 24 08 64 00 00 	movl   $0x64,0x8(%esp)
     9e9:	00 
     9ea:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
     9f1:	00 
     9f2:	89 04 24             	mov    %eax,(%esp)
     9f5:	89 85 a8 fd ff ff    	mov    %eax,-0x258(%ebp)
     9fb:	e8 f0 02 00 00       	call   cf0 <memset>
                    strcat(tmp,destination);
     a00:	8b 4d 0c             	mov    0xc(%ebp),%ecx
     a03:	8b 85 a8 fd ff ff    	mov    -0x258(%ebp),%eax
     a09:	89 4c 24 04          	mov    %ecx,0x4(%esp)
     a0d:	89 04 24             	mov    %eax,(%esp)
     a10:	e8 eb f6 ff ff       	call   100 <strcat>
                    strcat(tmp,name);
     a15:	8b 8d a4 fd ff ff    	mov    -0x25c(%ebp),%ecx
     a1b:	8b 85 a8 fd ff ff    	mov    -0x258(%ebp),%eax
     a21:	89 4c 24 04          	mov    %ecx,0x4(%esp)
     a25:	89 04 24             	mov    %eax,(%esp)
     a28:	e8 d3 f6 ff ff       	call   100 <strcat>
                    mkdir(tmp);
     a2d:	8b 85 a8 fd ff ff    	mov    -0x258(%ebp),%eax
     a33:	89 04 24             	mov    %eax,(%esp)
     a36:	e8 8f 04 00 00       	call   eca <mkdir>
                    absolute_path(tmp);
     a3b:	8b 85 a8 fd ff ff    	mov    -0x258(%ebp),%eax
     a41:	89 04 24             	mov    %eax,(%esp)
     a44:	e8 47 f7 ff ff       	call   190 <absolute_path>
                    strcat(tmp,"/");
     a49:	8b 85 a8 fd ff ff    	mov    -0x258(%ebp),%eax
     a4f:	c7 44 24 04 18 13 00 	movl   $0x1318,0x4(%esp)
     a56:	00 
     a57:	89 04 24             	mov    %eax,(%esp)
     a5a:	e8 a1 f6 ff ff       	call   100 <strcat>

                    printf(1,"path %s\n",tmp1);
     a5f:	8b 95 ac fd ff ff    	mov    -0x254(%ebp),%edx
     a65:	c7 44 24 04 74 13 00 	movl   $0x1374,0x4(%esp)
     a6c:	00 
     a6d:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     a74:	89 54 24 08          	mov    %edx,0x8(%esp)
     a78:	e8 33 05 00 00       	call   fb0 <printf>
                    printf(1,"dest %s\n",tmp);
     a7d:	8b 85 a8 fd ff ff    	mov    -0x258(%ebp),%eax
     a83:	c7 44 24 04 7d 13 00 	movl   $0x137d,0x4(%esp)
     a8a:	00 
     a8b:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     a92:	89 44 24 08          	mov    %eax,0x8(%esp)
     a96:	e8 15 05 00 00       	call   fb0 <printf>

                    cp_recursion(tmp1,tmp);
     a9b:	8b 85 a8 fd ff ff    	mov    -0x258(%ebp),%eax
     aa1:	8b 95 ac fd ff ff    	mov    -0x254(%ebp),%edx
     aa7:	89 44 24 04          	mov    %eax,0x4(%esp)
     aab:	89 14 24             	mov    %edx,(%esp)
     aae:	e8 2d fc ff ff       	call   6e0 <cp_recursion>
     ab3:	e9 d0 fd ff ff       	jmp    888 <cp_recursion+0x1a8>
    dummy[strlen(dummy)] = '.';
    dummy[strlen(dummy)+1] = '\0';
    //printf(1,"alamat : %s\n",dummy);

    if((fd = open(dummy, 0)) < 0){
        printf(2, "ls: cannot open %s\n", dummy);
     ab8:	89 5c 24 08          	mov    %ebx,0x8(%esp)
     abc:	c7 44 24 04 2c 13 00 	movl   $0x132c,0x4(%esp)
     ac3:	00 
     ac4:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
     acb:	e8 e0 04 00 00       	call   fb0 <printf>
            }
            break;
    }
    close(pwd);
    close(fd);
}
     ad0:	81 c4 6c 02 00 00    	add    $0x26c,%esp
     ad6:	5b                   	pop    %ebx
     ad7:	5e                   	pop    %esi
     ad8:	5f                   	pop    %edi
     ad9:	5d                   	pop    %ebp
     ada:	c3                   	ret    
     adb:	90                   	nop
     adc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
            printf(1, "%s %d %d %d\n", fmtname(dummy), st.type, st.ino, st.size);
            break;

        case T_DIR:
            if(strlen(dummy) + 1 + DIRSIZ + 1 > sizeof buf){
                printf(1, "ls: path too long\n");
     ae0:	c7 44 24 04 61 13 00 	movl   $0x1361,0x4(%esp)
     ae7:	00 
     ae8:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     aef:	e8 bc 04 00 00       	call   fb0 <printf>
                break;
     af4:	e9 1e fd ff ff       	jmp    817 <cp_recursion+0x137>
     af9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        printf(2, "ls: cannot open %s\n", dummy);
        return;
    }

    if(fstat(fd, &st) < 0){
        printf(2, "ls: cannot stat %s\n", dummy);
     b00:	89 5c 24 08          	mov    %ebx,0x8(%esp)
     b04:	c7 44 24 04 40 13 00 	movl   $0x1340,0x4(%esp)
     b0b:	00 
     b0c:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
     b13:	e8 98 04 00 00       	call   fb0 <printf>
        close(fd);
     b18:	89 3c 24             	mov    %edi,(%esp)
     b1b:	e8 6a 03 00 00       	call   e8a <close>
        return;
     b20:	e9 02 fd ff ff       	jmp    827 <cp_recursion+0x147>
     b25:	8d 76 00             	lea    0x0(%esi),%esi
            while(read(fd, &de, sizeof(de)) == sizeof(de)){
                if(de.inum == 0) continue;
                memmove(p, de.name, DIRSIZ);
                p[DIRSIZ] = 0;
                if(stat(buf, &st) < 0){
                    printf(1, "ls: cannot stat %s\n", buf);
     b28:	89 44 24 08          	mov    %eax,0x8(%esp)
     b2c:	c7 44 24 04 40 13 00 	movl   $0x1340,0x4(%esp)
     b33:	00 
     b34:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     b3b:	e8 70 04 00 00       	call   fb0 <printf>
                    continue;
     b40:	e9 43 fd ff ff       	jmp    888 <cp_recursion+0x1a8>
     b45:	8d 76 00             	lea    0x0(%esi),%esi
                }
                if (fmtname(buf)[0] != '.' && st.type == T_FILE){
                    char *name = fmtname(buf);
     b48:	8d 85 e8 fd ff ff    	lea    -0x218(%ebp),%eax
     b4e:	89 04 24             	mov    %eax,(%esp)
     b51:	e8 fa f5 ff ff       	call   150 <fmtname>

                    char *tmp1 = malloc(100);
     b56:	c7 04 24 64 00 00 00 	movl   $0x64,(%esp)
                if(stat(buf, &st) < 0){
                    printf(1, "ls: cannot stat %s\n", buf);
                    continue;
                }
                if (fmtname(buf)[0] != '.' && st.type == T_FILE){
                    char *name = fmtname(buf);
     b5d:	89 85 a4 fd ff ff    	mov    %eax,-0x25c(%ebp)

                    char *tmp1 = malloc(100);
     b63:	e8 c8 06 00 00       	call   1230 <malloc>
                    memset(tmp1,0,100);
     b68:	c7 44 24 08 64 00 00 	movl   $0x64,0x8(%esp)
     b6f:	00 
     b70:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
     b77:	00 
     b78:	89 04 24             	mov    %eax,(%esp)
     b7b:	89 85 ac fd ff ff    	mov    %eax,-0x254(%ebp)
     b81:	e8 6a 01 00 00       	call   cf0 <memset>
                    strcat(tmp1,dummy);
     b86:	8b 8d ac fd ff ff    	mov    -0x254(%ebp),%ecx
     b8c:	89 5c 24 04          	mov    %ebx,0x4(%esp)
     b90:	89 0c 24             	mov    %ecx,(%esp)
     b93:	e8 68 f5 ff ff       	call   100 <strcat>
                    tmp1[strlen(tmp1)-1]='\0';
     b98:	8b 8d ac fd ff ff    	mov    -0x254(%ebp),%ecx
     b9e:	89 0c 24             	mov    %ecx,(%esp)
     ba1:	e8 1a 01 00 00       	call   cc0 <strlen>
     ba6:	8b 8d ac fd ff ff    	mov    -0x254(%ebp),%ecx
     bac:	c6 44 01 ff 00       	movb   $0x0,-0x1(%ecx,%eax,1)
                    strcat(tmp1,name);
     bb1:	8b 85 a4 fd ff ff    	mov    -0x25c(%ebp),%eax
     bb7:	89 0c 24             	mov    %ecx,(%esp)
     bba:	89 44 24 04          	mov    %eax,0x4(%esp)
     bbe:	e8 3d f5 ff ff       	call   100 <strcat>

                    char *tmp = malloc(100);
     bc3:	c7 04 24 64 00 00 00 	movl   $0x64,(%esp)
     bca:	e8 61 06 00 00       	call   1230 <malloc>
                    memset(tmp,0,100);
     bcf:	c7 44 24 08 64 00 00 	movl   $0x64,0x8(%esp)
     bd6:	00 
     bd7:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
     bde:	00 
     bdf:	89 04 24             	mov    %eax,(%esp)
     be2:	89 85 a8 fd ff ff    	mov    %eax,-0x258(%ebp)
     be8:	e8 03 01 00 00       	call   cf0 <memset>
                    strcat(tmp,destination);
     bed:	8b 55 0c             	mov    0xc(%ebp),%edx
     bf0:	8b 85 a8 fd ff ff    	mov    -0x258(%ebp),%eax
     bf6:	89 54 24 04          	mov    %edx,0x4(%esp)
     bfa:	89 04 24             	mov    %eax,(%esp)
     bfd:	e8 fe f4 ff ff       	call   100 <strcat>
                    strcat(tmp,name);
     c02:	8b 95 a4 fd ff ff    	mov    -0x25c(%ebp),%edx
     c08:	8b 85 a8 fd ff ff    	mov    -0x258(%ebp),%eax
     c0e:	89 54 24 04          	mov    %edx,0x4(%esp)
     c12:	89 04 24             	mov    %eax,(%esp)
     c15:	e8 e6 f4 ff ff       	call   100 <strcat>
                    cp(tmp1,tmp);
     c1a:	8b 85 a8 fd ff ff    	mov    -0x258(%ebp),%eax
     c20:	8b 8d ac fd ff ff    	mov    -0x254(%ebp),%ecx
     c26:	89 44 24 04          	mov    %eax,0x4(%esp)
     c2a:	89 0c 24             	mov    %ecx,(%esp)
     c2d:	e8 fe f5 ff ff       	call   230 <cp>
     c32:	e9 e9 fc ff ff       	jmp    920 <cp_recursion+0x240>
     c37:	66 90                	xchg   %ax,%ax
     c39:	66 90                	xchg   %ax,%ax
     c3b:	66 90                	xchg   %ax,%ax
     c3d:	66 90                	xchg   %ax,%ax
     c3f:	90                   	nop

00000c40 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, char *t)
{
     c40:	55                   	push   %ebp
     c41:	89 e5                	mov    %esp,%ebp
     c43:	8b 45 08             	mov    0x8(%ebp),%eax
     c46:	8b 4d 0c             	mov    0xc(%ebp),%ecx
     c49:	53                   	push   %ebx
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
     c4a:	89 c2                	mov    %eax,%edx
     c4c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     c50:	83 c1 01             	add    $0x1,%ecx
     c53:	0f b6 59 ff          	movzbl -0x1(%ecx),%ebx
     c57:	83 c2 01             	add    $0x1,%edx
     c5a:	84 db                	test   %bl,%bl
     c5c:	88 5a ff             	mov    %bl,-0x1(%edx)
     c5f:	75 ef                	jne    c50 <strcpy+0x10>
    ;
  return os;
}
     c61:	5b                   	pop    %ebx
     c62:	5d                   	pop    %ebp
     c63:	c3                   	ret    
     c64:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     c6a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00000c70 <strcmp>:

int
strcmp(const char *p, const char *q)
{
     c70:	55                   	push   %ebp
     c71:	89 e5                	mov    %esp,%ebp
     c73:	8b 55 08             	mov    0x8(%ebp),%edx
     c76:	53                   	push   %ebx
     c77:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
     c7a:	0f b6 02             	movzbl (%edx),%eax
     c7d:	84 c0                	test   %al,%al
     c7f:	74 2d                	je     cae <strcmp+0x3e>
     c81:	0f b6 19             	movzbl (%ecx),%ebx
     c84:	38 d8                	cmp    %bl,%al
     c86:	74 0e                	je     c96 <strcmp+0x26>
     c88:	eb 2b                	jmp    cb5 <strcmp+0x45>
     c8a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     c90:	38 c8                	cmp    %cl,%al
     c92:	75 15                	jne    ca9 <strcmp+0x39>
    p++, q++;
     c94:	89 d9                	mov    %ebx,%ecx
     c96:	83 c2 01             	add    $0x1,%edx
}

int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
     c99:	0f b6 02             	movzbl (%edx),%eax
    p++, q++;
     c9c:	8d 59 01             	lea    0x1(%ecx),%ebx
}

int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
     c9f:	0f b6 49 01          	movzbl 0x1(%ecx),%ecx
     ca3:	84 c0                	test   %al,%al
     ca5:	75 e9                	jne    c90 <strcmp+0x20>
     ca7:	31 c0                	xor    %eax,%eax
    p++, q++;
  return (uchar)*p - (uchar)*q;
     ca9:	29 c8                	sub    %ecx,%eax
}
     cab:	5b                   	pop    %ebx
     cac:	5d                   	pop    %ebp
     cad:	c3                   	ret    
     cae:	0f b6 09             	movzbl (%ecx),%ecx
}

int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
     cb1:	31 c0                	xor    %eax,%eax
     cb3:	eb f4                	jmp    ca9 <strcmp+0x39>
     cb5:	0f b6 cb             	movzbl %bl,%ecx
     cb8:	eb ef                	jmp    ca9 <strcmp+0x39>
     cba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000cc0 <strlen>:
  return (uchar)*p - (uchar)*q;
}

uint
strlen(char *s)
{
     cc0:	55                   	push   %ebp
     cc1:	89 e5                	mov    %esp,%ebp
     cc3:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  for(n = 0; s[n]; n++)
     cc6:	80 39 00             	cmpb   $0x0,(%ecx)
     cc9:	74 12                	je     cdd <strlen+0x1d>
     ccb:	31 d2                	xor    %edx,%edx
     ccd:	8d 76 00             	lea    0x0(%esi),%esi
     cd0:	83 c2 01             	add    $0x1,%edx
     cd3:	80 3c 11 00          	cmpb   $0x0,(%ecx,%edx,1)
     cd7:	89 d0                	mov    %edx,%eax
     cd9:	75 f5                	jne    cd0 <strlen+0x10>
    ;
  return n;
}
     cdb:	5d                   	pop    %ebp
     cdc:	c3                   	ret    
uint
strlen(char *s)
{
  int n;

  for(n = 0; s[n]; n++)
     cdd:	31 c0                	xor    %eax,%eax
    ;
  return n;
}
     cdf:	5d                   	pop    %ebp
     ce0:	c3                   	ret    
     ce1:	eb 0d                	jmp    cf0 <memset>
     ce3:	90                   	nop
     ce4:	90                   	nop
     ce5:	90                   	nop
     ce6:	90                   	nop
     ce7:	90                   	nop
     ce8:	90                   	nop
     ce9:	90                   	nop
     cea:	90                   	nop
     ceb:	90                   	nop
     cec:	90                   	nop
     ced:	90                   	nop
     cee:	90                   	nop
     cef:	90                   	nop

00000cf0 <memset>:

void*
memset(void *dst, int c, uint n)
{
     cf0:	55                   	push   %ebp
     cf1:	89 e5                	mov    %esp,%ebp
     cf3:	8b 55 08             	mov    0x8(%ebp),%edx
     cf6:	57                   	push   %edi
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
     cf7:	8b 4d 10             	mov    0x10(%ebp),%ecx
     cfa:	8b 45 0c             	mov    0xc(%ebp),%eax
     cfd:	89 d7                	mov    %edx,%edi
     cff:	fc                   	cld    
     d00:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
     d02:	89 d0                	mov    %edx,%eax
     d04:	5f                   	pop    %edi
     d05:	5d                   	pop    %ebp
     d06:	c3                   	ret    
     d07:	89 f6                	mov    %esi,%esi
     d09:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000d10 <strchr>:

char*
strchr(const char *s, char c)
{
     d10:	55                   	push   %ebp
     d11:	89 e5                	mov    %esp,%ebp
     d13:	8b 45 08             	mov    0x8(%ebp),%eax
     d16:	53                   	push   %ebx
     d17:	8b 55 0c             	mov    0xc(%ebp),%edx
  for(; *s; s++)
     d1a:	0f b6 18             	movzbl (%eax),%ebx
     d1d:	84 db                	test   %bl,%bl
     d1f:	74 1d                	je     d3e <strchr+0x2e>
    if(*s == c)
     d21:	38 d3                	cmp    %dl,%bl
     d23:	89 d1                	mov    %edx,%ecx
     d25:	75 0d                	jne    d34 <strchr+0x24>
     d27:	eb 17                	jmp    d40 <strchr+0x30>
     d29:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     d30:	38 ca                	cmp    %cl,%dl
     d32:	74 0c                	je     d40 <strchr+0x30>
}

char*
strchr(const char *s, char c)
{
  for(; *s; s++)
     d34:	83 c0 01             	add    $0x1,%eax
     d37:	0f b6 10             	movzbl (%eax),%edx
     d3a:	84 d2                	test   %dl,%dl
     d3c:	75 f2                	jne    d30 <strchr+0x20>
    if(*s == c)
      return (char*)s;
  return 0;
     d3e:	31 c0                	xor    %eax,%eax
}
     d40:	5b                   	pop    %ebx
     d41:	5d                   	pop    %ebp
     d42:	c3                   	ret    
     d43:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     d49:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000d50 <gets>:

char*
gets(char *buf, int max)
{
     d50:	55                   	push   %ebp
     d51:	89 e5                	mov    %esp,%ebp
     d53:	57                   	push   %edi
     d54:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
     d55:	31 f6                	xor    %esi,%esi
  return 0;
}

char*
gets(char *buf, int max)
{
     d57:	53                   	push   %ebx
     d58:	83 ec 2c             	sub    $0x2c,%esp
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
     d5b:	8d 7d e7             	lea    -0x19(%ebp),%edi
gets(char *buf, int max)
{
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
     d5e:	eb 31                	jmp    d91 <gets+0x41>
    cc = read(0, &c, 1);
     d60:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
     d67:	00 
     d68:	89 7c 24 04          	mov    %edi,0x4(%esp)
     d6c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     d73:	e8 02 01 00 00       	call   e7a <read>
    if(cc < 1)
     d78:	85 c0                	test   %eax,%eax
     d7a:	7e 1d                	jle    d99 <gets+0x49>
      break;
    buf[i++] = c;
     d7c:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
gets(char *buf, int max)
{
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
     d80:	89 de                	mov    %ebx,%esi
    cc = read(0, &c, 1);
    if(cc < 1)
      break;
    buf[i++] = c;
     d82:	8b 55 08             	mov    0x8(%ebp),%edx
    if(c == '\n' || c == '\r')
     d85:	3c 0d                	cmp    $0xd,%al

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
    if(cc < 1)
      break;
    buf[i++] = c;
     d87:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
     d8b:	74 0c                	je     d99 <gets+0x49>
     d8d:	3c 0a                	cmp    $0xa,%al
     d8f:	74 08                	je     d99 <gets+0x49>
gets(char *buf, int max)
{
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
     d91:	8d 5e 01             	lea    0x1(%esi),%ebx
     d94:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
     d97:	7c c7                	jl     d60 <gets+0x10>
      break;
    buf[i++] = c;
    if(c == '\n' || c == '\r')
      break;
  }
  buf[i] = '\0';
     d99:	8b 45 08             	mov    0x8(%ebp),%eax
     d9c:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
     da0:	83 c4 2c             	add    $0x2c,%esp
     da3:	5b                   	pop    %ebx
     da4:	5e                   	pop    %esi
     da5:	5f                   	pop    %edi
     da6:	5d                   	pop    %ebp
     da7:	c3                   	ret    
     da8:	90                   	nop
     da9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000db0 <stat>:

int
stat(char *n, struct stat *st)
{
     db0:	55                   	push   %ebp
     db1:	89 e5                	mov    %esp,%ebp
     db3:	56                   	push   %esi
     db4:	53                   	push   %ebx
     db5:	83 ec 10             	sub    $0x10,%esp
  int fd;
  int r;

  fd = open(n, O_RDONLY);
     db8:	8b 45 08             	mov    0x8(%ebp),%eax
     dbb:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
     dc2:	00 
     dc3:	89 04 24             	mov    %eax,(%esp)
     dc6:	e8 d7 00 00 00       	call   ea2 <open>
  if(fd < 0)
     dcb:	85 c0                	test   %eax,%eax
stat(char *n, struct stat *st)
{
  int fd;
  int r;

  fd = open(n, O_RDONLY);
     dcd:	89 c3                	mov    %eax,%ebx
  if(fd < 0)
     dcf:	78 27                	js     df8 <stat+0x48>
    return -1;
  r = fstat(fd, st);
     dd1:	8b 45 0c             	mov    0xc(%ebp),%eax
     dd4:	89 1c 24             	mov    %ebx,(%esp)
     dd7:	89 44 24 04          	mov    %eax,0x4(%esp)
     ddb:	e8 da 00 00 00       	call   eba <fstat>
  close(fd);
     de0:	89 1c 24             	mov    %ebx,(%esp)
  int r;

  fd = open(n, O_RDONLY);
  if(fd < 0)
    return -1;
  r = fstat(fd, st);
     de3:	89 c6                	mov    %eax,%esi
  close(fd);
     de5:	e8 a0 00 00 00       	call   e8a <close>
  return r;
     dea:	89 f0                	mov    %esi,%eax
}
     dec:	83 c4 10             	add    $0x10,%esp
     def:	5b                   	pop    %ebx
     df0:	5e                   	pop    %esi
     df1:	5d                   	pop    %ebp
     df2:	c3                   	ret    
     df3:	90                   	nop
     df4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  int fd;
  int r;

  fd = open(n, O_RDONLY);
  if(fd < 0)
    return -1;
     df8:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
     dfd:	eb ed                	jmp    dec <stat+0x3c>
     dff:	90                   	nop

00000e00 <atoi>:
  return r;
}

int
atoi(const char *s)
{
     e00:	55                   	push   %ebp
     e01:	89 e5                	mov    %esp,%ebp
     e03:	8b 4d 08             	mov    0x8(%ebp),%ecx
     e06:	53                   	push   %ebx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
     e07:	0f be 11             	movsbl (%ecx),%edx
     e0a:	8d 42 d0             	lea    -0x30(%edx),%eax
     e0d:	3c 09                	cmp    $0x9,%al
int
atoi(const char *s)
{
  int n;

  n = 0;
     e0f:	b8 00 00 00 00       	mov    $0x0,%eax
  while('0' <= *s && *s <= '9')
     e14:	77 17                	ja     e2d <atoi+0x2d>
     e16:	66 90                	xchg   %ax,%ax
    n = n*10 + *s++ - '0';
     e18:	83 c1 01             	add    $0x1,%ecx
     e1b:	8d 04 80             	lea    (%eax,%eax,4),%eax
     e1e:	8d 44 42 d0          	lea    -0x30(%edx,%eax,2),%eax
atoi(const char *s)
{
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
     e22:	0f be 11             	movsbl (%ecx),%edx
     e25:	8d 5a d0             	lea    -0x30(%edx),%ebx
     e28:	80 fb 09             	cmp    $0x9,%bl
     e2b:	76 eb                	jbe    e18 <atoi+0x18>
    n = n*10 + *s++ - '0';
  return n;
}
     e2d:	5b                   	pop    %ebx
     e2e:	5d                   	pop    %ebp
     e2f:	c3                   	ret    

00000e30 <memmove>:

void*
memmove(void *vdst, void *vsrc, int n)
{
     e30:	55                   	push   %ebp
  char *dst, *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
     e31:	31 d2                	xor    %edx,%edx
  return n;
}

void*
memmove(void *vdst, void *vsrc, int n)
{
     e33:	89 e5                	mov    %esp,%ebp
     e35:	56                   	push   %esi
     e36:	8b 45 08             	mov    0x8(%ebp),%eax
     e39:	53                   	push   %ebx
     e3a:	8b 5d 10             	mov    0x10(%ebp),%ebx
     e3d:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst, *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
     e40:	85 db                	test   %ebx,%ebx
     e42:	7e 12                	jle    e56 <memmove+0x26>
     e44:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    *dst++ = *src++;
     e48:	0f b6 0c 16          	movzbl (%esi,%edx,1),%ecx
     e4c:	88 0c 10             	mov    %cl,(%eax,%edx,1)
     e4f:	83 c2 01             	add    $0x1,%edx
{
  char *dst, *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
     e52:	39 da                	cmp    %ebx,%edx
     e54:	75 f2                	jne    e48 <memmove+0x18>
    *dst++ = *src++;
  return vdst;
}
     e56:	5b                   	pop    %ebx
     e57:	5e                   	pop    %esi
     e58:	5d                   	pop    %ebp
     e59:	c3                   	ret    

00000e5a <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
     e5a:	b8 01 00 00 00       	mov    $0x1,%eax
     e5f:	cd 40                	int    $0x40
     e61:	c3                   	ret    

00000e62 <exit>:
SYSCALL(exit)
     e62:	b8 02 00 00 00       	mov    $0x2,%eax
     e67:	cd 40                	int    $0x40
     e69:	c3                   	ret    

00000e6a <wait>:
SYSCALL(wait)
     e6a:	b8 03 00 00 00       	mov    $0x3,%eax
     e6f:	cd 40                	int    $0x40
     e71:	c3                   	ret    

00000e72 <pipe>:
SYSCALL(pipe)
     e72:	b8 04 00 00 00       	mov    $0x4,%eax
     e77:	cd 40                	int    $0x40
     e79:	c3                   	ret    

00000e7a <read>:
SYSCALL(read)
     e7a:	b8 05 00 00 00       	mov    $0x5,%eax
     e7f:	cd 40                	int    $0x40
     e81:	c3                   	ret    

00000e82 <write>:
SYSCALL(write)
     e82:	b8 10 00 00 00       	mov    $0x10,%eax
     e87:	cd 40                	int    $0x40
     e89:	c3                   	ret    

00000e8a <close>:
SYSCALL(close)
     e8a:	b8 15 00 00 00       	mov    $0x15,%eax
     e8f:	cd 40                	int    $0x40
     e91:	c3                   	ret    

00000e92 <kill>:
SYSCALL(kill)
     e92:	b8 06 00 00 00       	mov    $0x6,%eax
     e97:	cd 40                	int    $0x40
     e99:	c3                   	ret    

00000e9a <exec>:
SYSCALL(exec)
     e9a:	b8 07 00 00 00       	mov    $0x7,%eax
     e9f:	cd 40                	int    $0x40
     ea1:	c3                   	ret    

00000ea2 <open>:
SYSCALL(open)
     ea2:	b8 0f 00 00 00       	mov    $0xf,%eax
     ea7:	cd 40                	int    $0x40
     ea9:	c3                   	ret    

00000eaa <mknod>:
SYSCALL(mknod)
     eaa:	b8 11 00 00 00       	mov    $0x11,%eax
     eaf:	cd 40                	int    $0x40
     eb1:	c3                   	ret    

00000eb2 <unlink>:
SYSCALL(unlink)
     eb2:	b8 12 00 00 00       	mov    $0x12,%eax
     eb7:	cd 40                	int    $0x40
     eb9:	c3                   	ret    

00000eba <fstat>:
SYSCALL(fstat)
     eba:	b8 08 00 00 00       	mov    $0x8,%eax
     ebf:	cd 40                	int    $0x40
     ec1:	c3                   	ret    

00000ec2 <link>:
SYSCALL(link)
     ec2:	b8 13 00 00 00       	mov    $0x13,%eax
     ec7:	cd 40                	int    $0x40
     ec9:	c3                   	ret    

00000eca <mkdir>:
SYSCALL(mkdir)
     eca:	b8 14 00 00 00       	mov    $0x14,%eax
     ecf:	cd 40                	int    $0x40
     ed1:	c3                   	ret    

00000ed2 <chdir>:
SYSCALL(chdir)
     ed2:	b8 09 00 00 00       	mov    $0x9,%eax
     ed7:	cd 40                	int    $0x40
     ed9:	c3                   	ret    

00000eda <dup>:
SYSCALL(dup)
     eda:	b8 0a 00 00 00       	mov    $0xa,%eax
     edf:	cd 40                	int    $0x40
     ee1:	c3                   	ret    

00000ee2 <getpid>:
SYSCALL(getpid)
     ee2:	b8 0b 00 00 00       	mov    $0xb,%eax
     ee7:	cd 40                	int    $0x40
     ee9:	c3                   	ret    

00000eea <sbrk>:
SYSCALL(sbrk)
     eea:	b8 0c 00 00 00       	mov    $0xc,%eax
     eef:	cd 40                	int    $0x40
     ef1:	c3                   	ret    

00000ef2 <sleep>:
SYSCALL(sleep)
     ef2:	b8 0d 00 00 00       	mov    $0xd,%eax
     ef7:	cd 40                	int    $0x40
     ef9:	c3                   	ret    

00000efa <uptime>:
SYSCALL(uptime)
     efa:	b8 0e 00 00 00       	mov    $0xe,%eax
     eff:	cd 40                	int    $0x40
     f01:	c3                   	ret    
     f02:	66 90                	xchg   %ax,%ax
     f04:	66 90                	xchg   %ax,%ax
     f06:	66 90                	xchg   %ax,%ax
     f08:	66 90                	xchg   %ax,%ax
     f0a:	66 90                	xchg   %ax,%ax
     f0c:	66 90                	xchg   %ax,%ax
     f0e:	66 90                	xchg   %ax,%ax

00000f10 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
     f10:	55                   	push   %ebp
     f11:	89 e5                	mov    %esp,%ebp
     f13:	57                   	push   %edi
     f14:	56                   	push   %esi
     f15:	89 c6                	mov    %eax,%esi
     f17:	53                   	push   %ebx
     f18:	83 ec 4c             	sub    $0x4c,%esp
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
     f1b:	8b 5d 08             	mov    0x8(%ebp),%ebx
     f1e:	85 db                	test   %ebx,%ebx
     f20:	74 09                	je     f2b <printint+0x1b>
     f22:	89 d0                	mov    %edx,%eax
     f24:	c1 e8 1f             	shr    $0x1f,%eax
     f27:	84 c0                	test   %al,%al
     f29:	75 75                	jne    fa0 <printint+0x90>
    neg = 1;
    x = -xx;
  } else {
    x = xx;
     f2b:	89 d0                	mov    %edx,%eax
  static char digits[] = "0123456789ABCDEF";
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
     f2d:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
     f34:	89 75 c0             	mov    %esi,-0x40(%ebp)
    x = -xx;
  } else {
    x = xx;
  }

  i = 0;
     f37:	31 ff                	xor    %edi,%edi
     f39:	89 ce                	mov    %ecx,%esi
     f3b:	8d 5d d7             	lea    -0x29(%ebp),%ebx
     f3e:	eb 02                	jmp    f42 <printint+0x32>
  do{
    buf[i++] = digits[x % base];
     f40:	89 cf                	mov    %ecx,%edi
     f42:	31 d2                	xor    %edx,%edx
     f44:	f7 f6                	div    %esi
     f46:	8d 4f 01             	lea    0x1(%edi),%ecx
     f49:	0f b6 92 3b 14 00 00 	movzbl 0x143b(%edx),%edx
  }while((x /= base) != 0);
     f50:	85 c0                	test   %eax,%eax
    x = xx;
  }

  i = 0;
  do{
    buf[i++] = digits[x % base];
     f52:	88 14 0b             	mov    %dl,(%ebx,%ecx,1)
  }while((x /= base) != 0);
     f55:	75 e9                	jne    f40 <printint+0x30>
  if(neg)
     f57:	8b 55 c4             	mov    -0x3c(%ebp),%edx
    x = xx;
  }

  i = 0;
  do{
    buf[i++] = digits[x % base];
     f5a:	89 c8                	mov    %ecx,%eax
     f5c:	8b 75 c0             	mov    -0x40(%ebp),%esi
  }while((x /= base) != 0);
  if(neg)
     f5f:	85 d2                	test   %edx,%edx
     f61:	74 08                	je     f6b <printint+0x5b>
    buf[i++] = '-';
     f63:	8d 4f 02             	lea    0x2(%edi),%ecx
     f66:	c6 44 05 d8 2d       	movb   $0x2d,-0x28(%ebp,%eax,1)

  while(--i >= 0)
     f6b:	8d 79 ff             	lea    -0x1(%ecx),%edi
     f6e:	66 90                	xchg   %ax,%ax
     f70:	0f b6 44 3d d8       	movzbl -0x28(%ebp,%edi,1),%eax
     f75:	83 ef 01             	sub    $0x1,%edi
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
     f78:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
     f7f:	00 
     f80:	89 5c 24 04          	mov    %ebx,0x4(%esp)
     f84:	89 34 24             	mov    %esi,(%esp)
     f87:	88 45 d7             	mov    %al,-0x29(%ebp)
     f8a:	e8 f3 fe ff ff       	call   e82 <write>
    buf[i++] = digits[x % base];
  }while((x /= base) != 0);
  if(neg)
    buf[i++] = '-';

  while(--i >= 0)
     f8f:	83 ff ff             	cmp    $0xffffffff,%edi
     f92:	75 dc                	jne    f70 <printint+0x60>
    putc(fd, buf[i]);
}
     f94:	83 c4 4c             	add    $0x4c,%esp
     f97:	5b                   	pop    %ebx
     f98:	5e                   	pop    %esi
     f99:	5f                   	pop    %edi
     f9a:	5d                   	pop    %ebp
     f9b:	c3                   	ret    
     f9c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
     fa0:	89 d0                	mov    %edx,%eax
     fa2:	f7 d8                	neg    %eax
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
     fa4:	c7 45 c4 01 00 00 00 	movl   $0x1,-0x3c(%ebp)
     fab:	eb 87                	jmp    f34 <printint+0x24>
     fad:	8d 76 00             	lea    0x0(%esi),%esi

00000fb0 <printf>:
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
     fb0:	55                   	push   %ebp
     fb1:	89 e5                	mov    %esp,%ebp
     fb3:	57                   	push   %edi
  char *s;
  int c, i, state;
  uint *ap;

  state = 0;
     fb4:	31 ff                	xor    %edi,%edi
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
     fb6:	56                   	push   %esi
     fb7:	53                   	push   %ebx
     fb8:	83 ec 3c             	sub    $0x3c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
     fbb:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  char *s;
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
     fbe:	8d 45 10             	lea    0x10(%ebp),%eax
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
     fc1:	8b 75 08             	mov    0x8(%ebp),%esi
  char *s;
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
     fc4:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  for(i = 0; fmt[i]; i++){
     fc7:	0f b6 13             	movzbl (%ebx),%edx
     fca:	83 c3 01             	add    $0x1,%ebx
     fcd:	84 d2                	test   %dl,%dl
     fcf:	75 39                	jne    100a <printf+0x5a>
     fd1:	e9 c2 00 00 00       	jmp    1098 <printf+0xe8>
     fd6:	66 90                	xchg   %ax,%ax
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
     fd8:	83 fa 25             	cmp    $0x25,%edx
     fdb:	0f 84 bf 00 00 00    	je     10a0 <printf+0xf0>
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
     fe1:	8d 45 e2             	lea    -0x1e(%ebp),%eax
     fe4:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
     feb:	00 
     fec:	89 44 24 04          	mov    %eax,0x4(%esp)
     ff0:	89 34 24             	mov    %esi,(%esp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
      } else {
        putc(fd, c);
     ff3:	88 55 e2             	mov    %dl,-0x1e(%ebp)
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
     ff6:	e8 87 fe ff ff       	call   e82 <write>
     ffb:	83 c3 01             	add    $0x1,%ebx
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
     ffe:	0f b6 53 ff          	movzbl -0x1(%ebx),%edx
    1002:	84 d2                	test   %dl,%dl
    1004:	0f 84 8e 00 00 00    	je     1098 <printf+0xe8>
    c = fmt[i] & 0xff;
    if(state == 0){
    100a:	85 ff                	test   %edi,%edi
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    c = fmt[i] & 0xff;
    100c:	0f be c2             	movsbl %dl,%eax
    if(state == 0){
    100f:	74 c7                	je     fd8 <printf+0x28>
      if(c == '%'){
        state = '%';
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
    1011:	83 ff 25             	cmp    $0x25,%edi
    1014:	75 e5                	jne    ffb <printf+0x4b>
      if(c == 'd'){
    1016:	83 fa 64             	cmp    $0x64,%edx
    1019:	0f 84 31 01 00 00    	je     1150 <printf+0x1a0>
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
    101f:	25 f7 00 00 00       	and    $0xf7,%eax
    1024:	83 f8 70             	cmp    $0x70,%eax
    1027:	0f 84 83 00 00 00    	je     10b0 <printf+0x100>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
    102d:	83 fa 73             	cmp    $0x73,%edx
    1030:	0f 84 a2 00 00 00    	je     10d8 <printf+0x128>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
    1036:	83 fa 63             	cmp    $0x63,%edx
    1039:	0f 84 35 01 00 00    	je     1174 <printf+0x1c4>
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
    103f:	83 fa 25             	cmp    $0x25,%edx
    1042:	0f 84 e0 00 00 00    	je     1128 <printf+0x178>
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    1048:	8d 45 e6             	lea    -0x1a(%ebp),%eax
    104b:	83 c3 01             	add    $0x1,%ebx
    104e:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    1055:	00 
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
    1056:	31 ff                	xor    %edi,%edi
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    1058:	89 44 24 04          	mov    %eax,0x4(%esp)
    105c:	89 34 24             	mov    %esi,(%esp)
    105f:	89 55 d0             	mov    %edx,-0x30(%ebp)
    1062:	c6 45 e6 25          	movb   $0x25,-0x1a(%ebp)
    1066:	e8 17 fe ff ff       	call   e82 <write>
      } else if(c == '%'){
        putc(fd, c);
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
    106b:	8b 55 d0             	mov    -0x30(%ebp),%edx
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    106e:	8d 45 e7             	lea    -0x19(%ebp),%eax
    1071:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    1078:	00 
    1079:	89 44 24 04          	mov    %eax,0x4(%esp)
    107d:	89 34 24             	mov    %esi,(%esp)
      } else if(c == '%'){
        putc(fd, c);
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
    1080:	88 55 e7             	mov    %dl,-0x19(%ebp)
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    1083:	e8 fa fd ff ff       	call   e82 <write>
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    1088:	0f b6 53 ff          	movzbl -0x1(%ebx),%edx
    108c:	84 d2                	test   %dl,%dl
    108e:	0f 85 76 ff ff ff    	jne    100a <printf+0x5a>
    1094:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        putc(fd, c);
      }
      state = 0;
    }
  }
}
    1098:	83 c4 3c             	add    $0x3c,%esp
    109b:	5b                   	pop    %ebx
    109c:	5e                   	pop    %esi
    109d:	5f                   	pop    %edi
    109e:	5d                   	pop    %ebp
    109f:	c3                   	ret    
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
    10a0:	bf 25 00 00 00       	mov    $0x25,%edi
    10a5:	e9 51 ff ff ff       	jmp    ffb <printf+0x4b>
    10aa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
        printint(fd, *ap, 16, 0);
    10b0:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    10b3:	b9 10 00 00 00       	mov    $0x10,%ecx
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
    10b8:	31 ff                	xor    %edi,%edi
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
        printint(fd, *ap, 16, 0);
    10ba:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    10c1:	8b 10                	mov    (%eax),%edx
    10c3:	89 f0                	mov    %esi,%eax
    10c5:	e8 46 fe ff ff       	call   f10 <printint>
        ap++;
    10ca:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
    10ce:	e9 28 ff ff ff       	jmp    ffb <printf+0x4b>
    10d3:	90                   	nop
    10d4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      } else if(c == 's'){
        s = (char*)*ap;
    10d8:	8b 45 d4             	mov    -0x2c(%ebp),%eax
        ap++;
    10db:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
        ap++;
      } else if(c == 'x' || c == 'p'){
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
        s = (char*)*ap;
    10df:	8b 38                	mov    (%eax),%edi
        ap++;
        if(s == 0)
          s = "(null)";
    10e1:	b8 34 14 00 00       	mov    $0x1434,%eax
    10e6:	85 ff                	test   %edi,%edi
    10e8:	0f 44 f8             	cmove  %eax,%edi
        while(*s != 0){
    10eb:	0f b6 07             	movzbl (%edi),%eax
    10ee:	84 c0                	test   %al,%al
    10f0:	74 2a                	je     111c <printf+0x16c>
    10f2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    10f8:	88 45 e3             	mov    %al,-0x1d(%ebp)
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    10fb:	8d 45 e3             	lea    -0x1d(%ebp),%eax
        ap++;
        if(s == 0)
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
    10fe:	83 c7 01             	add    $0x1,%edi
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    1101:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    1108:	00 
    1109:	89 44 24 04          	mov    %eax,0x4(%esp)
    110d:	89 34 24             	mov    %esi,(%esp)
    1110:	e8 6d fd ff ff       	call   e82 <write>
      } else if(c == 's'){
        s = (char*)*ap;
        ap++;
        if(s == 0)
          s = "(null)";
        while(*s != 0){
    1115:	0f b6 07             	movzbl (%edi),%eax
    1118:	84 c0                	test   %al,%al
    111a:	75 dc                	jne    10f8 <printf+0x148>
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
    111c:	31 ff                	xor    %edi,%edi
    111e:	e9 d8 fe ff ff       	jmp    ffb <printf+0x4b>
    1123:	90                   	nop
    1124:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    1128:	8d 45 e5             	lea    -0x1b(%ebp),%eax
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
    112b:	31 ff                	xor    %edi,%edi
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    112d:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    1134:	00 
    1135:	89 44 24 04          	mov    %eax,0x4(%esp)
    1139:	89 34 24             	mov    %esi,(%esp)
    113c:	c6 45 e5 25          	movb   $0x25,-0x1b(%ebp)
    1140:	e8 3d fd ff ff       	call   e82 <write>
    1145:	e9 b1 fe ff ff       	jmp    ffb <printf+0x4b>
    114a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
    1150:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    1153:	b9 0a 00 00 00       	mov    $0xa,%ecx
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
    1158:	66 31 ff             	xor    %di,%di
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
    115b:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1162:	8b 10                	mov    (%eax),%edx
    1164:	89 f0                	mov    %esi,%eax
    1166:	e8 a5 fd ff ff       	call   f10 <printint>
        ap++;
    116b:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
    116f:	e9 87 fe ff ff       	jmp    ffb <printf+0x4b>
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
        putc(fd, *ap);
    1174:	8b 45 d4             	mov    -0x2c(%ebp),%eax
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
    1177:	31 ff                	xor    %edi,%edi
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
        putc(fd, *ap);
    1179:	8b 00                	mov    (%eax),%eax
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    117b:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    1182:	00 
    1183:	89 34 24             	mov    %esi,(%esp)
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
        putc(fd, *ap);
    1186:	88 45 e4             	mov    %al,-0x1c(%ebp)
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    1189:	8d 45 e4             	lea    -0x1c(%ebp),%eax
    118c:	89 44 24 04          	mov    %eax,0x4(%esp)
    1190:	e8 ed fc ff ff       	call   e82 <write>
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
        putc(fd, *ap);
        ap++;
    1195:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
    1199:	e9 5d fe ff ff       	jmp    ffb <printf+0x4b>
    119e:	66 90                	xchg   %ax,%ax

000011a0 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
    11a0:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    11a1:	a1 f0 17 00 00       	mov    0x17f0,%eax
static Header base;
static Header *freep;

void
free(void *ap)
{
    11a6:	89 e5                	mov    %esp,%ebp
    11a8:	57                   	push   %edi
    11a9:	56                   	push   %esi
    11aa:	53                   	push   %ebx
    11ab:	8b 5d 08             	mov    0x8(%ebp),%ebx
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    11ae:	8b 08                	mov    (%eax),%ecx
void
free(void *ap)
{
  Header *bp, *p;

  bp = (Header*)ap - 1;
    11b0:	8d 53 f8             	lea    -0x8(%ebx),%edx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    11b3:	39 d0                	cmp    %edx,%eax
    11b5:	72 11                	jb     11c8 <free+0x28>
    11b7:	90                   	nop
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    11b8:	39 c8                	cmp    %ecx,%eax
    11ba:	72 04                	jb     11c0 <free+0x20>
    11bc:	39 ca                	cmp    %ecx,%edx
    11be:	72 10                	jb     11d0 <free+0x30>
    11c0:	89 c8                	mov    %ecx,%eax
free(void *ap)
{
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    11c2:	39 d0                	cmp    %edx,%eax
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    11c4:	8b 08                	mov    (%eax),%ecx
free(void *ap)
{
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    11c6:	73 f0                	jae    11b8 <free+0x18>
    11c8:	39 ca                	cmp    %ecx,%edx
    11ca:	72 04                	jb     11d0 <free+0x30>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    11cc:	39 c8                	cmp    %ecx,%eax
    11ce:	72 f0                	jb     11c0 <free+0x20>
      break;
  if(bp + bp->s.size == p->s.ptr){
    11d0:	8b 73 fc             	mov    -0x4(%ebx),%esi
    11d3:	8d 3c f2             	lea    (%edx,%esi,8),%edi
    11d6:	39 cf                	cmp    %ecx,%edi
    11d8:	74 1e                	je     11f8 <free+0x58>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
    11da:	89 4b f8             	mov    %ecx,-0x8(%ebx)
  if(p + p->s.size == bp){
    11dd:	8b 48 04             	mov    0x4(%eax),%ecx
    11e0:	8d 34 c8             	lea    (%eax,%ecx,8),%esi
    11e3:	39 f2                	cmp    %esi,%edx
    11e5:	74 28                	je     120f <free+0x6f>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
    11e7:	89 10                	mov    %edx,(%eax)
  freep = p;
    11e9:	a3 f0 17 00 00       	mov    %eax,0x17f0
}
    11ee:	5b                   	pop    %ebx
    11ef:	5e                   	pop    %esi
    11f0:	5f                   	pop    %edi
    11f1:	5d                   	pop    %ebp
    11f2:	c3                   	ret    
    11f3:	90                   	nop
    11f4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
      break;
  if(bp + bp->s.size == p->s.ptr){
    bp->s.size += p->s.ptr->s.size;
    11f8:	03 71 04             	add    0x4(%ecx),%esi
    11fb:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
    11fe:	8b 08                	mov    (%eax),%ecx
    1200:	8b 09                	mov    (%ecx),%ecx
    1202:	89 4b f8             	mov    %ecx,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
    1205:	8b 48 04             	mov    0x4(%eax),%ecx
    1208:	8d 34 c8             	lea    (%eax,%ecx,8),%esi
    120b:	39 f2                	cmp    %esi,%edx
    120d:	75 d8                	jne    11e7 <free+0x47>
    p->s.size += bp->s.size;
    120f:	03 4b fc             	add    -0x4(%ebx),%ecx
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
  freep = p;
    1212:	a3 f0 17 00 00       	mov    %eax,0x17f0
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
    p->s.size += bp->s.size;
    1217:	89 48 04             	mov    %ecx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
    121a:	8b 53 f8             	mov    -0x8(%ebx),%edx
    121d:	89 10                	mov    %edx,(%eax)
  } else
    p->s.ptr = bp;
  freep = p;
}
    121f:	5b                   	pop    %ebx
    1220:	5e                   	pop    %esi
    1221:	5f                   	pop    %edi
    1222:	5d                   	pop    %ebp
    1223:	c3                   	ret    
    1224:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    122a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00001230 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
    1230:	55                   	push   %ebp
    1231:	89 e5                	mov    %esp,%ebp
    1233:	57                   	push   %edi
    1234:	56                   	push   %esi
    1235:	53                   	push   %ebx
    1236:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    1239:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
    123c:	8b 1d f0 17 00 00    	mov    0x17f0,%ebx
malloc(uint nbytes)
{
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    1242:	8d 48 07             	lea    0x7(%eax),%ecx
    1245:	c1 e9 03             	shr    $0x3,%ecx
  if((prevp = freep) == 0){
    1248:	85 db                	test   %ebx,%ebx
malloc(uint nbytes)
{
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    124a:	8d 71 01             	lea    0x1(%ecx),%esi
  if((prevp = freep) == 0){
    124d:	0f 84 9b 00 00 00    	je     12ee <malloc+0xbe>
    1253:	8b 13                	mov    (%ebx),%edx
    1255:	8b 7a 04             	mov    0x4(%edx),%edi
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
    1258:	39 fe                	cmp    %edi,%esi
    125a:	76 64                	jbe    12c0 <malloc+0x90>
    125c:	8d 04 f5 00 00 00 00 	lea    0x0(,%esi,8),%eax
morecore(uint nu)
{
  char *p;
  Header *hp;

  if(nu < 4096)
    1263:	bb 00 80 00 00       	mov    $0x8000,%ebx
    1268:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    126b:	eb 0e                	jmp    127b <malloc+0x4b>
    126d:	8d 76 00             	lea    0x0(%esi),%esi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
  if((prevp = freep) == 0){
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    1270:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
    1272:	8b 78 04             	mov    0x4(%eax),%edi
    1275:	39 fe                	cmp    %edi,%esi
    1277:	76 4f                	jbe    12c8 <malloc+0x98>
    1279:	89 c2                	mov    %eax,%edx
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
    127b:	3b 15 f0 17 00 00    	cmp    0x17f0,%edx
    1281:	75 ed                	jne    1270 <malloc+0x40>
morecore(uint nu)
{
  char *p;
  Header *hp;

  if(nu < 4096)
    1283:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    1286:	81 fe 00 10 00 00    	cmp    $0x1000,%esi
    128c:	bf 00 10 00 00       	mov    $0x1000,%edi
    1291:	0f 43 fe             	cmovae %esi,%edi
    1294:	0f 42 c3             	cmovb  %ebx,%eax
    nu = 4096;
  p = sbrk(nu * sizeof(Header));
    1297:	89 04 24             	mov    %eax,(%esp)
    129a:	e8 4b fc ff ff       	call   eea <sbrk>
  if(p == (char*)-1)
    129f:	83 f8 ff             	cmp    $0xffffffff,%eax
    12a2:	74 18                	je     12bc <malloc+0x8c>
    return 0;
  hp = (Header*)p;
  hp->s.size = nu;
    12a4:	89 78 04             	mov    %edi,0x4(%eax)
  free((void*)(hp + 1));
    12a7:	83 c0 08             	add    $0x8,%eax
    12aa:	89 04 24             	mov    %eax,(%esp)
    12ad:	e8 ee fe ff ff       	call   11a0 <free>
  return freep;
    12b2:	8b 15 f0 17 00 00    	mov    0x17f0,%edx
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
      if((p = morecore(nunits)) == 0)
    12b8:	85 d2                	test   %edx,%edx
    12ba:	75 b4                	jne    1270 <malloc+0x40>
        return 0;
    12bc:	31 c0                	xor    %eax,%eax
    12be:	eb 20                	jmp    12e0 <malloc+0xb0>
  if((prevp = freep) == 0){
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
    12c0:	89 d0                	mov    %edx,%eax
    12c2:	89 da                	mov    %ebx,%edx
    12c4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      if(p->s.size == nunits)
    12c8:	39 fe                	cmp    %edi,%esi
    12ca:	74 1c                	je     12e8 <malloc+0xb8>
        prevp->s.ptr = p->s.ptr;
      else {
        p->s.size -= nunits;
    12cc:	29 f7                	sub    %esi,%edi
    12ce:	89 78 04             	mov    %edi,0x4(%eax)
        p += p->s.size;
    12d1:	8d 04 f8             	lea    (%eax,%edi,8),%eax
        p->s.size = nunits;
    12d4:	89 70 04             	mov    %esi,0x4(%eax)
      }
      freep = prevp;
    12d7:	89 15 f0 17 00 00    	mov    %edx,0x17f0
      return (void*)(p + 1);
    12dd:	83 c0 08             	add    $0x8,%eax
    }
    if(p == freep)
      if((p = morecore(nunits)) == 0)
        return 0;
  }
}
    12e0:	83 c4 1c             	add    $0x1c,%esp
    12e3:	5b                   	pop    %ebx
    12e4:	5e                   	pop    %esi
    12e5:	5f                   	pop    %edi
    12e6:	5d                   	pop    %ebp
    12e7:	c3                   	ret    
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
      if(p->s.size == nunits)
        prevp->s.ptr = p->s.ptr;
    12e8:	8b 08                	mov    (%eax),%ecx
    12ea:	89 0a                	mov    %ecx,(%edx)
    12ec:	eb e9                	jmp    12d7 <malloc+0xa7>
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
  if((prevp = freep) == 0){
    base.s.ptr = freep = prevp = &base;
    12ee:	c7 05 f0 17 00 00 f4 	movl   $0x17f4,0x17f0
    12f5:	17 00 00 
    base.s.size = 0;
    12f8:	ba f4 17 00 00       	mov    $0x17f4,%edx
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
  if((prevp = freep) == 0){
    base.s.ptr = freep = prevp = &base;
    12fd:	c7 05 f4 17 00 00 f4 	movl   $0x17f4,0x17f4
    1304:	17 00 00 
    base.s.size = 0;
    1307:	c7 05 f8 17 00 00 00 	movl   $0x0,0x17f8
    130e:	00 00 00 
    1311:	e9 46 ff ff ff       	jmp    125c <malloc+0x2c>
