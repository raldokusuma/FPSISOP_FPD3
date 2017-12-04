
_sh:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
    return 0;
}

int
main(void)
{
       0:	55                   	push   %ebp
       1:	89 e5                	mov    %esp,%ebp
       3:	83 e4 f0             	and    $0xfffffff0,%esp
       6:	83 ec 10             	sub    $0x10,%esp
    static char buf[100];
    int fd;

    // Ensure that three file descriptors are open.
    while((fd = open("console", O_RDWR)) >= 0){
       9:	eb 0e                	jmp    19 <main+0x19>
       b:	90                   	nop
       c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        if(fd >= 3){
      10:	83 f8 02             	cmp    $0x2,%eax
      13:	0f 8f cd 00 00 00    	jg     e6 <main+0xe6>
{
    static char buf[100];
    int fd;

    // Ensure that three file descriptors are open.
    while((fd = open("console", O_RDWR)) >= 0){
      19:	c7 44 24 04 02 00 00 	movl   $0x2,0x4(%esp)
      20:	00 
      21:	c7 04 24 18 14 00 00 	movl   $0x1418,(%esp)
      28:	e8 c5 0e 00 00       	call   ef2 <open>
      2d:	85 c0                	test   %eax,%eax
      2f:	79 df                	jns    10 <main+0x10>
      31:	eb 23                	jmp    56 <main+0x56>
      33:	90                   	nop
      34:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        }
    }

    // Read and run input commands.
    while(getcmd(buf, sizeof(buf)) >= 0){
    if(buf[0] == 'c' && buf[1] == 'd' && buf[2] == ' '){
      38:	80 3d 42 1a 00 00 20 	cmpb   $0x20,0x1a42
      3f:	90                   	nop
      40:	74 60                	je     a2 <main+0xa2>
      42:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        buf[strlen(buf)-1] = 0;  // chop \n
        if(chdir(buf+3) < 0)
            printf(2, "cannot cd %s\n", buf+3);
        continue;
    }
    if(fork1() == 0)
      48:	e8 03 02 00 00       	call   250 <fork1>
      4d:	85 c0                	test   %eax,%eax
      4f:	74 38                	je     89 <main+0x89>
        runcmd(parsecmd(buf));
        wait();
      51:	e8 64 0e 00 00       	call   eba <wait>
          break;
        }
    }

    // Read and run input commands.
    while(getcmd(buf, sizeof(buf)) >= 0){
      56:	c7 44 24 04 64 00 00 	movl   $0x64,0x4(%esp)
      5d:	00 
      5e:	c7 04 24 40 1a 00 00 	movl   $0x1a40,(%esp)
      65:	e8 e6 00 00 00       	call   150 <getcmd>
      6a:	85 c0                	test   %eax,%eax
      6c:	78 2f                	js     9d <main+0x9d>
    if(buf[0] == 'c' && buf[1] == 'd' && buf[2] == ' '){
      6e:	80 3d 40 1a 00 00 63 	cmpb   $0x63,0x1a40
      75:	75 d1                	jne    48 <main+0x48>
      77:	80 3d 41 1a 00 00 64 	cmpb   $0x64,0x1a41
      7e:	74 b8                	je     38 <main+0x38>
        buf[strlen(buf)-1] = 0;  // chop \n
        if(chdir(buf+3) < 0)
            printf(2, "cannot cd %s\n", buf+3);
        continue;
    }
    if(fork1() == 0)
      80:	e8 cb 01 00 00       	call   250 <fork1>
      85:	85 c0                	test   %eax,%eax
      87:	75 c8                	jne    51 <main+0x51>
        runcmd(parsecmd(buf));
      89:	c7 04 24 40 1a 00 00 	movl   $0x1a40,(%esp)
      90:	e8 7b 0b 00 00       	call   c10 <parsecmd>
      95:	89 04 24             	mov    %eax,(%esp)
      98:	e8 d3 01 00 00       	call   270 <runcmd>
        wait();
    }
    exit();
      9d:	e8 10 0e 00 00       	call   eb2 <exit>

    // Read and run input commands.
    while(getcmd(buf, sizeof(buf)) >= 0){
    if(buf[0] == 'c' && buf[1] == 'd' && buf[2] == ' '){
        // Chdir must be called by the parent, not the child.
        buf[strlen(buf)-1] = 0;  // chop \n
      a2:	c7 04 24 40 1a 00 00 	movl   $0x1a40,(%esp)
      a9:	e8 62 0c 00 00       	call   d10 <strlen>
        if(chdir(buf+3) < 0)
      ae:	c7 04 24 43 1a 00 00 	movl   $0x1a43,(%esp)

    // Read and run input commands.
    while(getcmd(buf, sizeof(buf)) >= 0){
    if(buf[0] == 'c' && buf[1] == 'd' && buf[2] == ' '){
        // Chdir must be called by the parent, not the child.
        buf[strlen(buf)-1] = 0;  // chop \n
      b5:	c6 80 3f 1a 00 00 00 	movb   $0x0,0x1a3f(%eax)
        if(chdir(buf+3) < 0)
      bc:	e8 61 0e 00 00       	call   f22 <chdir>
      c1:	85 c0                	test   %eax,%eax
      c3:	79 91                	jns    56 <main+0x56>
            printf(2, "cannot cd %s\n", buf+3);
      c5:	c7 44 24 08 43 1a 00 	movl   $0x1a43,0x8(%esp)
      cc:	00 
      cd:	c7 44 24 04 20 14 00 	movl   $0x1420,0x4(%esp)
      d4:	00 
      d5:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
      dc:	e8 1f 0f 00 00       	call   1000 <printf>
      e1:	e9 70 ff ff ff       	jmp    56 <main+0x56>
    int fd;

    // Ensure that three file descriptors are open.
    while((fd = open("console", O_RDWR)) >= 0){
        if(fd >= 3){
          close(fd);
      e6:	89 04 24             	mov    %eax,(%esp)
      e9:	e8 ec 0d 00 00       	call   eda <close>
      ee:	66 90                	xchg   %ax,%ax
          break;
      f0:	e9 61 ff ff ff       	jmp    56 <main+0x56>
      f5:	66 90                	xchg   %ax,%ax
      f7:	66 90                	xchg   %ax,%ax
      f9:	66 90                	xchg   %ax,%ax
      fb:	66 90                	xchg   %ax,%ax
      fd:	66 90                	xchg   %ax,%ax
      ff:	90                   	nop

00000100 <strcat>:
void panic(char*);
struct cmd *parsecmd(char*);

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
//    printf(1,"strcat : %s\n",dest);
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

00000150 <getcmd>:
  exit();
}

int
getcmd(char *buf, int nbuf)
{
     150:	55                   	push   %ebp
     151:	89 e5                	mov    %esp,%ebp
     153:	57                   	push   %edi
     154:	56                   	push   %esi
     155:	53                   	push   %ebx
     156:	83 ec 2c             	sub    $0x2c,%esp
     159:	8b 7d 08             	mov    0x8(%ebp),%edi
    printf(1, "$ ");
     15c:	c7 44 24 04 68 13 00 	movl   $0x1368,0x4(%esp)
     163:	00 
     164:	8d 75 e7             	lea    -0x19(%ebp),%esi
     167:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     16e:	e8 8d 0e 00 00       	call   1000 <printf>

    int current_pwd;
    current_pwd = open(".pwd",O_RDONLY);
     173:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
     17a:	00 
     17b:	c7 04 24 6b 13 00 00 	movl   $0x136b,(%esp)
     182:	e8 6b 0d 00 00       	call   ef2 <open>
     187:	89 c3                	mov    %eax,%ebx
    char temp[1];
    int n;
    while ((n = read(current_pwd,temp,sizeof(temp))) > 0){
     189:	eb 21                	jmp    1ac <getcmd+0x5c>
     18b:	90                   	nop
     18c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
            printf(1,"%c",temp[0]);
     190:	0f be 45 e7          	movsbl -0x19(%ebp),%eax
     194:	c7 44 24 04 70 13 00 	movl   $0x1370,0x4(%esp)
     19b:	00 
     19c:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     1a3:	89 44 24 08          	mov    %eax,0x8(%esp)
     1a7:	e8 54 0e 00 00       	call   1000 <printf>

    int current_pwd;
    current_pwd = open(".pwd",O_RDONLY);
    char temp[1];
    int n;
    while ((n = read(current_pwd,temp,sizeof(temp))) > 0){
     1ac:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
     1b3:	00 
     1b4:	89 74 24 04          	mov    %esi,0x4(%esp)
     1b8:	89 1c 24             	mov    %ebx,(%esp)
     1bb:	e8 0a 0d 00 00       	call   eca <read>
     1c0:	85 c0                	test   %eax,%eax
     1c2:	7f cc                	jg     190 <getcmd+0x40>
            printf(1,"%c",temp[0]);
    }
    close(current_pwd);
     1c4:	89 1c 24             	mov    %ebx,(%esp)
     1c7:	e8 0e 0d 00 00       	call   eda <close>

    printf(1," >> ");
     1cc:	c7 44 24 04 73 13 00 	movl   $0x1373,0x4(%esp)
     1d3:	00 
     1d4:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     1db:	e8 20 0e 00 00       	call   1000 <printf>
    memset(buf, 0, nbuf);
     1e0:	8b 45 0c             	mov    0xc(%ebp),%eax
     1e3:	89 3c 24             	mov    %edi,(%esp)
     1e6:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
     1ed:	00 
     1ee:	89 44 24 08          	mov    %eax,0x8(%esp)
     1f2:	e8 49 0b 00 00       	call   d40 <memset>
    gets(buf, nbuf);
     1f7:	8b 45 0c             	mov    0xc(%ebp),%eax
     1fa:	89 3c 24             	mov    %edi,(%esp)
     1fd:	89 44 24 04          	mov    %eax,0x4(%esp)
     201:	e8 9a 0b 00 00       	call   da0 <gets>
    if(buf[0] == 0) // EOF
     206:	31 c0                	xor    %eax,%eax
     208:	80 3f 00             	cmpb   $0x0,(%edi)
     20b:	0f 94 c0             	sete   %al
    return -1;
    return 0;
}
     20e:	83 c4 2c             	add    $0x2c,%esp
     211:	5b                   	pop    %ebx
    close(current_pwd);

    printf(1," >> ");
    memset(buf, 0, nbuf);
    gets(buf, nbuf);
    if(buf[0] == 0) // EOF
     212:	f7 d8                	neg    %eax
    return -1;
    return 0;
}
     214:	5e                   	pop    %esi
     215:	5f                   	pop    %edi
     216:	5d                   	pop    %ebp
     217:	c3                   	ret    
     218:	90                   	nop
     219:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000220 <panic>:
    exit();
}

void
panic(char *s)
{
     220:	55                   	push   %ebp
     221:	89 e5                	mov    %esp,%ebp
     223:	83 ec 18             	sub    $0x18,%esp
  printf(2, "%s\n", s);
     226:	8b 45 08             	mov    0x8(%ebp),%eax
     229:	c7 44 24 04 14 14 00 	movl   $0x1414,0x4(%esp)
     230:	00 
     231:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
     238:	89 44 24 08          	mov    %eax,0x8(%esp)
     23c:	e8 bf 0d 00 00       	call   1000 <printf>
  exit();
     241:	e8 6c 0c 00 00       	call   eb2 <exit>
     246:	8d 76 00             	lea    0x0(%esi),%esi
     249:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000250 <fork1>:
}

int
fork1(void)
{
     250:	55                   	push   %ebp
     251:	89 e5                	mov    %esp,%ebp
     253:	83 ec 18             	sub    $0x18,%esp
  int pid;

  pid = fork();
     256:	e8 4f 0c 00 00       	call   eaa <fork>
  if(pid == -1)
     25b:	83 f8 ff             	cmp    $0xffffffff,%eax
     25e:	74 02                	je     262 <fork1+0x12>
    panic("fork");
  return pid;
}
     260:	c9                   	leave  
     261:	c3                   	ret    
{
  int pid;

  pid = fork();
  if(pid == -1)
    panic("fork");
     262:	c7 04 24 78 13 00 00 	movl   $0x1378,(%esp)
     269:	e8 b2 ff ff ff       	call   220 <panic>
     26e:	66 90                	xchg   %ax,%ax

00000270 <runcmd>:
}

// Execute cmd.  Never returns.
void
runcmd(struct cmd *cmd)
{
     270:	55                   	push   %ebp
     271:	89 e5                	mov    %esp,%ebp
     273:	53                   	push   %ebx
     274:	83 ec 24             	sub    $0x24,%esp
     277:	8b 5d 08             	mov    0x8(%ebp),%ebx
  struct execcmd *ecmd;
  struct listcmd *lcmd;
  struct pipecmd *pcmd;
  struct redircmd *rcmd;

  if(cmd == 0)
     27a:	85 db                	test   %ebx,%ebx
     27c:	74 5f                	je     2dd <runcmd+0x6d>
    exit();

  switch(cmd->type){
     27e:	83 3b 05             	cmpl   $0x5,(%ebx)
     281:	0f 87 f7 00 00 00    	ja     37e <runcmd+0x10e>
     287:	8b 03                	mov    (%ebx),%eax
     289:	ff 24 85 30 14 00 00 	jmp    *0x1430(,%eax,4)
    runcmd(lcmd->right);
    break;

  case PIPE:
    pcmd = (struct pipecmd*)cmd;
    if(pipe(p) < 0)
     290:	8d 45 f0             	lea    -0x10(%ebp),%eax
     293:	89 04 24             	mov    %eax,(%esp)
     296:	e8 27 0c 00 00       	call   ec2 <pipe>
     29b:	85 c0                	test   %eax,%eax
     29d:	0f 88 e7 00 00 00    	js     38a <runcmd+0x11a>
      panic("pipe");
    if(fork1() == 0){
     2a3:	e8 a8 ff ff ff       	call   250 <fork1>
     2a8:	85 c0                	test   %eax,%eax
     2aa:	0f 84 3e 01 00 00    	je     3ee <runcmd+0x17e>
      dup(p[1]);
      close(p[0]);
      close(p[1]);
      runcmd(pcmd->left);
    }
    if(fork1() == 0){
     2b0:	e8 9b ff ff ff       	call   250 <fork1>
     2b5:	85 c0                	test   %eax,%eax
     2b7:	0f 84 f9 00 00 00    	je     3b6 <runcmd+0x146>
      dup(p[0]);
      close(p[0]);
      close(p[1]);
      runcmd(pcmd->right);
    }
    close(p[0]);
     2bd:	8b 45 f0             	mov    -0x10(%ebp),%eax
     2c0:	89 04 24             	mov    %eax,(%esp)
     2c3:	e8 12 0c 00 00       	call   eda <close>
    close(p[1]);
     2c8:	8b 45 f4             	mov    -0xc(%ebp),%eax
     2cb:	89 04 24             	mov    %eax,(%esp)
     2ce:	e8 07 0c 00 00       	call   eda <close>
    wait();
     2d3:	e8 e2 0b 00 00       	call   eba <wait>
    wait();
     2d8:	e8 dd 0b 00 00       	call   eba <wait>
     2dd:	8d 76 00             	lea    0x0(%esi),%esi
  case REDIR:
    rcmd = (struct redircmd*)cmd;
    close(rcmd->fd);
    if(open(rcmd->file, rcmd->mode) < 0){
      printf(2, "open %s failed\n", rcmd->file);
      exit();
     2e0:	e8 cd 0b 00 00       	call   eb2 <exit>
    wait();
    break;

  case BACK:
    bcmd = (struct backcmd*)cmd;
    if(fork1() == 0)
     2e5:	e8 66 ff ff ff       	call   250 <fork1>
     2ea:	85 c0                	test   %eax,%eax
     2ec:	75 ef                	jne    2dd <runcmd+0x6d>
     2ee:	66 90                	xchg   %ax,%ax
     2f0:	e9 7e 00 00 00       	jmp    373 <runcmd+0x103>
  default:
    panic("runcmd");

  case EXEC:
    ecmd = (struct execcmd*)cmd;
    if(ecmd->argv[0] == 0)
     2f5:	8b 43 04             	mov    0x4(%ebx),%eax
     2f8:	85 c0                	test   %eax,%eax
     2fa:	74 e1                	je     2dd <runcmd+0x6d>
      exit();
//    char *s[2] = { " /", ecmd->argv[1], 0};
//    printf(1,"ex : %s%s%s\n", ecmd->argv[0], ecmd->argv[1], ecmd->argv[2]);
    char *s;
    s = strcat("/",ecmd->argv[0]);
     2fc:	89 44 24 04          	mov    %eax,0x4(%esp)
     300:	c7 04 24 84 13 00 00 	movl   $0x1384,(%esp)
     307:	e8 f4 fd ff ff       	call   100 <strcat>

//    printf(1, "ex: %s\n\n",ecmd->argv[0]);
    exec(s, ecmd->argv);
     30c:	8d 53 04             	lea    0x4(%ebx),%edx
     30f:	89 54 24 04          	mov    %edx,0x4(%esp)
     313:	89 04 24             	mov    %eax,(%esp)
     316:	e8 cf 0b 00 00       	call   eea <exec>
    printf(2, "exec %s failed\n", ecmd->argv[0]);
     31b:	8b 43 04             	mov    0x4(%ebx),%eax
     31e:	c7 44 24 04 86 13 00 	movl   $0x1386,0x4(%esp)
     325:	00 
     326:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
     32d:	89 44 24 08          	mov    %eax,0x8(%esp)
     331:	e8 ca 0c 00 00       	call   1000 <printf>
    break;
     336:	eb a5                	jmp    2dd <runcmd+0x6d>
    runcmd(rcmd->cmd);
    break;

  case LIST:
    lcmd = (struct listcmd*)cmd;
    if(fork1() == 0)
     338:	e8 13 ff ff ff       	call   250 <fork1>
     33d:	85 c0                	test   %eax,%eax
     33f:	90                   	nop
     340:	74 31                	je     373 <runcmd+0x103>
      runcmd(lcmd->left);
    wait();
     342:	e8 73 0b 00 00       	call   eba <wait>
    runcmd(lcmd->right);
     347:	8b 43 08             	mov    0x8(%ebx),%eax
     34a:	89 04 24             	mov    %eax,(%esp)
     34d:	e8 1e ff ff ff       	call   270 <runcmd>
    printf(2, "exec %s failed\n", ecmd->argv[0]);
    break;

  case REDIR:
    rcmd = (struct redircmd*)cmd;
    close(rcmd->fd);
     352:	8b 43 14             	mov    0x14(%ebx),%eax
     355:	89 04 24             	mov    %eax,(%esp)
     358:	e8 7d 0b 00 00       	call   eda <close>
    if(open(rcmd->file, rcmd->mode) < 0){
     35d:	8b 43 10             	mov    0x10(%ebx),%eax
     360:	89 44 24 04          	mov    %eax,0x4(%esp)
     364:	8b 43 08             	mov    0x8(%ebx),%eax
     367:	89 04 24             	mov    %eax,(%esp)
     36a:	e8 83 0b 00 00       	call   ef2 <open>
     36f:	85 c0                	test   %eax,%eax
     371:	78 23                	js     396 <runcmd+0x126>
    break;

  case BACK:
    bcmd = (struct backcmd*)cmd;
    if(fork1() == 0)
      runcmd(bcmd->cmd);
     373:	8b 43 04             	mov    0x4(%ebx),%eax
     376:	89 04 24             	mov    %eax,(%esp)
     379:	e8 f2 fe ff ff       	call   270 <runcmd>
  if(cmd == 0)
    exit();

  switch(cmd->type){
  default:
    panic("runcmd");
     37e:	c7 04 24 7d 13 00 00 	movl   $0x137d,(%esp)
     385:	e8 96 fe ff ff       	call   220 <panic>
    break;

  case PIPE:
    pcmd = (struct pipecmd*)cmd;
    if(pipe(p) < 0)
      panic("pipe");
     38a:	c7 04 24 a6 13 00 00 	movl   $0x13a6,(%esp)
     391:	e8 8a fe ff ff       	call   220 <panic>

  case REDIR:
    rcmd = (struct redircmd*)cmd;
    close(rcmd->fd);
    if(open(rcmd->file, rcmd->mode) < 0){
      printf(2, "open %s failed\n", rcmd->file);
     396:	8b 43 08             	mov    0x8(%ebx),%eax
     399:	c7 44 24 04 96 13 00 	movl   $0x1396,0x4(%esp)
     3a0:	00 
     3a1:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
     3a8:	89 44 24 08          	mov    %eax,0x8(%esp)
     3ac:	e8 4f 0c 00 00       	call   1000 <printf>
     3b1:	e9 27 ff ff ff       	jmp    2dd <runcmd+0x6d>
      close(p[0]);
      close(p[1]);
      runcmd(pcmd->left);
    }
    if(fork1() == 0){
      close(0);
     3b6:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     3bd:	e8 18 0b 00 00       	call   eda <close>
      dup(p[0]);
     3c2:	8b 45 f0             	mov    -0x10(%ebp),%eax
     3c5:	89 04 24             	mov    %eax,(%esp)
     3c8:	e8 5d 0b 00 00       	call   f2a <dup>
      close(p[0]);
     3cd:	8b 45 f0             	mov    -0x10(%ebp),%eax
     3d0:	89 04 24             	mov    %eax,(%esp)
     3d3:	e8 02 0b 00 00       	call   eda <close>
      close(p[1]);
     3d8:	8b 45 f4             	mov    -0xc(%ebp),%eax
     3db:	89 04 24             	mov    %eax,(%esp)
     3de:	e8 f7 0a 00 00       	call   eda <close>
      runcmd(pcmd->right);
     3e3:	8b 43 08             	mov    0x8(%ebx),%eax
     3e6:	89 04 24             	mov    %eax,(%esp)
     3e9:	e8 82 fe ff ff       	call   270 <runcmd>
  case PIPE:
    pcmd = (struct pipecmd*)cmd;
    if(pipe(p) < 0)
      panic("pipe");
    if(fork1() == 0){
      close(1);
     3ee:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     3f5:	e8 e0 0a 00 00       	call   eda <close>
      dup(p[1]);
     3fa:	8b 45 f4             	mov    -0xc(%ebp),%eax
     3fd:	89 04 24             	mov    %eax,(%esp)
     400:	e8 25 0b 00 00       	call   f2a <dup>
      close(p[0]);
     405:	8b 45 f0             	mov    -0x10(%ebp),%eax
     408:	89 04 24             	mov    %eax,(%esp)
     40b:	e8 ca 0a 00 00       	call   eda <close>
      close(p[1]);
     410:	8b 45 f4             	mov    -0xc(%ebp),%eax
     413:	89 04 24             	mov    %eax,(%esp)
     416:	e8 bf 0a 00 00       	call   eda <close>
      runcmd(pcmd->left);
     41b:	8b 43 04             	mov    0x4(%ebx),%eax
     41e:	89 04 24             	mov    %eax,(%esp)
     421:	e8 4a fe ff ff       	call   270 <runcmd>
     426:	8d 76 00             	lea    0x0(%esi),%esi
     429:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000430 <execcmd>:
//PAGEBREAK!
// Constructors

struct cmd*
execcmd(void)
{
     430:	55                   	push   %ebp
     431:	89 e5                	mov    %esp,%ebp
     433:	53                   	push   %ebx
     434:	83 ec 14             	sub    $0x14,%esp
  struct execcmd *cmd;

  cmd = malloc(sizeof(*cmd));
     437:	c7 04 24 54 00 00 00 	movl   $0x54,(%esp)
     43e:	e8 3d 0e 00 00       	call   1280 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     443:	c7 44 24 08 54 00 00 	movl   $0x54,0x8(%esp)
     44a:	00 
     44b:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
     452:	00 
struct cmd*
execcmd(void)
{
  struct execcmd *cmd;

  cmd = malloc(sizeof(*cmd));
     453:	89 c3                	mov    %eax,%ebx
  memset(cmd, 0, sizeof(*cmd));
     455:	89 04 24             	mov    %eax,(%esp)
     458:	e8 e3 08 00 00       	call   d40 <memset>
  cmd->type = EXEC;
  return (struct cmd*)cmd;
}
     45d:	89 d8                	mov    %ebx,%eax
{
  struct execcmd *cmd;

  cmd = malloc(sizeof(*cmd));
  memset(cmd, 0, sizeof(*cmd));
  cmd->type = EXEC;
     45f:	c7 03 01 00 00 00    	movl   $0x1,(%ebx)
  return (struct cmd*)cmd;
}
     465:	83 c4 14             	add    $0x14,%esp
     468:	5b                   	pop    %ebx
     469:	5d                   	pop    %ebp
     46a:	c3                   	ret    
     46b:	90                   	nop
     46c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000470 <redircmd>:

struct cmd*
redircmd(struct cmd *subcmd, char *file, char *efile, int mode, int fd)
{
     470:	55                   	push   %ebp
     471:	89 e5                	mov    %esp,%ebp
     473:	53                   	push   %ebx
     474:	83 ec 14             	sub    $0x14,%esp
  struct redircmd *cmd;

  cmd = malloc(sizeof(*cmd));
     477:	c7 04 24 18 00 00 00 	movl   $0x18,(%esp)
     47e:	e8 fd 0d 00 00       	call   1280 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     483:	c7 44 24 08 18 00 00 	movl   $0x18,0x8(%esp)
     48a:	00 
     48b:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
     492:	00 
     493:	89 04 24             	mov    %eax,(%esp)
struct cmd*
redircmd(struct cmd *subcmd, char *file, char *efile, int mode, int fd)
{
  struct redircmd *cmd;

  cmd = malloc(sizeof(*cmd));
     496:	89 c3                	mov    %eax,%ebx
  memset(cmd, 0, sizeof(*cmd));
     498:	e8 a3 08 00 00       	call   d40 <memset>
  cmd->type = REDIR;
  cmd->cmd = subcmd;
     49d:	8b 45 08             	mov    0x8(%ebp),%eax
{
  struct redircmd *cmd;

  cmd = malloc(sizeof(*cmd));
  memset(cmd, 0, sizeof(*cmd));
  cmd->type = REDIR;
     4a0:	c7 03 02 00 00 00    	movl   $0x2,(%ebx)
  cmd->cmd = subcmd;
     4a6:	89 43 04             	mov    %eax,0x4(%ebx)
  cmd->file = file;
     4a9:	8b 45 0c             	mov    0xc(%ebp),%eax
     4ac:	89 43 08             	mov    %eax,0x8(%ebx)
  cmd->efile = efile;
     4af:	8b 45 10             	mov    0x10(%ebp),%eax
     4b2:	89 43 0c             	mov    %eax,0xc(%ebx)
  cmd->mode = mode;
     4b5:	8b 45 14             	mov    0x14(%ebp),%eax
     4b8:	89 43 10             	mov    %eax,0x10(%ebx)
  cmd->fd = fd;
     4bb:	8b 45 18             	mov    0x18(%ebp),%eax
     4be:	89 43 14             	mov    %eax,0x14(%ebx)
  return (struct cmd*)cmd;
}
     4c1:	83 c4 14             	add    $0x14,%esp
     4c4:	89 d8                	mov    %ebx,%eax
     4c6:	5b                   	pop    %ebx
     4c7:	5d                   	pop    %ebp
     4c8:	c3                   	ret    
     4c9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000004d0 <pipecmd>:

struct cmd*
pipecmd(struct cmd *left, struct cmd *right)
{
     4d0:	55                   	push   %ebp
     4d1:	89 e5                	mov    %esp,%ebp
     4d3:	53                   	push   %ebx
     4d4:	83 ec 14             	sub    $0x14,%esp
  struct pipecmd *cmd;

  cmd = malloc(sizeof(*cmd));
     4d7:	c7 04 24 0c 00 00 00 	movl   $0xc,(%esp)
     4de:	e8 9d 0d 00 00       	call   1280 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     4e3:	c7 44 24 08 0c 00 00 	movl   $0xc,0x8(%esp)
     4ea:	00 
     4eb:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
     4f2:	00 
     4f3:	89 04 24             	mov    %eax,(%esp)
struct cmd*
pipecmd(struct cmd *left, struct cmd *right)
{
  struct pipecmd *cmd;

  cmd = malloc(sizeof(*cmd));
     4f6:	89 c3                	mov    %eax,%ebx
  memset(cmd, 0, sizeof(*cmd));
     4f8:	e8 43 08 00 00       	call   d40 <memset>
  cmd->type = PIPE;
  cmd->left = left;
     4fd:	8b 45 08             	mov    0x8(%ebp),%eax
{
  struct pipecmd *cmd;

  cmd = malloc(sizeof(*cmd));
  memset(cmd, 0, sizeof(*cmd));
  cmd->type = PIPE;
     500:	c7 03 03 00 00 00    	movl   $0x3,(%ebx)
  cmd->left = left;
     506:	89 43 04             	mov    %eax,0x4(%ebx)
  cmd->right = right;
     509:	8b 45 0c             	mov    0xc(%ebp),%eax
     50c:	89 43 08             	mov    %eax,0x8(%ebx)
  return (struct cmd*)cmd;
}
     50f:	83 c4 14             	add    $0x14,%esp
     512:	89 d8                	mov    %ebx,%eax
     514:	5b                   	pop    %ebx
     515:	5d                   	pop    %ebp
     516:	c3                   	ret    
     517:	89 f6                	mov    %esi,%esi
     519:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000520 <listcmd>:

struct cmd*
listcmd(struct cmd *left, struct cmd *right)
{
     520:	55                   	push   %ebp
     521:	89 e5                	mov    %esp,%ebp
     523:	53                   	push   %ebx
     524:	83 ec 14             	sub    $0x14,%esp
  struct listcmd *cmd;

  cmd = malloc(sizeof(*cmd));
     527:	c7 04 24 0c 00 00 00 	movl   $0xc,(%esp)
     52e:	e8 4d 0d 00 00       	call   1280 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     533:	c7 44 24 08 0c 00 00 	movl   $0xc,0x8(%esp)
     53a:	00 
     53b:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
     542:	00 
     543:	89 04 24             	mov    %eax,(%esp)
struct cmd*
listcmd(struct cmd *left, struct cmd *right)
{
  struct listcmd *cmd;

  cmd = malloc(sizeof(*cmd));
     546:	89 c3                	mov    %eax,%ebx
  memset(cmd, 0, sizeof(*cmd));
     548:	e8 f3 07 00 00       	call   d40 <memset>
  cmd->type = LIST;
  cmd->left = left;
     54d:	8b 45 08             	mov    0x8(%ebp),%eax
{
  struct listcmd *cmd;

  cmd = malloc(sizeof(*cmd));
  memset(cmd, 0, sizeof(*cmd));
  cmd->type = LIST;
     550:	c7 03 04 00 00 00    	movl   $0x4,(%ebx)
  cmd->left = left;
     556:	89 43 04             	mov    %eax,0x4(%ebx)
  cmd->right = right;
     559:	8b 45 0c             	mov    0xc(%ebp),%eax
     55c:	89 43 08             	mov    %eax,0x8(%ebx)
  return (struct cmd*)cmd;
}
     55f:	83 c4 14             	add    $0x14,%esp
     562:	89 d8                	mov    %ebx,%eax
     564:	5b                   	pop    %ebx
     565:	5d                   	pop    %ebp
     566:	c3                   	ret    
     567:	89 f6                	mov    %esi,%esi
     569:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000570 <backcmd>:

struct cmd*
backcmd(struct cmd *subcmd)
{
     570:	55                   	push   %ebp
     571:	89 e5                	mov    %esp,%ebp
     573:	53                   	push   %ebx
     574:	83 ec 14             	sub    $0x14,%esp
  struct backcmd *cmd;

  cmd = malloc(sizeof(*cmd));
     577:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
     57e:	e8 fd 0c 00 00       	call   1280 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     583:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
     58a:	00 
     58b:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
     592:	00 
     593:	89 04 24             	mov    %eax,(%esp)
struct cmd*
backcmd(struct cmd *subcmd)
{
  struct backcmd *cmd;

  cmd = malloc(sizeof(*cmd));
     596:	89 c3                	mov    %eax,%ebx
  memset(cmd, 0, sizeof(*cmd));
     598:	e8 a3 07 00 00       	call   d40 <memset>
  cmd->type = BACK;
  cmd->cmd = subcmd;
     59d:	8b 45 08             	mov    0x8(%ebp),%eax
{
  struct backcmd *cmd;

  cmd = malloc(sizeof(*cmd));
  memset(cmd, 0, sizeof(*cmd));
  cmd->type = BACK;
     5a0:	c7 03 05 00 00 00    	movl   $0x5,(%ebx)
  cmd->cmd = subcmd;
     5a6:	89 43 04             	mov    %eax,0x4(%ebx)
  return (struct cmd*)cmd;
}
     5a9:	83 c4 14             	add    $0x14,%esp
     5ac:	89 d8                	mov    %ebx,%eax
     5ae:	5b                   	pop    %ebx
     5af:	5d                   	pop    %ebp
     5b0:	c3                   	ret    
     5b1:	eb 0d                	jmp    5c0 <gettoken>
     5b3:	90                   	nop
     5b4:	90                   	nop
     5b5:	90                   	nop
     5b6:	90                   	nop
     5b7:	90                   	nop
     5b8:	90                   	nop
     5b9:	90                   	nop
     5ba:	90                   	nop
     5bb:	90                   	nop
     5bc:	90                   	nop
     5bd:	90                   	nop
     5be:	90                   	nop
     5bf:	90                   	nop

000005c0 <gettoken>:
char whitespace[] = " \t\r\n\v";
char symbols[] = "<|>&;()";

int
gettoken(char **ps, char *es, char **q, char **eq)
{
     5c0:	55                   	push   %ebp
     5c1:	89 e5                	mov    %esp,%ebp
     5c3:	57                   	push   %edi
     5c4:	56                   	push   %esi
     5c5:	53                   	push   %ebx
     5c6:	83 ec 1c             	sub    $0x1c,%esp
  char *s;
  int ret;

  s = *ps;
     5c9:	8b 45 08             	mov    0x8(%ebp),%eax
char whitespace[] = " \t\r\n\v";
char symbols[] = "<|>&;()";

int
gettoken(char **ps, char *es, char **q, char **eq)
{
     5cc:	8b 5d 0c             	mov    0xc(%ebp),%ebx
     5cf:	8b 75 10             	mov    0x10(%ebp),%esi
  char *s;
  int ret;

  s = *ps;
     5d2:	8b 38                	mov    (%eax),%edi
  while(s < es && strchr(whitespace, *s))
     5d4:	39 df                	cmp    %ebx,%edi
     5d6:	72 0f                	jb     5e7 <gettoken+0x27>
     5d8:	eb 24                	jmp    5fe <gettoken+0x3e>
     5da:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    s++;
     5e0:	83 c7 01             	add    $0x1,%edi
{
  char *s;
  int ret;

  s = *ps;
  while(s < es && strchr(whitespace, *s))
     5e3:	39 df                	cmp    %ebx,%edi
     5e5:	74 17                	je     5fe <gettoken+0x3e>
     5e7:	0f be 07             	movsbl (%edi),%eax
     5ea:	c7 04 24 34 1a 00 00 	movl   $0x1a34,(%esp)
     5f1:	89 44 24 04          	mov    %eax,0x4(%esp)
     5f5:	e8 66 07 00 00       	call   d60 <strchr>
     5fa:	85 c0                	test   %eax,%eax
     5fc:	75 e2                	jne    5e0 <gettoken+0x20>
    s++;
  if(q)
     5fe:	85 f6                	test   %esi,%esi
     600:	74 02                	je     604 <gettoken+0x44>
    *q = s;
     602:	89 3e                	mov    %edi,(%esi)
  ret = *s;
     604:	0f b6 0f             	movzbl (%edi),%ecx
     607:	0f be f1             	movsbl %cl,%esi
  switch(*s){
     60a:	80 f9 29             	cmp    $0x29,%cl
  s = *ps;
  while(s < es && strchr(whitespace, *s))
    s++;
  if(q)
    *q = s;
  ret = *s;
     60d:	89 f0                	mov    %esi,%eax
  switch(*s){
     60f:	7f 4f                	jg     660 <gettoken+0xa0>
     611:	80 f9 28             	cmp    $0x28,%cl
     614:	7d 55                	jge    66b <gettoken+0xab>
     616:	84 c9                	test   %cl,%cl
     618:	0f 85 ca 00 00 00    	jne    6e8 <gettoken+0x128>
    ret = 'a';
    while(s < es && !strchr(whitespace, *s) && !strchr(symbols, *s))
      s++;
    break;
  }
  if(eq)
     61e:	8b 45 14             	mov    0x14(%ebp),%eax
     621:	85 c0                	test   %eax,%eax
     623:	74 05                	je     62a <gettoken+0x6a>
    *eq = s;
     625:	8b 45 14             	mov    0x14(%ebp),%eax
     628:	89 38                	mov    %edi,(%eax)

  while(s < es && strchr(whitespace, *s))
     62a:	39 df                	cmp    %ebx,%edi
     62c:	72 09                	jb     637 <gettoken+0x77>
     62e:	eb 1e                	jmp    64e <gettoken+0x8e>
    s++;
     630:	83 c7 01             	add    $0x1,%edi
    break;
  }
  if(eq)
    *eq = s;

  while(s < es && strchr(whitespace, *s))
     633:	39 df                	cmp    %ebx,%edi
     635:	74 17                	je     64e <gettoken+0x8e>
     637:	0f be 07             	movsbl (%edi),%eax
     63a:	c7 04 24 34 1a 00 00 	movl   $0x1a34,(%esp)
     641:	89 44 24 04          	mov    %eax,0x4(%esp)
     645:	e8 16 07 00 00       	call   d60 <strchr>
     64a:	85 c0                	test   %eax,%eax
     64c:	75 e2                	jne    630 <gettoken+0x70>
    s++;
  *ps = s;
     64e:	8b 45 08             	mov    0x8(%ebp),%eax
     651:	89 38                	mov    %edi,(%eax)
  return ret;
}
     653:	83 c4 1c             	add    $0x1c,%esp
     656:	89 f0                	mov    %esi,%eax
     658:	5b                   	pop    %ebx
     659:	5e                   	pop    %esi
     65a:	5f                   	pop    %edi
     65b:	5d                   	pop    %ebp
     65c:	c3                   	ret    
     65d:	8d 76 00             	lea    0x0(%esi),%esi
  while(s < es && strchr(whitespace, *s))
    s++;
  if(q)
    *q = s;
  ret = *s;
  switch(*s){
     660:	80 f9 3e             	cmp    $0x3e,%cl
     663:	75 0b                	jne    670 <gettoken+0xb0>
  case '<':
    s++;
    break;
  case '>':
    s++;
    if(*s == '>'){
     665:	80 7f 01 3e          	cmpb   $0x3e,0x1(%edi)
     669:	74 6d                	je     6d8 <gettoken+0x118>
  case '&':
  case '<':
    s++;
    break;
  case '>':
    s++;
     66b:	83 c7 01             	add    $0x1,%edi
     66e:	eb ae                	jmp    61e <gettoken+0x5e>
  while(s < es && strchr(whitespace, *s))
    s++;
  if(q)
    *q = s;
  ret = *s;
  switch(*s){
     670:	7f 56                	jg     6c8 <gettoken+0x108>
     672:	83 e9 3b             	sub    $0x3b,%ecx
     675:	80 f9 01             	cmp    $0x1,%cl
     678:	76 f1                	jbe    66b <gettoken+0xab>
      s++;
    }
    break;
  default:
    ret = 'a';
    while(s < es && !strchr(whitespace, *s) && !strchr(symbols, *s))
     67a:	39 fb                	cmp    %edi,%ebx
     67c:	77 2b                	ja     6a9 <gettoken+0xe9>
     67e:	66 90                	xchg   %ax,%ax
     680:	eb 3b                	jmp    6bd <gettoken+0xfd>
     682:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     688:	0f be 07             	movsbl (%edi),%eax
     68b:	c7 04 24 2c 1a 00 00 	movl   $0x1a2c,(%esp)
     692:	89 44 24 04          	mov    %eax,0x4(%esp)
     696:	e8 c5 06 00 00       	call   d60 <strchr>
     69b:	85 c0                	test   %eax,%eax
     69d:	75 1e                	jne    6bd <gettoken+0xfd>
      s++;
     69f:	83 c7 01             	add    $0x1,%edi
      s++;
    }
    break;
  default:
    ret = 'a';
    while(s < es && !strchr(whitespace, *s) && !strchr(symbols, *s))
     6a2:	39 df                	cmp    %ebx,%edi
     6a4:	74 17                	je     6bd <gettoken+0xfd>
     6a6:	0f be 07             	movsbl (%edi),%eax
     6a9:	89 44 24 04          	mov    %eax,0x4(%esp)
     6ad:	c7 04 24 34 1a 00 00 	movl   $0x1a34,(%esp)
     6b4:	e8 a7 06 00 00       	call   d60 <strchr>
     6b9:	85 c0                	test   %eax,%eax
     6bb:	74 cb                	je     688 <gettoken+0xc8>
      ret = '+';
      s++;
    }
    break;
  default:
    ret = 'a';
     6bd:	be 61 00 00 00       	mov    $0x61,%esi
     6c2:	e9 57 ff ff ff       	jmp    61e <gettoken+0x5e>
     6c7:	90                   	nop
  while(s < es && strchr(whitespace, *s))
    s++;
  if(q)
    *q = s;
  ret = *s;
  switch(*s){
     6c8:	80 f9 7c             	cmp    $0x7c,%cl
     6cb:	74 9e                	je     66b <gettoken+0xab>
     6cd:	8d 76 00             	lea    0x0(%esi),%esi
     6d0:	eb a8                	jmp    67a <gettoken+0xba>
     6d2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    break;
  case '>':
    s++;
    if(*s == '>'){
      ret = '+';
      s++;
     6d8:	83 c7 02             	add    $0x2,%edi
    s++;
    break;
  case '>':
    s++;
    if(*s == '>'){
      ret = '+';
     6db:	be 2b 00 00 00       	mov    $0x2b,%esi
     6e0:	e9 39 ff ff ff       	jmp    61e <gettoken+0x5e>
     6e5:	8d 76 00             	lea    0x0(%esi),%esi
  while(s < es && strchr(whitespace, *s))
    s++;
  if(q)
    *q = s;
  ret = *s;
  switch(*s){
     6e8:	80 f9 26             	cmp    $0x26,%cl
     6eb:	75 8d                	jne    67a <gettoken+0xba>
     6ed:	e9 79 ff ff ff       	jmp    66b <gettoken+0xab>
     6f2:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     6f9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000700 <peek>:
  return ret;
}

int
peek(char **ps, char *es, char *toks)
{
     700:	55                   	push   %ebp
     701:	89 e5                	mov    %esp,%ebp
     703:	57                   	push   %edi
     704:	56                   	push   %esi
     705:	53                   	push   %ebx
     706:	83 ec 1c             	sub    $0x1c,%esp
     709:	8b 7d 08             	mov    0x8(%ebp),%edi
     70c:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *s;

  s = *ps;
     70f:	8b 1f                	mov    (%edi),%ebx
  while(s < es && strchr(whitespace, *s))
     711:	39 f3                	cmp    %esi,%ebx
     713:	72 0a                	jb     71f <peek+0x1f>
     715:	eb 1f                	jmp    736 <peek+0x36>
     717:	90                   	nop
    s++;
     718:	83 c3 01             	add    $0x1,%ebx
peek(char **ps, char *es, char *toks)
{
  char *s;

  s = *ps;
  while(s < es && strchr(whitespace, *s))
     71b:	39 f3                	cmp    %esi,%ebx
     71d:	74 17                	je     736 <peek+0x36>
     71f:	0f be 03             	movsbl (%ebx),%eax
     722:	c7 04 24 34 1a 00 00 	movl   $0x1a34,(%esp)
     729:	89 44 24 04          	mov    %eax,0x4(%esp)
     72d:	e8 2e 06 00 00       	call   d60 <strchr>
     732:	85 c0                	test   %eax,%eax
     734:	75 e2                	jne    718 <peek+0x18>
    s++;
  *ps = s;
     736:	89 1f                	mov    %ebx,(%edi)
//  printf(0, "path : %s ;\n %s ;\n %s ;\n", **ps, *es, *toks);
  return *s && strchr(toks, *s);
     738:	0f be 13             	movsbl (%ebx),%edx
     73b:	31 c0                	xor    %eax,%eax
     73d:	84 d2                	test   %dl,%dl
     73f:	74 17                	je     758 <peek+0x58>
     741:	8b 45 10             	mov    0x10(%ebp),%eax
     744:	89 54 24 04          	mov    %edx,0x4(%esp)
     748:	89 04 24             	mov    %eax,(%esp)
     74b:	e8 10 06 00 00       	call   d60 <strchr>
     750:	85 c0                	test   %eax,%eax
     752:	0f 95 c0             	setne  %al
     755:	0f b6 c0             	movzbl %al,%eax
}
     758:	83 c4 1c             	add    $0x1c,%esp
     75b:	5b                   	pop    %ebx
     75c:	5e                   	pop    %esi
     75d:	5f                   	pop    %edi
     75e:	5d                   	pop    %ebp
     75f:	c3                   	ret    

00000760 <parseredirs>:
  return cmd;
}

struct cmd*
parseredirs(struct cmd *cmd, char **ps, char *es)
{
     760:	55                   	push   %ebp
     761:	89 e5                	mov    %esp,%ebp
     763:	57                   	push   %edi
     764:	56                   	push   %esi
     765:	53                   	push   %ebx
     766:	83 ec 3c             	sub    $0x3c,%esp
     769:	8b 75 0c             	mov    0xc(%ebp),%esi
     76c:	8b 5d 10             	mov    0x10(%ebp),%ebx
     76f:	90                   	nop
  int tok;
  char *q, *eq;

  while(peek(ps, es, "<>")){
     770:	c7 44 24 08 c8 13 00 	movl   $0x13c8,0x8(%esp)
     777:	00 
     778:	89 5c 24 04          	mov    %ebx,0x4(%esp)
     77c:	89 34 24             	mov    %esi,(%esp)
     77f:	e8 7c ff ff ff       	call   700 <peek>
     784:	85 c0                	test   %eax,%eax
     786:	0f 84 9c 00 00 00    	je     828 <parseredirs+0xc8>
    tok = gettoken(ps, es, 0, 0);
     78c:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
     793:	00 
     794:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
     79b:	00 
     79c:	89 5c 24 04          	mov    %ebx,0x4(%esp)
     7a0:	89 34 24             	mov    %esi,(%esp)
     7a3:	e8 18 fe ff ff       	call   5c0 <gettoken>
    if(gettoken(ps, es, &q, &eq) != 'a')
     7a8:	89 5c 24 04          	mov    %ebx,0x4(%esp)
     7ac:	89 34 24             	mov    %esi,(%esp)
{
  int tok;
  char *q, *eq;

  while(peek(ps, es, "<>")){
    tok = gettoken(ps, es, 0, 0);
     7af:	89 c7                	mov    %eax,%edi
    if(gettoken(ps, es, &q, &eq) != 'a')
     7b1:	8d 45 e4             	lea    -0x1c(%ebp),%eax
     7b4:	89 44 24 0c          	mov    %eax,0xc(%esp)
     7b8:	8d 45 e0             	lea    -0x20(%ebp),%eax
     7bb:	89 44 24 08          	mov    %eax,0x8(%esp)
     7bf:	e8 fc fd ff ff       	call   5c0 <gettoken>
     7c4:	83 f8 61             	cmp    $0x61,%eax
     7c7:	75 6a                	jne    833 <parseredirs+0xd3>
      panic("missing file for redirection");
    switch(tok){
     7c9:	83 ff 3c             	cmp    $0x3c,%edi
     7cc:	74 42                	je     810 <parseredirs+0xb0>
     7ce:	83 ff 3e             	cmp    $0x3e,%edi
     7d1:	74 05                	je     7d8 <parseredirs+0x78>
     7d3:	83 ff 2b             	cmp    $0x2b,%edi
     7d6:	75 98                	jne    770 <parseredirs+0x10>
      break;
    case '>':
      cmd = redircmd(cmd, q, eq, O_WRONLY|O_CREATE, 1);
      break;
    case '+':  // >>
      cmd = redircmd(cmd, q, eq, O_WRONLY|O_CREATE, 1);
     7d8:	c7 44 24 10 01 00 00 	movl   $0x1,0x10(%esp)
     7df:	00 
     7e0:	c7 44 24 0c 01 02 00 	movl   $0x201,0xc(%esp)
     7e7:	00 
     7e8:	8b 45 e4             	mov    -0x1c(%ebp),%eax
     7eb:	89 44 24 08          	mov    %eax,0x8(%esp)
     7ef:	8b 45 e0             	mov    -0x20(%ebp),%eax
     7f2:	89 44 24 04          	mov    %eax,0x4(%esp)
     7f6:	8b 45 08             	mov    0x8(%ebp),%eax
     7f9:	89 04 24             	mov    %eax,(%esp)
     7fc:	e8 6f fc ff ff       	call   470 <redircmd>
     801:	89 45 08             	mov    %eax,0x8(%ebp)
      break;
     804:	e9 67 ff ff ff       	jmp    770 <parseredirs+0x10>
     809:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    tok = gettoken(ps, es, 0, 0);
    if(gettoken(ps, es, &q, &eq) != 'a')
      panic("missing file for redirection");
    switch(tok){
    case '<':
      cmd = redircmd(cmd, q, eq, O_RDONLY, 0);
     810:	c7 44 24 10 00 00 00 	movl   $0x0,0x10(%esp)
     817:	00 
     818:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
     81f:	00 
     820:	eb c6                	jmp    7e8 <parseredirs+0x88>
     822:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      cmd = redircmd(cmd, q, eq, O_WRONLY|O_CREATE, 1);
      break;
    }
  }
  return cmd;
}
     828:	8b 45 08             	mov    0x8(%ebp),%eax
     82b:	83 c4 3c             	add    $0x3c,%esp
     82e:	5b                   	pop    %ebx
     82f:	5e                   	pop    %esi
     830:	5f                   	pop    %edi
     831:	5d                   	pop    %ebp
     832:	c3                   	ret    
  char *q, *eq;

  while(peek(ps, es, "<>")){
    tok = gettoken(ps, es, 0, 0);
    if(gettoken(ps, es, &q, &eq) != 'a')
      panic("missing file for redirection");
     833:	c7 04 24 ab 13 00 00 	movl   $0x13ab,(%esp)
     83a:	e8 e1 f9 ff ff       	call   220 <panic>
     83f:	90                   	nop

00000840 <parseexec>:
  return cmd;
}

struct cmd*
parseexec(char **ps, char *es)
{
     840:	55                   	push   %ebp
     841:	89 e5                	mov    %esp,%ebp
     843:	57                   	push   %edi
     844:	56                   	push   %esi
     845:	53                   	push   %ebx
     846:	83 ec 3c             	sub    $0x3c,%esp
     849:	8b 75 08             	mov    0x8(%ebp),%esi
     84c:	8b 7d 0c             	mov    0xc(%ebp),%edi
  char *q, *eq;
  int tok, argc;
  struct execcmd *cmd;
  struct cmd *ret;

  if(peek(ps, es, "("))
     84f:	c7 44 24 08 cb 13 00 	movl   $0x13cb,0x8(%esp)
     856:	00 
     857:	89 34 24             	mov    %esi,(%esp)
     85a:	89 7c 24 04          	mov    %edi,0x4(%esp)
     85e:	e8 9d fe ff ff       	call   700 <peek>
     863:	85 c0                	test   %eax,%eax
     865:	0f 85 a5 00 00 00    	jne    910 <parseexec+0xd0>
    return parseblock(ps, es);

  ret = execcmd();
     86b:	e8 c0 fb ff ff       	call   430 <execcmd>
  cmd = (struct execcmd*)ret;

  argc = 0;
  ret = parseredirs(ret, ps, es);
     870:	89 7c 24 08          	mov    %edi,0x8(%esp)
     874:	89 74 24 04          	mov    %esi,0x4(%esp)
     878:	89 04 24             	mov    %eax,(%esp)
  struct cmd *ret;

  if(peek(ps, es, "("))
    return parseblock(ps, es);

  ret = execcmd();
     87b:	89 c3                	mov    %eax,%ebx
     87d:	89 45 cc             	mov    %eax,-0x34(%ebp)
  cmd = (struct execcmd*)ret;

  argc = 0;
  ret = parseredirs(ret, ps, es);
     880:	e8 db fe ff ff       	call   760 <parseredirs>
    return parseblock(ps, es);

  ret = execcmd();
  cmd = (struct execcmd*)ret;

  argc = 0;
     885:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
  ret = parseredirs(ret, ps, es);
     88c:	89 45 d0             	mov    %eax,-0x30(%ebp)
  while(!peek(ps, es, "|)&;")){
     88f:	eb 1d                	jmp    8ae <parseexec+0x6e>
     891:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    cmd->argv[argc] = q;
    cmd->eargv[argc] = eq;
    argc++;
    if(argc >= MAXARGS)
      panic("too many args");
    ret = parseredirs(ret, ps, es);
     898:	8b 45 d0             	mov    -0x30(%ebp),%eax
     89b:	89 7c 24 08          	mov    %edi,0x8(%esp)
     89f:	89 74 24 04          	mov    %esi,0x4(%esp)
     8a3:	89 04 24             	mov    %eax,(%esp)
     8a6:	e8 b5 fe ff ff       	call   760 <parseredirs>
     8ab:	89 45 d0             	mov    %eax,-0x30(%ebp)
  ret = execcmd();
  cmd = (struct execcmd*)ret;

  argc = 0;
  ret = parseredirs(ret, ps, es);
  while(!peek(ps, es, "|)&;")){
     8ae:	c7 44 24 08 e2 13 00 	movl   $0x13e2,0x8(%esp)
     8b5:	00 
     8b6:	89 7c 24 04          	mov    %edi,0x4(%esp)
     8ba:	89 34 24             	mov    %esi,(%esp)
     8bd:	e8 3e fe ff ff       	call   700 <peek>
     8c2:	85 c0                	test   %eax,%eax
     8c4:	75 62                	jne    928 <parseexec+0xe8>
    if((tok=gettoken(ps, es, &q, &eq)) == 0)
     8c6:	8d 45 e4             	lea    -0x1c(%ebp),%eax
     8c9:	89 44 24 0c          	mov    %eax,0xc(%esp)
     8cd:	8d 45 e0             	lea    -0x20(%ebp),%eax
     8d0:	89 44 24 08          	mov    %eax,0x8(%esp)
     8d4:	89 7c 24 04          	mov    %edi,0x4(%esp)
     8d8:	89 34 24             	mov    %esi,(%esp)
     8db:	e8 e0 fc ff ff       	call   5c0 <gettoken>
     8e0:	85 c0                	test   %eax,%eax
     8e2:	74 44                	je     928 <parseexec+0xe8>
      break;
    if(tok != 'a')
     8e4:	83 f8 61             	cmp    $0x61,%eax
     8e7:	75 61                	jne    94a <parseexec+0x10a>
      panic("syntax");
    cmd->argv[argc] = q;
     8e9:	8b 45 e0             	mov    -0x20(%ebp),%eax
     8ec:	83 c3 04             	add    $0x4,%ebx
    cmd->eargv[argc] = eq;
    argc++;
     8ef:	83 45 d4 01          	addl   $0x1,-0x2c(%ebp)
  while(!peek(ps, es, "|)&;")){
    if((tok=gettoken(ps, es, &q, &eq)) == 0)
      break;
    if(tok != 'a')
      panic("syntax");
    cmd->argv[argc] = q;
     8f3:	89 03                	mov    %eax,(%ebx)
    cmd->eargv[argc] = eq;
     8f5:	8b 45 e4             	mov    -0x1c(%ebp),%eax
     8f8:	89 43 28             	mov    %eax,0x28(%ebx)
    argc++;
    if(argc >= MAXARGS)
     8fb:	83 7d d4 0a          	cmpl   $0xa,-0x2c(%ebp)
     8ff:	75 97                	jne    898 <parseexec+0x58>
      panic("too many args");
     901:	c7 04 24 d4 13 00 00 	movl   $0x13d4,(%esp)
     908:	e8 13 f9 ff ff       	call   220 <panic>
     90d:	8d 76 00             	lea    0x0(%esi),%esi
  int tok, argc;
  struct execcmd *cmd;
  struct cmd *ret;

  if(peek(ps, es, "("))
    return parseblock(ps, es);
     910:	89 7c 24 04          	mov    %edi,0x4(%esp)
     914:	89 34 24             	mov    %esi,(%esp)
     917:	e8 84 01 00 00       	call   aa0 <parseblock>
    ret = parseredirs(ret, ps, es);
  }
  cmd->argv[argc] = 0;
  cmd->eargv[argc] = 0;
  return ret;
}
     91c:	83 c4 3c             	add    $0x3c,%esp
     91f:	5b                   	pop    %ebx
     920:	5e                   	pop    %esi
     921:	5f                   	pop    %edi
     922:	5d                   	pop    %ebp
     923:	c3                   	ret    
     924:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     928:	8b 45 cc             	mov    -0x34(%ebp),%eax
     92b:	8b 55 d4             	mov    -0x2c(%ebp),%edx
     92e:	8d 04 90             	lea    (%eax,%edx,4),%eax
    argc++;
    if(argc >= MAXARGS)
      panic("too many args");
    ret = parseredirs(ret, ps, es);
  }
  cmd->argv[argc] = 0;
     931:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
  cmd->eargv[argc] = 0;
     938:	c7 40 2c 00 00 00 00 	movl   $0x0,0x2c(%eax)
  return ret;
     93f:	8b 45 d0             	mov    -0x30(%ebp),%eax
}
     942:	83 c4 3c             	add    $0x3c,%esp
     945:	5b                   	pop    %ebx
     946:	5e                   	pop    %esi
     947:	5f                   	pop    %edi
     948:	5d                   	pop    %ebp
     949:	c3                   	ret    
  ret = parseredirs(ret, ps, es);
  while(!peek(ps, es, "|)&;")){
    if((tok=gettoken(ps, es, &q, &eq)) == 0)
      break;
    if(tok != 'a')
      panic("syntax");
     94a:	c7 04 24 cd 13 00 00 	movl   $0x13cd,(%esp)
     951:	e8 ca f8 ff ff       	call   220 <panic>
     956:	8d 76 00             	lea    0x0(%esi),%esi
     959:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000960 <parsepipe>:
  return cmd;
}

struct cmd*
parsepipe(char **ps, char *es)
{
     960:	55                   	push   %ebp
     961:	89 e5                	mov    %esp,%ebp
     963:	57                   	push   %edi
     964:	56                   	push   %esi
     965:	53                   	push   %ebx
     966:	83 ec 1c             	sub    $0x1c,%esp
     969:	8b 5d 08             	mov    0x8(%ebp),%ebx
     96c:	8b 75 0c             	mov    0xc(%ebp),%esi
  struct cmd *cmd;

  cmd = parseexec(ps, es);
     96f:	89 1c 24             	mov    %ebx,(%esp)
     972:	89 74 24 04          	mov    %esi,0x4(%esp)
     976:	e8 c5 fe ff ff       	call   840 <parseexec>
  if(peek(ps, es, "|")){
     97b:	c7 44 24 08 e7 13 00 	movl   $0x13e7,0x8(%esp)
     982:	00 
     983:	89 74 24 04          	mov    %esi,0x4(%esp)
     987:	89 1c 24             	mov    %ebx,(%esp)
struct cmd*
parsepipe(char **ps, char *es)
{
  struct cmd *cmd;

  cmd = parseexec(ps, es);
     98a:	89 c7                	mov    %eax,%edi
  if(peek(ps, es, "|")){
     98c:	e8 6f fd ff ff       	call   700 <peek>
     991:	85 c0                	test   %eax,%eax
     993:	75 0b                	jne    9a0 <parsepipe+0x40>
    gettoken(ps, es, 0, 0);
    cmd = pipecmd(cmd, parsepipe(ps, es));
  }
  return cmd;
}
     995:	83 c4 1c             	add    $0x1c,%esp
     998:	89 f8                	mov    %edi,%eax
     99a:	5b                   	pop    %ebx
     99b:	5e                   	pop    %esi
     99c:	5f                   	pop    %edi
     99d:	5d                   	pop    %ebp
     99e:	c3                   	ret    
     99f:	90                   	nop
{
  struct cmd *cmd;

  cmd = parseexec(ps, es);
  if(peek(ps, es, "|")){
    gettoken(ps, es, 0, 0);
     9a0:	89 74 24 04          	mov    %esi,0x4(%esp)
     9a4:	89 1c 24             	mov    %ebx,(%esp)
     9a7:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
     9ae:	00 
     9af:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
     9b6:	00 
     9b7:	e8 04 fc ff ff       	call   5c0 <gettoken>
    cmd = pipecmd(cmd, parsepipe(ps, es));
     9bc:	89 74 24 04          	mov    %esi,0x4(%esp)
     9c0:	89 1c 24             	mov    %ebx,(%esp)
     9c3:	e8 98 ff ff ff       	call   960 <parsepipe>
     9c8:	89 7d 08             	mov    %edi,0x8(%ebp)
     9cb:	89 45 0c             	mov    %eax,0xc(%ebp)
  }
  return cmd;
}
     9ce:	83 c4 1c             	add    $0x1c,%esp
     9d1:	5b                   	pop    %ebx
     9d2:	5e                   	pop    %esi
     9d3:	5f                   	pop    %edi
     9d4:	5d                   	pop    %ebp
  struct cmd *cmd;

  cmd = parseexec(ps, es);
  if(peek(ps, es, "|")){
    gettoken(ps, es, 0, 0);
    cmd = pipecmd(cmd, parsepipe(ps, es));
     9d5:	e9 f6 fa ff ff       	jmp    4d0 <pipecmd>
     9da:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

000009e0 <parseline>:
  return cmd;
}

struct cmd*
parseline(char **ps, char *es)
{
     9e0:	55                   	push   %ebp
     9e1:	89 e5                	mov    %esp,%ebp
     9e3:	57                   	push   %edi
     9e4:	56                   	push   %esi
     9e5:	53                   	push   %ebx
     9e6:	83 ec 1c             	sub    $0x1c,%esp
     9e9:	8b 5d 08             	mov    0x8(%ebp),%ebx
     9ec:	8b 75 0c             	mov    0xc(%ebp),%esi
  struct cmd *cmd;

  cmd = parsepipe(ps, es);
     9ef:	89 1c 24             	mov    %ebx,(%esp)
     9f2:	89 74 24 04          	mov    %esi,0x4(%esp)
     9f6:	e8 65 ff ff ff       	call   960 <parsepipe>
     9fb:	89 c7                	mov    %eax,%edi
  while(peek(ps, es, "&")){
     9fd:	eb 27                	jmp    a26 <parseline+0x46>
     9ff:	90                   	nop
    gettoken(ps, es, 0, 0);
     a00:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
     a07:	00 
     a08:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
     a0f:	00 
     a10:	89 74 24 04          	mov    %esi,0x4(%esp)
     a14:	89 1c 24             	mov    %ebx,(%esp)
     a17:	e8 a4 fb ff ff       	call   5c0 <gettoken>
    cmd = backcmd(cmd);
     a1c:	89 3c 24             	mov    %edi,(%esp)
     a1f:	e8 4c fb ff ff       	call   570 <backcmd>
     a24:	89 c7                	mov    %eax,%edi
parseline(char **ps, char *es)
{
  struct cmd *cmd;

  cmd = parsepipe(ps, es);
  while(peek(ps, es, "&")){
     a26:	c7 44 24 08 e9 13 00 	movl   $0x13e9,0x8(%esp)
     a2d:	00 
     a2e:	89 74 24 04          	mov    %esi,0x4(%esp)
     a32:	89 1c 24             	mov    %ebx,(%esp)
     a35:	e8 c6 fc ff ff       	call   700 <peek>
     a3a:	85 c0                	test   %eax,%eax
     a3c:	75 c2                	jne    a00 <parseline+0x20>
    gettoken(ps, es, 0, 0);
    cmd = backcmd(cmd);
  }
  if(peek(ps, es, ";")){
     a3e:	c7 44 24 08 e5 13 00 	movl   $0x13e5,0x8(%esp)
     a45:	00 
     a46:	89 74 24 04          	mov    %esi,0x4(%esp)
     a4a:	89 1c 24             	mov    %ebx,(%esp)
     a4d:	e8 ae fc ff ff       	call   700 <peek>
     a52:	85 c0                	test   %eax,%eax
     a54:	75 0a                	jne    a60 <parseline+0x80>
    gettoken(ps, es, 0, 0);
    cmd = listcmd(cmd, parseline(ps, es));
  }
  return cmd;
}
     a56:	83 c4 1c             	add    $0x1c,%esp
     a59:	89 f8                	mov    %edi,%eax
     a5b:	5b                   	pop    %ebx
     a5c:	5e                   	pop    %esi
     a5d:	5f                   	pop    %edi
     a5e:	5d                   	pop    %ebp
     a5f:	c3                   	ret    
  while(peek(ps, es, "&")){
    gettoken(ps, es, 0, 0);
    cmd = backcmd(cmd);
  }
  if(peek(ps, es, ";")){
    gettoken(ps, es, 0, 0);
     a60:	89 74 24 04          	mov    %esi,0x4(%esp)
     a64:	89 1c 24             	mov    %ebx,(%esp)
     a67:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
     a6e:	00 
     a6f:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
     a76:	00 
     a77:	e8 44 fb ff ff       	call   5c0 <gettoken>
    cmd = listcmd(cmd, parseline(ps, es));
     a7c:	89 74 24 04          	mov    %esi,0x4(%esp)
     a80:	89 1c 24             	mov    %ebx,(%esp)
     a83:	e8 58 ff ff ff       	call   9e0 <parseline>
     a88:	89 7d 08             	mov    %edi,0x8(%ebp)
     a8b:	89 45 0c             	mov    %eax,0xc(%ebp)
  }
  return cmd;
}
     a8e:	83 c4 1c             	add    $0x1c,%esp
     a91:	5b                   	pop    %ebx
     a92:	5e                   	pop    %esi
     a93:	5f                   	pop    %edi
     a94:	5d                   	pop    %ebp
    gettoken(ps, es, 0, 0);
    cmd = backcmd(cmd);
  }
  if(peek(ps, es, ";")){
    gettoken(ps, es, 0, 0);
    cmd = listcmd(cmd, parseline(ps, es));
     a95:	e9 86 fa ff ff       	jmp    520 <listcmd>
     a9a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000aa0 <parseblock>:
  return cmd;
}

struct cmd*
parseblock(char **ps, char *es)
{
     aa0:	55                   	push   %ebp
     aa1:	89 e5                	mov    %esp,%ebp
     aa3:	57                   	push   %edi
     aa4:	56                   	push   %esi
     aa5:	53                   	push   %ebx
     aa6:	83 ec 1c             	sub    $0x1c,%esp
     aa9:	8b 5d 08             	mov    0x8(%ebp),%ebx
     aac:	8b 75 0c             	mov    0xc(%ebp),%esi
  struct cmd *cmd;

  if(!peek(ps, es, "("))
     aaf:	c7 44 24 08 cb 13 00 	movl   $0x13cb,0x8(%esp)
     ab6:	00 
     ab7:	89 1c 24             	mov    %ebx,(%esp)
     aba:	89 74 24 04          	mov    %esi,0x4(%esp)
     abe:	e8 3d fc ff ff       	call   700 <peek>
     ac3:	85 c0                	test   %eax,%eax
     ac5:	74 76                	je     b3d <parseblock+0x9d>
    panic("parseblock");
  gettoken(ps, es, 0, 0);
     ac7:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
     ace:	00 
     acf:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
     ad6:	00 
     ad7:	89 74 24 04          	mov    %esi,0x4(%esp)
     adb:	89 1c 24             	mov    %ebx,(%esp)
     ade:	e8 dd fa ff ff       	call   5c0 <gettoken>
  cmd = parseline(ps, es);
     ae3:	89 74 24 04          	mov    %esi,0x4(%esp)
     ae7:	89 1c 24             	mov    %ebx,(%esp)
     aea:	e8 f1 fe ff ff       	call   9e0 <parseline>
  if(!peek(ps, es, ")"))
     aef:	c7 44 24 08 07 14 00 	movl   $0x1407,0x8(%esp)
     af6:	00 
     af7:	89 74 24 04          	mov    %esi,0x4(%esp)
     afb:	89 1c 24             	mov    %ebx,(%esp)
  struct cmd *cmd;

  if(!peek(ps, es, "("))
    panic("parseblock");
  gettoken(ps, es, 0, 0);
  cmd = parseline(ps, es);
     afe:	89 c7                	mov    %eax,%edi
  if(!peek(ps, es, ")"))
     b00:	e8 fb fb ff ff       	call   700 <peek>
     b05:	85 c0                	test   %eax,%eax
     b07:	74 40                	je     b49 <parseblock+0xa9>
    panic("syntax - missing )");
  gettoken(ps, es, 0, 0);
     b09:	89 74 24 04          	mov    %esi,0x4(%esp)
     b0d:	89 1c 24             	mov    %ebx,(%esp)
     b10:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
     b17:	00 
     b18:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
     b1f:	00 
     b20:	e8 9b fa ff ff       	call   5c0 <gettoken>
  cmd = parseredirs(cmd, ps, es);
     b25:	89 74 24 08          	mov    %esi,0x8(%esp)
     b29:	89 5c 24 04          	mov    %ebx,0x4(%esp)
     b2d:	89 3c 24             	mov    %edi,(%esp)
     b30:	e8 2b fc ff ff       	call   760 <parseredirs>
  return cmd;
}
     b35:	83 c4 1c             	add    $0x1c,%esp
     b38:	5b                   	pop    %ebx
     b39:	5e                   	pop    %esi
     b3a:	5f                   	pop    %edi
     b3b:	5d                   	pop    %ebp
     b3c:	c3                   	ret    
parseblock(char **ps, char *es)
{
  struct cmd *cmd;

  if(!peek(ps, es, "("))
    panic("parseblock");
     b3d:	c7 04 24 eb 13 00 00 	movl   $0x13eb,(%esp)
     b44:	e8 d7 f6 ff ff       	call   220 <panic>
  gettoken(ps, es, 0, 0);
  cmd = parseline(ps, es);
  if(!peek(ps, es, ")"))
    panic("syntax - missing )");
     b49:	c7 04 24 f6 13 00 00 	movl   $0x13f6,(%esp)
     b50:	e8 cb f6 ff ff       	call   220 <panic>
     b55:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     b59:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000b60 <nulterminate>:
}

// NUL-terminate all the counted strings.
struct cmd*
nulterminate(struct cmd *cmd)
{
     b60:	55                   	push   %ebp
     b61:	89 e5                	mov    %esp,%ebp
     b63:	53                   	push   %ebx
     b64:	83 ec 14             	sub    $0x14,%esp
     b67:	8b 5d 08             	mov    0x8(%ebp),%ebx
  struct execcmd *ecmd;
  struct listcmd *lcmd;
  struct pipecmd *pcmd;
  struct redircmd *rcmd;

  if(cmd == 0)
     b6a:	85 db                	test   %ebx,%ebx
     b6c:	0f 84 8e 00 00 00    	je     c00 <nulterminate+0xa0>
    return 0;

  switch(cmd->type){
     b72:	83 3b 05             	cmpl   $0x5,(%ebx)
     b75:	77 49                	ja     bc0 <nulterminate+0x60>
     b77:	8b 03                	mov    (%ebx),%eax
     b79:	ff 24 85 48 14 00 00 	jmp    *0x1448(,%eax,4)
    nulterminate(pcmd->right);
    break;

  case LIST:
    lcmd = (struct listcmd*)cmd;
    nulterminate(lcmd->left);
     b80:	8b 43 04             	mov    0x4(%ebx),%eax
     b83:	89 04 24             	mov    %eax,(%esp)
     b86:	e8 d5 ff ff ff       	call   b60 <nulterminate>
    nulterminate(lcmd->right);
     b8b:	8b 43 08             	mov    0x8(%ebx),%eax
     b8e:	89 04 24             	mov    %eax,(%esp)
     b91:	e8 ca ff ff ff       	call   b60 <nulterminate>
    break;
     b96:	89 d8                	mov    %ebx,%eax
    bcmd = (struct backcmd*)cmd;
    nulterminate(bcmd->cmd);
    break;
  }
  return cmd;
}
     b98:	83 c4 14             	add    $0x14,%esp
     b9b:	5b                   	pop    %ebx
     b9c:	5d                   	pop    %ebp
     b9d:	c3                   	ret    
     b9e:	66 90                	xchg   %ax,%ax
    return 0;

  switch(cmd->type){
  case EXEC:
    ecmd = (struct execcmd*)cmd;
    for(i=0; ecmd->argv[i]; i++)
     ba0:	8b 4b 04             	mov    0x4(%ebx),%ecx
     ba3:	89 d8                	mov    %ebx,%eax
     ba5:	85 c9                	test   %ecx,%ecx
     ba7:	74 17                	je     bc0 <nulterminate+0x60>
     ba9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      *ecmd->eargv[i] = 0;
     bb0:	8b 50 2c             	mov    0x2c(%eax),%edx
     bb3:	83 c0 04             	add    $0x4,%eax
     bb6:	c6 02 00             	movb   $0x0,(%edx)
    return 0;

  switch(cmd->type){
  case EXEC:
    ecmd = (struct execcmd*)cmd;
    for(i=0; ecmd->argv[i]; i++)
     bb9:	8b 50 04             	mov    0x4(%eax),%edx
     bbc:	85 d2                	test   %edx,%edx
     bbe:	75 f0                	jne    bb0 <nulterminate+0x50>
    bcmd = (struct backcmd*)cmd;
    nulterminate(bcmd->cmd);
    break;
  }
  return cmd;
}
     bc0:	83 c4 14             	add    $0x14,%esp
  struct redircmd *rcmd;

  if(cmd == 0)
    return 0;

  switch(cmd->type){
     bc3:	89 d8                	mov    %ebx,%eax
    bcmd = (struct backcmd*)cmd;
    nulterminate(bcmd->cmd);
    break;
  }
  return cmd;
}
     bc5:	5b                   	pop    %ebx
     bc6:	5d                   	pop    %ebp
     bc7:	c3                   	ret    
    nulterminate(lcmd->right);
    break;

  case BACK:
    bcmd = (struct backcmd*)cmd;
    nulterminate(bcmd->cmd);
     bc8:	8b 43 04             	mov    0x4(%ebx),%eax
     bcb:	89 04 24             	mov    %eax,(%esp)
     bce:	e8 8d ff ff ff       	call   b60 <nulterminate>
    break;
  }
  return cmd;
}
     bd3:	83 c4 14             	add    $0x14,%esp
    break;

  case BACK:
    bcmd = (struct backcmd*)cmd;
    nulterminate(bcmd->cmd);
    break;
     bd6:	89 d8                	mov    %ebx,%eax
  }
  return cmd;
}
     bd8:	5b                   	pop    %ebx
     bd9:	5d                   	pop    %ebp
     bda:	c3                   	ret    
     bdb:	90                   	nop
     bdc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      *ecmd->eargv[i] = 0;
    break;

  case REDIR:
    rcmd = (struct redircmd*)cmd;
    nulterminate(rcmd->cmd);
     be0:	8b 43 04             	mov    0x4(%ebx),%eax
     be3:	89 04 24             	mov    %eax,(%esp)
     be6:	e8 75 ff ff ff       	call   b60 <nulterminate>
    *rcmd->efile = 0;
     beb:	8b 43 0c             	mov    0xc(%ebx),%eax
     bee:	c6 00 00             	movb   $0x0,(%eax)
    bcmd = (struct backcmd*)cmd;
    nulterminate(bcmd->cmd);
    break;
  }
  return cmd;
}
     bf1:	83 c4 14             	add    $0x14,%esp

  case REDIR:
    rcmd = (struct redircmd*)cmd;
    nulterminate(rcmd->cmd);
    *rcmd->efile = 0;
    break;
     bf4:	89 d8                	mov    %ebx,%eax
    bcmd = (struct backcmd*)cmd;
    nulterminate(bcmd->cmd);
    break;
  }
  return cmd;
}
     bf6:	5b                   	pop    %ebx
     bf7:	5d                   	pop    %ebp
     bf8:	c3                   	ret    
     bf9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  struct listcmd *lcmd;
  struct pipecmd *pcmd;
  struct redircmd *rcmd;

  if(cmd == 0)
    return 0;
     c00:	31 c0                	xor    %eax,%eax
     c02:	eb 94                	jmp    b98 <nulterminate+0x38>
     c04:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     c0a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00000c10 <parsecmd>:
struct cmd *parseexec(char**, char*);
struct cmd *nulterminate(struct cmd*);

struct cmd*
parsecmd(char *s)
{
     c10:	55                   	push   %ebp
     c11:	89 e5                	mov    %esp,%ebp
     c13:	56                   	push   %esi
     c14:	53                   	push   %ebx
     c15:	83 ec 10             	sub    $0x10,%esp
  char *es;
  struct cmd *cmd;

  es = s + strlen(s);
     c18:	8b 5d 08             	mov    0x8(%ebp),%ebx
     c1b:	89 1c 24             	mov    %ebx,(%esp)
     c1e:	e8 ed 00 00 00       	call   d10 <strlen>
     c23:	01 c3                	add    %eax,%ebx
  //printf(1,"%s\n",s);
  cmd = parseline(&s, es);
     c25:	8d 45 08             	lea    0x8(%ebp),%eax
     c28:	89 5c 24 04          	mov    %ebx,0x4(%esp)
     c2c:	89 04 24             	mov    %eax,(%esp)
     c2f:	e8 ac fd ff ff       	call   9e0 <parseline>
  peek(&s, es, "");
     c34:	c7 44 24 08 95 13 00 	movl   $0x1395,0x8(%esp)
     c3b:	00 
     c3c:	89 5c 24 04          	mov    %ebx,0x4(%esp)
  char *es;
  struct cmd *cmd;

  es = s + strlen(s);
  //printf(1,"%s\n",s);
  cmd = parseline(&s, es);
     c40:	89 c6                	mov    %eax,%esi
  peek(&s, es, "");
     c42:	8d 45 08             	lea    0x8(%ebp),%eax
     c45:	89 04 24             	mov    %eax,(%esp)
     c48:	e8 b3 fa ff ff       	call   700 <peek>
  if(s != es){
     c4d:	8b 45 08             	mov    0x8(%ebp),%eax
     c50:	39 d8                	cmp    %ebx,%eax
     c52:	75 11                	jne    c65 <parsecmd+0x55>
    printf(2, "leftovers: %s\n", s);
    panic("syntax");
  }
  nulterminate(cmd);
     c54:	89 34 24             	mov    %esi,(%esp)
     c57:	e8 04 ff ff ff       	call   b60 <nulterminate>
  return cmd;
}
     c5c:	83 c4 10             	add    $0x10,%esp
     c5f:	89 f0                	mov    %esi,%eax
     c61:	5b                   	pop    %ebx
     c62:	5e                   	pop    %esi
     c63:	5d                   	pop    %ebp
     c64:	c3                   	ret    
  es = s + strlen(s);
  //printf(1,"%s\n",s);
  cmd = parseline(&s, es);
  peek(&s, es, "");
  if(s != es){
    printf(2, "leftovers: %s\n", s);
     c65:	89 44 24 08          	mov    %eax,0x8(%esp)
     c69:	c7 44 24 04 09 14 00 	movl   $0x1409,0x4(%esp)
     c70:	00 
     c71:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
     c78:	e8 83 03 00 00       	call   1000 <printf>
    panic("syntax");
     c7d:	c7 04 24 cd 13 00 00 	movl   $0x13cd,(%esp)
     c84:	e8 97 f5 ff ff       	call   220 <panic>
     c89:	66 90                	xchg   %ax,%ax
     c8b:	66 90                	xchg   %ax,%ax
     c8d:	66 90                	xchg   %ax,%ax
     c8f:	90                   	nop

00000c90 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, char *t)
{
     c90:	55                   	push   %ebp
     c91:	89 e5                	mov    %esp,%ebp
     c93:	8b 45 08             	mov    0x8(%ebp),%eax
     c96:	8b 4d 0c             	mov    0xc(%ebp),%ecx
     c99:	53                   	push   %ebx
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
     c9a:	89 c2                	mov    %eax,%edx
     c9c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     ca0:	83 c1 01             	add    $0x1,%ecx
     ca3:	0f b6 59 ff          	movzbl -0x1(%ecx),%ebx
     ca7:	83 c2 01             	add    $0x1,%edx
     caa:	84 db                	test   %bl,%bl
     cac:	88 5a ff             	mov    %bl,-0x1(%edx)
     caf:	75 ef                	jne    ca0 <strcpy+0x10>
    ;
  return os;
}
     cb1:	5b                   	pop    %ebx
     cb2:	5d                   	pop    %ebp
     cb3:	c3                   	ret    
     cb4:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     cba:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00000cc0 <strcmp>:

int
strcmp(const char *p, const char *q)
{
     cc0:	55                   	push   %ebp
     cc1:	89 e5                	mov    %esp,%ebp
     cc3:	8b 55 08             	mov    0x8(%ebp),%edx
     cc6:	53                   	push   %ebx
     cc7:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
     cca:	0f b6 02             	movzbl (%edx),%eax
     ccd:	84 c0                	test   %al,%al
     ccf:	74 2d                	je     cfe <strcmp+0x3e>
     cd1:	0f b6 19             	movzbl (%ecx),%ebx
     cd4:	38 d8                	cmp    %bl,%al
     cd6:	74 0e                	je     ce6 <strcmp+0x26>
     cd8:	eb 2b                	jmp    d05 <strcmp+0x45>
     cda:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     ce0:	38 c8                	cmp    %cl,%al
     ce2:	75 15                	jne    cf9 <strcmp+0x39>
    p++, q++;
     ce4:	89 d9                	mov    %ebx,%ecx
     ce6:	83 c2 01             	add    $0x1,%edx
}

int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
     ce9:	0f b6 02             	movzbl (%edx),%eax
    p++, q++;
     cec:	8d 59 01             	lea    0x1(%ecx),%ebx
}

int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
     cef:	0f b6 49 01          	movzbl 0x1(%ecx),%ecx
     cf3:	84 c0                	test   %al,%al
     cf5:	75 e9                	jne    ce0 <strcmp+0x20>
     cf7:	31 c0                	xor    %eax,%eax
    p++, q++;
  return (uchar)*p - (uchar)*q;
     cf9:	29 c8                	sub    %ecx,%eax
}
     cfb:	5b                   	pop    %ebx
     cfc:	5d                   	pop    %ebp
     cfd:	c3                   	ret    
     cfe:	0f b6 09             	movzbl (%ecx),%ecx
}

int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
     d01:	31 c0                	xor    %eax,%eax
     d03:	eb f4                	jmp    cf9 <strcmp+0x39>
     d05:	0f b6 cb             	movzbl %bl,%ecx
     d08:	eb ef                	jmp    cf9 <strcmp+0x39>
     d0a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000d10 <strlen>:
  return (uchar)*p - (uchar)*q;
}

uint
strlen(char *s)
{
     d10:	55                   	push   %ebp
     d11:	89 e5                	mov    %esp,%ebp
     d13:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  for(n = 0; s[n]; n++)
     d16:	80 39 00             	cmpb   $0x0,(%ecx)
     d19:	74 12                	je     d2d <strlen+0x1d>
     d1b:	31 d2                	xor    %edx,%edx
     d1d:	8d 76 00             	lea    0x0(%esi),%esi
     d20:	83 c2 01             	add    $0x1,%edx
     d23:	80 3c 11 00          	cmpb   $0x0,(%ecx,%edx,1)
     d27:	89 d0                	mov    %edx,%eax
     d29:	75 f5                	jne    d20 <strlen+0x10>
    ;
  return n;
}
     d2b:	5d                   	pop    %ebp
     d2c:	c3                   	ret    
uint
strlen(char *s)
{
  int n;

  for(n = 0; s[n]; n++)
     d2d:	31 c0                	xor    %eax,%eax
    ;
  return n;
}
     d2f:	5d                   	pop    %ebp
     d30:	c3                   	ret    
     d31:	eb 0d                	jmp    d40 <memset>
     d33:	90                   	nop
     d34:	90                   	nop
     d35:	90                   	nop
     d36:	90                   	nop
     d37:	90                   	nop
     d38:	90                   	nop
     d39:	90                   	nop
     d3a:	90                   	nop
     d3b:	90                   	nop
     d3c:	90                   	nop
     d3d:	90                   	nop
     d3e:	90                   	nop
     d3f:	90                   	nop

00000d40 <memset>:

void*
memset(void *dst, int c, uint n)
{
     d40:	55                   	push   %ebp
     d41:	89 e5                	mov    %esp,%ebp
     d43:	8b 55 08             	mov    0x8(%ebp),%edx
     d46:	57                   	push   %edi
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
     d47:	8b 4d 10             	mov    0x10(%ebp),%ecx
     d4a:	8b 45 0c             	mov    0xc(%ebp),%eax
     d4d:	89 d7                	mov    %edx,%edi
     d4f:	fc                   	cld    
     d50:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
     d52:	89 d0                	mov    %edx,%eax
     d54:	5f                   	pop    %edi
     d55:	5d                   	pop    %ebp
     d56:	c3                   	ret    
     d57:	89 f6                	mov    %esi,%esi
     d59:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000d60 <strchr>:

char*
strchr(const char *s, char c)
{
     d60:	55                   	push   %ebp
     d61:	89 e5                	mov    %esp,%ebp
     d63:	8b 45 08             	mov    0x8(%ebp),%eax
     d66:	53                   	push   %ebx
     d67:	8b 55 0c             	mov    0xc(%ebp),%edx
  for(; *s; s++)
     d6a:	0f b6 18             	movzbl (%eax),%ebx
     d6d:	84 db                	test   %bl,%bl
     d6f:	74 1d                	je     d8e <strchr+0x2e>
    if(*s == c)
     d71:	38 d3                	cmp    %dl,%bl
     d73:	89 d1                	mov    %edx,%ecx
     d75:	75 0d                	jne    d84 <strchr+0x24>
     d77:	eb 17                	jmp    d90 <strchr+0x30>
     d79:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     d80:	38 ca                	cmp    %cl,%dl
     d82:	74 0c                	je     d90 <strchr+0x30>
}

char*
strchr(const char *s, char c)
{
  for(; *s; s++)
     d84:	83 c0 01             	add    $0x1,%eax
     d87:	0f b6 10             	movzbl (%eax),%edx
     d8a:	84 d2                	test   %dl,%dl
     d8c:	75 f2                	jne    d80 <strchr+0x20>
    if(*s == c)
      return (char*)s;
  return 0;
     d8e:	31 c0                	xor    %eax,%eax
}
     d90:	5b                   	pop    %ebx
     d91:	5d                   	pop    %ebp
     d92:	c3                   	ret    
     d93:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     d99:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000da0 <gets>:

char*
gets(char *buf, int max)
{
     da0:	55                   	push   %ebp
     da1:	89 e5                	mov    %esp,%ebp
     da3:	57                   	push   %edi
     da4:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
     da5:	31 f6                	xor    %esi,%esi
  return 0;
}

char*
gets(char *buf, int max)
{
     da7:	53                   	push   %ebx
     da8:	83 ec 2c             	sub    $0x2c,%esp
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
     dab:	8d 7d e7             	lea    -0x19(%ebp),%edi
gets(char *buf, int max)
{
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
     dae:	eb 31                	jmp    de1 <gets+0x41>
    cc = read(0, &c, 1);
     db0:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
     db7:	00 
     db8:	89 7c 24 04          	mov    %edi,0x4(%esp)
     dbc:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     dc3:	e8 02 01 00 00       	call   eca <read>
    if(cc < 1)
     dc8:	85 c0                	test   %eax,%eax
     dca:	7e 1d                	jle    de9 <gets+0x49>
      break;
    buf[i++] = c;
     dcc:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
gets(char *buf, int max)
{
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
     dd0:	89 de                	mov    %ebx,%esi
    cc = read(0, &c, 1);
    if(cc < 1)
      break;
    buf[i++] = c;
     dd2:	8b 55 08             	mov    0x8(%ebp),%edx
    if(c == '\n' || c == '\r')
     dd5:	3c 0d                	cmp    $0xd,%al

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
    if(cc < 1)
      break;
    buf[i++] = c;
     dd7:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
     ddb:	74 0c                	je     de9 <gets+0x49>
     ddd:	3c 0a                	cmp    $0xa,%al
     ddf:	74 08                	je     de9 <gets+0x49>
gets(char *buf, int max)
{
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
     de1:	8d 5e 01             	lea    0x1(%esi),%ebx
     de4:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
     de7:	7c c7                	jl     db0 <gets+0x10>
      break;
    buf[i++] = c;
    if(c == '\n' || c == '\r')
      break;
  }
  buf[i] = '\0';
     de9:	8b 45 08             	mov    0x8(%ebp),%eax
     dec:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
     df0:	83 c4 2c             	add    $0x2c,%esp
     df3:	5b                   	pop    %ebx
     df4:	5e                   	pop    %esi
     df5:	5f                   	pop    %edi
     df6:	5d                   	pop    %ebp
     df7:	c3                   	ret    
     df8:	90                   	nop
     df9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000e00 <stat>:

int
stat(char *n, struct stat *st)
{
     e00:	55                   	push   %ebp
     e01:	89 e5                	mov    %esp,%ebp
     e03:	56                   	push   %esi
     e04:	53                   	push   %ebx
     e05:	83 ec 10             	sub    $0x10,%esp
  int fd;
  int r;

  fd = open(n, O_RDONLY);
     e08:	8b 45 08             	mov    0x8(%ebp),%eax
     e0b:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
     e12:	00 
     e13:	89 04 24             	mov    %eax,(%esp)
     e16:	e8 d7 00 00 00       	call   ef2 <open>
  if(fd < 0)
     e1b:	85 c0                	test   %eax,%eax
stat(char *n, struct stat *st)
{
  int fd;
  int r;

  fd = open(n, O_RDONLY);
     e1d:	89 c3                	mov    %eax,%ebx
  if(fd < 0)
     e1f:	78 27                	js     e48 <stat+0x48>
    return -1;
  r = fstat(fd, st);
     e21:	8b 45 0c             	mov    0xc(%ebp),%eax
     e24:	89 1c 24             	mov    %ebx,(%esp)
     e27:	89 44 24 04          	mov    %eax,0x4(%esp)
     e2b:	e8 da 00 00 00       	call   f0a <fstat>
  close(fd);
     e30:	89 1c 24             	mov    %ebx,(%esp)
  int r;

  fd = open(n, O_RDONLY);
  if(fd < 0)
    return -1;
  r = fstat(fd, st);
     e33:	89 c6                	mov    %eax,%esi
  close(fd);
     e35:	e8 a0 00 00 00       	call   eda <close>
  return r;
     e3a:	89 f0                	mov    %esi,%eax
}
     e3c:	83 c4 10             	add    $0x10,%esp
     e3f:	5b                   	pop    %ebx
     e40:	5e                   	pop    %esi
     e41:	5d                   	pop    %ebp
     e42:	c3                   	ret    
     e43:	90                   	nop
     e44:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  int fd;
  int r;

  fd = open(n, O_RDONLY);
  if(fd < 0)
    return -1;
     e48:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
     e4d:	eb ed                	jmp    e3c <stat+0x3c>
     e4f:	90                   	nop

00000e50 <atoi>:
  return r;
}

int
atoi(const char *s)
{
     e50:	55                   	push   %ebp
     e51:	89 e5                	mov    %esp,%ebp
     e53:	8b 4d 08             	mov    0x8(%ebp),%ecx
     e56:	53                   	push   %ebx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
     e57:	0f be 11             	movsbl (%ecx),%edx
     e5a:	8d 42 d0             	lea    -0x30(%edx),%eax
     e5d:	3c 09                	cmp    $0x9,%al
int
atoi(const char *s)
{
  int n;

  n = 0;
     e5f:	b8 00 00 00 00       	mov    $0x0,%eax
  while('0' <= *s && *s <= '9')
     e64:	77 17                	ja     e7d <atoi+0x2d>
     e66:	66 90                	xchg   %ax,%ax
    n = n*10 + *s++ - '0';
     e68:	83 c1 01             	add    $0x1,%ecx
     e6b:	8d 04 80             	lea    (%eax,%eax,4),%eax
     e6e:	8d 44 42 d0          	lea    -0x30(%edx,%eax,2),%eax
atoi(const char *s)
{
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
     e72:	0f be 11             	movsbl (%ecx),%edx
     e75:	8d 5a d0             	lea    -0x30(%edx),%ebx
     e78:	80 fb 09             	cmp    $0x9,%bl
     e7b:	76 eb                	jbe    e68 <atoi+0x18>
    n = n*10 + *s++ - '0';
  return n;
}
     e7d:	5b                   	pop    %ebx
     e7e:	5d                   	pop    %ebp
     e7f:	c3                   	ret    

00000e80 <memmove>:

void*
memmove(void *vdst, void *vsrc, int n)
{
     e80:	55                   	push   %ebp
  char *dst, *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
     e81:	31 d2                	xor    %edx,%edx
  return n;
}

void*
memmove(void *vdst, void *vsrc, int n)
{
     e83:	89 e5                	mov    %esp,%ebp
     e85:	56                   	push   %esi
     e86:	8b 45 08             	mov    0x8(%ebp),%eax
     e89:	53                   	push   %ebx
     e8a:	8b 5d 10             	mov    0x10(%ebp),%ebx
     e8d:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst, *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
     e90:	85 db                	test   %ebx,%ebx
     e92:	7e 12                	jle    ea6 <memmove+0x26>
     e94:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    *dst++ = *src++;
     e98:	0f b6 0c 16          	movzbl (%esi,%edx,1),%ecx
     e9c:	88 0c 10             	mov    %cl,(%eax,%edx,1)
     e9f:	83 c2 01             	add    $0x1,%edx
{
  char *dst, *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
     ea2:	39 da                	cmp    %ebx,%edx
     ea4:	75 f2                	jne    e98 <memmove+0x18>
    *dst++ = *src++;
  return vdst;
}
     ea6:	5b                   	pop    %ebx
     ea7:	5e                   	pop    %esi
     ea8:	5d                   	pop    %ebp
     ea9:	c3                   	ret    

00000eaa <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
     eaa:	b8 01 00 00 00       	mov    $0x1,%eax
     eaf:	cd 40                	int    $0x40
     eb1:	c3                   	ret    

00000eb2 <exit>:
SYSCALL(exit)
     eb2:	b8 02 00 00 00       	mov    $0x2,%eax
     eb7:	cd 40                	int    $0x40
     eb9:	c3                   	ret    

00000eba <wait>:
SYSCALL(wait)
     eba:	b8 03 00 00 00       	mov    $0x3,%eax
     ebf:	cd 40                	int    $0x40
     ec1:	c3                   	ret    

00000ec2 <pipe>:
SYSCALL(pipe)
     ec2:	b8 04 00 00 00       	mov    $0x4,%eax
     ec7:	cd 40                	int    $0x40
     ec9:	c3                   	ret    

00000eca <read>:
SYSCALL(read)
     eca:	b8 05 00 00 00       	mov    $0x5,%eax
     ecf:	cd 40                	int    $0x40
     ed1:	c3                   	ret    

00000ed2 <write>:
SYSCALL(write)
     ed2:	b8 10 00 00 00       	mov    $0x10,%eax
     ed7:	cd 40                	int    $0x40
     ed9:	c3                   	ret    

00000eda <close>:
SYSCALL(close)
     eda:	b8 15 00 00 00       	mov    $0x15,%eax
     edf:	cd 40                	int    $0x40
     ee1:	c3                   	ret    

00000ee2 <kill>:
SYSCALL(kill)
     ee2:	b8 06 00 00 00       	mov    $0x6,%eax
     ee7:	cd 40                	int    $0x40
     ee9:	c3                   	ret    

00000eea <exec>:
SYSCALL(exec)
     eea:	b8 07 00 00 00       	mov    $0x7,%eax
     eef:	cd 40                	int    $0x40
     ef1:	c3                   	ret    

00000ef2 <open>:
SYSCALL(open)
     ef2:	b8 0f 00 00 00       	mov    $0xf,%eax
     ef7:	cd 40                	int    $0x40
     ef9:	c3                   	ret    

00000efa <mknod>:
SYSCALL(mknod)
     efa:	b8 11 00 00 00       	mov    $0x11,%eax
     eff:	cd 40                	int    $0x40
     f01:	c3                   	ret    

00000f02 <unlink>:
SYSCALL(unlink)
     f02:	b8 12 00 00 00       	mov    $0x12,%eax
     f07:	cd 40                	int    $0x40
     f09:	c3                   	ret    

00000f0a <fstat>:
SYSCALL(fstat)
     f0a:	b8 08 00 00 00       	mov    $0x8,%eax
     f0f:	cd 40                	int    $0x40
     f11:	c3                   	ret    

00000f12 <link>:
SYSCALL(link)
     f12:	b8 13 00 00 00       	mov    $0x13,%eax
     f17:	cd 40                	int    $0x40
     f19:	c3                   	ret    

00000f1a <mkdir>:
SYSCALL(mkdir)
     f1a:	b8 14 00 00 00       	mov    $0x14,%eax
     f1f:	cd 40                	int    $0x40
     f21:	c3                   	ret    

00000f22 <chdir>:
SYSCALL(chdir)
     f22:	b8 09 00 00 00       	mov    $0x9,%eax
     f27:	cd 40                	int    $0x40
     f29:	c3                   	ret    

00000f2a <dup>:
SYSCALL(dup)
     f2a:	b8 0a 00 00 00       	mov    $0xa,%eax
     f2f:	cd 40                	int    $0x40
     f31:	c3                   	ret    

00000f32 <getpid>:
SYSCALL(getpid)
     f32:	b8 0b 00 00 00       	mov    $0xb,%eax
     f37:	cd 40                	int    $0x40
     f39:	c3                   	ret    

00000f3a <sbrk>:
SYSCALL(sbrk)
     f3a:	b8 0c 00 00 00       	mov    $0xc,%eax
     f3f:	cd 40                	int    $0x40
     f41:	c3                   	ret    

00000f42 <sleep>:
SYSCALL(sleep)
     f42:	b8 0d 00 00 00       	mov    $0xd,%eax
     f47:	cd 40                	int    $0x40
     f49:	c3                   	ret    

00000f4a <uptime>:
SYSCALL(uptime)
     f4a:	b8 0e 00 00 00       	mov    $0xe,%eax
     f4f:	cd 40                	int    $0x40
     f51:	c3                   	ret    
     f52:	66 90                	xchg   %ax,%ax
     f54:	66 90                	xchg   %ax,%ax
     f56:	66 90                	xchg   %ax,%ax
     f58:	66 90                	xchg   %ax,%ax
     f5a:	66 90                	xchg   %ax,%ax
     f5c:	66 90                	xchg   %ax,%ax
     f5e:	66 90                	xchg   %ax,%ax

00000f60 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
     f60:	55                   	push   %ebp
     f61:	89 e5                	mov    %esp,%ebp
     f63:	57                   	push   %edi
     f64:	56                   	push   %esi
     f65:	89 c6                	mov    %eax,%esi
     f67:	53                   	push   %ebx
     f68:	83 ec 4c             	sub    $0x4c,%esp
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
     f6b:	8b 5d 08             	mov    0x8(%ebp),%ebx
     f6e:	85 db                	test   %ebx,%ebx
     f70:	74 09                	je     f7b <printint+0x1b>
     f72:	89 d0                	mov    %edx,%eax
     f74:	c1 e8 1f             	shr    $0x1f,%eax
     f77:	84 c0                	test   %al,%al
     f79:	75 75                	jne    ff0 <printint+0x90>
    neg = 1;
    x = -xx;
  } else {
    x = xx;
     f7b:	89 d0                	mov    %edx,%eax
  static char digits[] = "0123456789ABCDEF";
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
     f7d:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
     f84:	89 75 c0             	mov    %esi,-0x40(%ebp)
    x = -xx;
  } else {
    x = xx;
  }

  i = 0;
     f87:	31 ff                	xor    %edi,%edi
     f89:	89 ce                	mov    %ecx,%esi
     f8b:	8d 5d d7             	lea    -0x29(%ebp),%ebx
     f8e:	eb 02                	jmp    f92 <printint+0x32>
  do{
    buf[i++] = digits[x % base];
     f90:	89 cf                	mov    %ecx,%edi
     f92:	31 d2                	xor    %edx,%edx
     f94:	f7 f6                	div    %esi
     f96:	8d 4f 01             	lea    0x1(%edi),%ecx
     f99:	0f b6 92 67 14 00 00 	movzbl 0x1467(%edx),%edx
  }while((x /= base) != 0);
     fa0:	85 c0                	test   %eax,%eax
    x = xx;
  }

  i = 0;
  do{
    buf[i++] = digits[x % base];
     fa2:	88 14 0b             	mov    %dl,(%ebx,%ecx,1)
  }while((x /= base) != 0);
     fa5:	75 e9                	jne    f90 <printint+0x30>
  if(neg)
     fa7:	8b 55 c4             	mov    -0x3c(%ebp),%edx
    x = xx;
  }

  i = 0;
  do{
    buf[i++] = digits[x % base];
     faa:	89 c8                	mov    %ecx,%eax
     fac:	8b 75 c0             	mov    -0x40(%ebp),%esi
  }while((x /= base) != 0);
  if(neg)
     faf:	85 d2                	test   %edx,%edx
     fb1:	74 08                	je     fbb <printint+0x5b>
    buf[i++] = '-';
     fb3:	8d 4f 02             	lea    0x2(%edi),%ecx
     fb6:	c6 44 05 d8 2d       	movb   $0x2d,-0x28(%ebp,%eax,1)

  while(--i >= 0)
     fbb:	8d 79 ff             	lea    -0x1(%ecx),%edi
     fbe:	66 90                	xchg   %ax,%ax
     fc0:	0f b6 44 3d d8       	movzbl -0x28(%ebp,%edi,1),%eax
     fc5:	83 ef 01             	sub    $0x1,%edi
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
     fc8:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
     fcf:	00 
     fd0:	89 5c 24 04          	mov    %ebx,0x4(%esp)
     fd4:	89 34 24             	mov    %esi,(%esp)
     fd7:	88 45 d7             	mov    %al,-0x29(%ebp)
     fda:	e8 f3 fe ff ff       	call   ed2 <write>
    buf[i++] = digits[x % base];
  }while((x /= base) != 0);
  if(neg)
    buf[i++] = '-';

  while(--i >= 0)
     fdf:	83 ff ff             	cmp    $0xffffffff,%edi
     fe2:	75 dc                	jne    fc0 <printint+0x60>
    putc(fd, buf[i]);
}
     fe4:	83 c4 4c             	add    $0x4c,%esp
     fe7:	5b                   	pop    %ebx
     fe8:	5e                   	pop    %esi
     fe9:	5f                   	pop    %edi
     fea:	5d                   	pop    %ebp
     feb:	c3                   	ret    
     fec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
     ff0:	89 d0                	mov    %edx,%eax
     ff2:	f7 d8                	neg    %eax
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
     ff4:	c7 45 c4 01 00 00 00 	movl   $0x1,-0x3c(%ebp)
     ffb:	eb 87                	jmp    f84 <printint+0x24>
     ffd:	8d 76 00             	lea    0x0(%esi),%esi

00001000 <printf>:
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
    1000:	55                   	push   %ebp
    1001:	89 e5                	mov    %esp,%ebp
    1003:	57                   	push   %edi
  char *s;
  int c, i, state;
  uint *ap;

  state = 0;
    1004:	31 ff                	xor    %edi,%edi
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
    1006:	56                   	push   %esi
    1007:	53                   	push   %ebx
    1008:	83 ec 3c             	sub    $0x3c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    100b:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  char *s;
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
    100e:	8d 45 10             	lea    0x10(%ebp),%eax
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
    1011:	8b 75 08             	mov    0x8(%ebp),%esi
  char *s;
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
    1014:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  for(i = 0; fmt[i]; i++){
    1017:	0f b6 13             	movzbl (%ebx),%edx
    101a:	83 c3 01             	add    $0x1,%ebx
    101d:	84 d2                	test   %dl,%dl
    101f:	75 39                	jne    105a <printf+0x5a>
    1021:	e9 c2 00 00 00       	jmp    10e8 <printf+0xe8>
    1026:	66 90                	xchg   %ax,%ax
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
    1028:	83 fa 25             	cmp    $0x25,%edx
    102b:	0f 84 bf 00 00 00    	je     10f0 <printf+0xf0>
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    1031:	8d 45 e2             	lea    -0x1e(%ebp),%eax
    1034:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    103b:	00 
    103c:	89 44 24 04          	mov    %eax,0x4(%esp)
    1040:	89 34 24             	mov    %esi,(%esp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
      } else {
        putc(fd, c);
    1043:	88 55 e2             	mov    %dl,-0x1e(%ebp)
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    1046:	e8 87 fe ff ff       	call   ed2 <write>
    104b:	83 c3 01             	add    $0x1,%ebx
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    104e:	0f b6 53 ff          	movzbl -0x1(%ebx),%edx
    1052:	84 d2                	test   %dl,%dl
    1054:	0f 84 8e 00 00 00    	je     10e8 <printf+0xe8>
    c = fmt[i] & 0xff;
    if(state == 0){
    105a:	85 ff                	test   %edi,%edi
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    c = fmt[i] & 0xff;
    105c:	0f be c2             	movsbl %dl,%eax
    if(state == 0){
    105f:	74 c7                	je     1028 <printf+0x28>
      if(c == '%'){
        state = '%';
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
    1061:	83 ff 25             	cmp    $0x25,%edi
    1064:	75 e5                	jne    104b <printf+0x4b>
      if(c == 'd'){
    1066:	83 fa 64             	cmp    $0x64,%edx
    1069:	0f 84 31 01 00 00    	je     11a0 <printf+0x1a0>
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
    106f:	25 f7 00 00 00       	and    $0xf7,%eax
    1074:	83 f8 70             	cmp    $0x70,%eax
    1077:	0f 84 83 00 00 00    	je     1100 <printf+0x100>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
    107d:	83 fa 73             	cmp    $0x73,%edx
    1080:	0f 84 a2 00 00 00    	je     1128 <printf+0x128>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
    1086:	83 fa 63             	cmp    $0x63,%edx
    1089:	0f 84 35 01 00 00    	je     11c4 <printf+0x1c4>
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
    108f:	83 fa 25             	cmp    $0x25,%edx
    1092:	0f 84 e0 00 00 00    	je     1178 <printf+0x178>
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    1098:	8d 45 e6             	lea    -0x1a(%ebp),%eax
    109b:	83 c3 01             	add    $0x1,%ebx
    109e:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    10a5:	00 
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
    10a6:	31 ff                	xor    %edi,%edi
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    10a8:	89 44 24 04          	mov    %eax,0x4(%esp)
    10ac:	89 34 24             	mov    %esi,(%esp)
    10af:	89 55 d0             	mov    %edx,-0x30(%ebp)
    10b2:	c6 45 e6 25          	movb   $0x25,-0x1a(%ebp)
    10b6:	e8 17 fe ff ff       	call   ed2 <write>
      } else if(c == '%'){
        putc(fd, c);
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
    10bb:	8b 55 d0             	mov    -0x30(%ebp),%edx
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    10be:	8d 45 e7             	lea    -0x19(%ebp),%eax
    10c1:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    10c8:	00 
    10c9:	89 44 24 04          	mov    %eax,0x4(%esp)
    10cd:	89 34 24             	mov    %esi,(%esp)
      } else if(c == '%'){
        putc(fd, c);
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
    10d0:	88 55 e7             	mov    %dl,-0x19(%ebp)
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    10d3:	e8 fa fd ff ff       	call   ed2 <write>
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    10d8:	0f b6 53 ff          	movzbl -0x1(%ebx),%edx
    10dc:	84 d2                	test   %dl,%dl
    10de:	0f 85 76 ff ff ff    	jne    105a <printf+0x5a>
    10e4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        putc(fd, c);
      }
      state = 0;
    }
  }
}
    10e8:	83 c4 3c             	add    $0x3c,%esp
    10eb:	5b                   	pop    %ebx
    10ec:	5e                   	pop    %esi
    10ed:	5f                   	pop    %edi
    10ee:	5d                   	pop    %ebp
    10ef:	c3                   	ret    
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
    10f0:	bf 25 00 00 00       	mov    $0x25,%edi
    10f5:	e9 51 ff ff ff       	jmp    104b <printf+0x4b>
    10fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
        printint(fd, *ap, 16, 0);
    1100:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    1103:	b9 10 00 00 00       	mov    $0x10,%ecx
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
    1108:	31 ff                	xor    %edi,%edi
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
        printint(fd, *ap, 16, 0);
    110a:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1111:	8b 10                	mov    (%eax),%edx
    1113:	89 f0                	mov    %esi,%eax
    1115:	e8 46 fe ff ff       	call   f60 <printint>
        ap++;
    111a:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
    111e:	e9 28 ff ff ff       	jmp    104b <printf+0x4b>
    1123:	90                   	nop
    1124:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      } else if(c == 's'){
        s = (char*)*ap;
    1128:	8b 45 d4             	mov    -0x2c(%ebp),%eax
        ap++;
    112b:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
        ap++;
      } else if(c == 'x' || c == 'p'){
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
        s = (char*)*ap;
    112f:	8b 38                	mov    (%eax),%edi
        ap++;
        if(s == 0)
          s = "(null)";
    1131:	b8 60 14 00 00       	mov    $0x1460,%eax
    1136:	85 ff                	test   %edi,%edi
    1138:	0f 44 f8             	cmove  %eax,%edi
        while(*s != 0){
    113b:	0f b6 07             	movzbl (%edi),%eax
    113e:	84 c0                	test   %al,%al
    1140:	74 2a                	je     116c <printf+0x16c>
    1142:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    1148:	88 45 e3             	mov    %al,-0x1d(%ebp)
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    114b:	8d 45 e3             	lea    -0x1d(%ebp),%eax
        ap++;
        if(s == 0)
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
    114e:	83 c7 01             	add    $0x1,%edi
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    1151:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    1158:	00 
    1159:	89 44 24 04          	mov    %eax,0x4(%esp)
    115d:	89 34 24             	mov    %esi,(%esp)
    1160:	e8 6d fd ff ff       	call   ed2 <write>
      } else if(c == 's'){
        s = (char*)*ap;
        ap++;
        if(s == 0)
          s = "(null)";
        while(*s != 0){
    1165:	0f b6 07             	movzbl (%edi),%eax
    1168:	84 c0                	test   %al,%al
    116a:	75 dc                	jne    1148 <printf+0x148>
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
    116c:	31 ff                	xor    %edi,%edi
    116e:	e9 d8 fe ff ff       	jmp    104b <printf+0x4b>
    1173:	90                   	nop
    1174:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    1178:	8d 45 e5             	lea    -0x1b(%ebp),%eax
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
    117b:	31 ff                	xor    %edi,%edi
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    117d:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    1184:	00 
    1185:	89 44 24 04          	mov    %eax,0x4(%esp)
    1189:	89 34 24             	mov    %esi,(%esp)
    118c:	c6 45 e5 25          	movb   $0x25,-0x1b(%ebp)
    1190:	e8 3d fd ff ff       	call   ed2 <write>
    1195:	e9 b1 fe ff ff       	jmp    104b <printf+0x4b>
    119a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
    11a0:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    11a3:	b9 0a 00 00 00       	mov    $0xa,%ecx
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
    11a8:	66 31 ff             	xor    %di,%di
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
    11ab:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    11b2:	8b 10                	mov    (%eax),%edx
    11b4:	89 f0                	mov    %esi,%eax
    11b6:	e8 a5 fd ff ff       	call   f60 <printint>
        ap++;
    11bb:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
    11bf:	e9 87 fe ff ff       	jmp    104b <printf+0x4b>
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
        putc(fd, *ap);
    11c4:	8b 45 d4             	mov    -0x2c(%ebp),%eax
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
    11c7:	31 ff                	xor    %edi,%edi
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
        putc(fd, *ap);
    11c9:	8b 00                	mov    (%eax),%eax
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    11cb:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    11d2:	00 
    11d3:	89 34 24             	mov    %esi,(%esp)
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
        putc(fd, *ap);
    11d6:	88 45 e4             	mov    %al,-0x1c(%ebp)
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    11d9:	8d 45 e4             	lea    -0x1c(%ebp),%eax
    11dc:	89 44 24 04          	mov    %eax,0x4(%esp)
    11e0:	e8 ed fc ff ff       	call   ed2 <write>
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
        putc(fd, *ap);
        ap++;
    11e5:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
    11e9:	e9 5d fe ff ff       	jmp    104b <printf+0x4b>
    11ee:	66 90                	xchg   %ax,%ax

000011f0 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
    11f0:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    11f1:	a1 a4 1a 00 00       	mov    0x1aa4,%eax
static Header base;
static Header *freep;

void
free(void *ap)
{
    11f6:	89 e5                	mov    %esp,%ebp
    11f8:	57                   	push   %edi
    11f9:	56                   	push   %esi
    11fa:	53                   	push   %ebx
    11fb:	8b 5d 08             	mov    0x8(%ebp),%ebx
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    11fe:	8b 08                	mov    (%eax),%ecx
void
free(void *ap)
{
  Header *bp, *p;

  bp = (Header*)ap - 1;
    1200:	8d 53 f8             	lea    -0x8(%ebx),%edx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    1203:	39 d0                	cmp    %edx,%eax
    1205:	72 11                	jb     1218 <free+0x28>
    1207:	90                   	nop
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    1208:	39 c8                	cmp    %ecx,%eax
    120a:	72 04                	jb     1210 <free+0x20>
    120c:	39 ca                	cmp    %ecx,%edx
    120e:	72 10                	jb     1220 <free+0x30>
    1210:	89 c8                	mov    %ecx,%eax
free(void *ap)
{
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    1212:	39 d0                	cmp    %edx,%eax
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    1214:	8b 08                	mov    (%eax),%ecx
free(void *ap)
{
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    1216:	73 f0                	jae    1208 <free+0x18>
    1218:	39 ca                	cmp    %ecx,%edx
    121a:	72 04                	jb     1220 <free+0x30>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    121c:	39 c8                	cmp    %ecx,%eax
    121e:	72 f0                	jb     1210 <free+0x20>
      break;
  if(bp + bp->s.size == p->s.ptr){
    1220:	8b 73 fc             	mov    -0x4(%ebx),%esi
    1223:	8d 3c f2             	lea    (%edx,%esi,8),%edi
    1226:	39 cf                	cmp    %ecx,%edi
    1228:	74 1e                	je     1248 <free+0x58>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
    122a:	89 4b f8             	mov    %ecx,-0x8(%ebx)
  if(p + p->s.size == bp){
    122d:	8b 48 04             	mov    0x4(%eax),%ecx
    1230:	8d 34 c8             	lea    (%eax,%ecx,8),%esi
    1233:	39 f2                	cmp    %esi,%edx
    1235:	74 28                	je     125f <free+0x6f>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
    1237:	89 10                	mov    %edx,(%eax)
  freep = p;
    1239:	a3 a4 1a 00 00       	mov    %eax,0x1aa4
}
    123e:	5b                   	pop    %ebx
    123f:	5e                   	pop    %esi
    1240:	5f                   	pop    %edi
    1241:	5d                   	pop    %ebp
    1242:	c3                   	ret    
    1243:	90                   	nop
    1244:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
      break;
  if(bp + bp->s.size == p->s.ptr){
    bp->s.size += p->s.ptr->s.size;
    1248:	03 71 04             	add    0x4(%ecx),%esi
    124b:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
    124e:	8b 08                	mov    (%eax),%ecx
    1250:	8b 09                	mov    (%ecx),%ecx
    1252:	89 4b f8             	mov    %ecx,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
    1255:	8b 48 04             	mov    0x4(%eax),%ecx
    1258:	8d 34 c8             	lea    (%eax,%ecx,8),%esi
    125b:	39 f2                	cmp    %esi,%edx
    125d:	75 d8                	jne    1237 <free+0x47>
    p->s.size += bp->s.size;
    125f:	03 4b fc             	add    -0x4(%ebx),%ecx
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
  freep = p;
    1262:	a3 a4 1a 00 00       	mov    %eax,0x1aa4
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
    p->s.size += bp->s.size;
    1267:	89 48 04             	mov    %ecx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
    126a:	8b 53 f8             	mov    -0x8(%ebx),%edx
    126d:	89 10                	mov    %edx,(%eax)
  } else
    p->s.ptr = bp;
  freep = p;
}
    126f:	5b                   	pop    %ebx
    1270:	5e                   	pop    %esi
    1271:	5f                   	pop    %edi
    1272:	5d                   	pop    %ebp
    1273:	c3                   	ret    
    1274:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    127a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00001280 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
    1280:	55                   	push   %ebp
    1281:	89 e5                	mov    %esp,%ebp
    1283:	57                   	push   %edi
    1284:	56                   	push   %esi
    1285:	53                   	push   %ebx
    1286:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    1289:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
    128c:	8b 1d a4 1a 00 00    	mov    0x1aa4,%ebx
malloc(uint nbytes)
{
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    1292:	8d 48 07             	lea    0x7(%eax),%ecx
    1295:	c1 e9 03             	shr    $0x3,%ecx
  if((prevp = freep) == 0){
    1298:	85 db                	test   %ebx,%ebx
malloc(uint nbytes)
{
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    129a:	8d 71 01             	lea    0x1(%ecx),%esi
  if((prevp = freep) == 0){
    129d:	0f 84 9b 00 00 00    	je     133e <malloc+0xbe>
    12a3:	8b 13                	mov    (%ebx),%edx
    12a5:	8b 7a 04             	mov    0x4(%edx),%edi
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
    12a8:	39 fe                	cmp    %edi,%esi
    12aa:	76 64                	jbe    1310 <malloc+0x90>
    12ac:	8d 04 f5 00 00 00 00 	lea    0x0(,%esi,8),%eax
morecore(uint nu)
{
  char *p;
  Header *hp;

  if(nu < 4096)
    12b3:	bb 00 80 00 00       	mov    $0x8000,%ebx
    12b8:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    12bb:	eb 0e                	jmp    12cb <malloc+0x4b>
    12bd:	8d 76 00             	lea    0x0(%esi),%esi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
  if((prevp = freep) == 0){
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    12c0:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
    12c2:	8b 78 04             	mov    0x4(%eax),%edi
    12c5:	39 fe                	cmp    %edi,%esi
    12c7:	76 4f                	jbe    1318 <malloc+0x98>
    12c9:	89 c2                	mov    %eax,%edx
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
    12cb:	3b 15 a4 1a 00 00    	cmp    0x1aa4,%edx
    12d1:	75 ed                	jne    12c0 <malloc+0x40>
morecore(uint nu)
{
  char *p;
  Header *hp;

  if(nu < 4096)
    12d3:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    12d6:	81 fe 00 10 00 00    	cmp    $0x1000,%esi
    12dc:	bf 00 10 00 00       	mov    $0x1000,%edi
    12e1:	0f 43 fe             	cmovae %esi,%edi
    12e4:	0f 42 c3             	cmovb  %ebx,%eax
    nu = 4096;
  p = sbrk(nu * sizeof(Header));
    12e7:	89 04 24             	mov    %eax,(%esp)
    12ea:	e8 4b fc ff ff       	call   f3a <sbrk>
  if(p == (char*)-1)
    12ef:	83 f8 ff             	cmp    $0xffffffff,%eax
    12f2:	74 18                	je     130c <malloc+0x8c>
    return 0;
  hp = (Header*)p;
  hp->s.size = nu;
    12f4:	89 78 04             	mov    %edi,0x4(%eax)
  free((void*)(hp + 1));
    12f7:	83 c0 08             	add    $0x8,%eax
    12fa:	89 04 24             	mov    %eax,(%esp)
    12fd:	e8 ee fe ff ff       	call   11f0 <free>
  return freep;
    1302:	8b 15 a4 1a 00 00    	mov    0x1aa4,%edx
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
      if((p = morecore(nunits)) == 0)
    1308:	85 d2                	test   %edx,%edx
    130a:	75 b4                	jne    12c0 <malloc+0x40>
        return 0;
    130c:	31 c0                	xor    %eax,%eax
    130e:	eb 20                	jmp    1330 <malloc+0xb0>
  if((prevp = freep) == 0){
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
    1310:	89 d0                	mov    %edx,%eax
    1312:	89 da                	mov    %ebx,%edx
    1314:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      if(p->s.size == nunits)
    1318:	39 fe                	cmp    %edi,%esi
    131a:	74 1c                	je     1338 <malloc+0xb8>
        prevp->s.ptr = p->s.ptr;
      else {
        p->s.size -= nunits;
    131c:	29 f7                	sub    %esi,%edi
    131e:	89 78 04             	mov    %edi,0x4(%eax)
        p += p->s.size;
    1321:	8d 04 f8             	lea    (%eax,%edi,8),%eax
        p->s.size = nunits;
    1324:	89 70 04             	mov    %esi,0x4(%eax)
      }
      freep = prevp;
    1327:	89 15 a4 1a 00 00    	mov    %edx,0x1aa4
      return (void*)(p + 1);
    132d:	83 c0 08             	add    $0x8,%eax
    }
    if(p == freep)
      if((p = morecore(nunits)) == 0)
        return 0;
  }
}
    1330:	83 c4 1c             	add    $0x1c,%esp
    1333:	5b                   	pop    %ebx
    1334:	5e                   	pop    %esi
    1335:	5f                   	pop    %edi
    1336:	5d                   	pop    %ebp
    1337:	c3                   	ret    
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
      if(p->s.size == nunits)
        prevp->s.ptr = p->s.ptr;
    1338:	8b 08                	mov    (%eax),%ecx
    133a:	89 0a                	mov    %ecx,(%edx)
    133c:	eb e9                	jmp    1327 <malloc+0xa7>
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
  if((prevp = freep) == 0){
    base.s.ptr = freep = prevp = &base;
    133e:	c7 05 a4 1a 00 00 a8 	movl   $0x1aa8,0x1aa4
    1345:	1a 00 00 
    base.s.size = 0;
    1348:	ba a8 1a 00 00       	mov    $0x1aa8,%edx
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
  if((prevp = freep) == 0){
    base.s.ptr = freep = prevp = &base;
    134d:	c7 05 a8 1a 00 00 a8 	movl   $0x1aa8,0x1aa8
    1354:	1a 00 00 
    base.s.size = 0;
    1357:	c7 05 ac 1a 00 00 00 	movl   $0x0,0x1aac
    135e:	00 00 00 
    1361:	e9 46 ff ff ff       	jmp    12ac <malloc+0x2c>
