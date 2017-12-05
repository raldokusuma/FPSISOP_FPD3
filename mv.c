#include "user.h"
#include "fcntl.h"
#include "types.h"
#include "stat.h"
#include "fs.h"

char *
strcat(char *dest, const char *src)
{
    int i,j;
    for (i = 0; dest[i] != '\0'; i++)
        ;
    for (j = 0; src[j] != '\0'; j++)
        dest[i+j] = src[j];
    dest[i+j] = '\0';
    return dest;
}

// list every file
char*
fmtname(char *path)
{
    //static char buf[DIRSIZ+1];
    char *p;

    // Find first character after last slash.
    for(p=path+strlen(path); p >= path && *p != '/'; p--);
    p++;

    // Return blank-padded name.
    if(strlen(p) >= DIRSIZ) return p;

    //memmove(buf, p, strlen(p));
    //memset(buf+strlen(p), ' ', DIRSIZ-strlen(p));
    return p;
}

void mv(char *source, char *destination){
    int fsource;
    int fdest;

    if ((fsource = open(source,O_RDONLY)) < 0){
        printf(1,"Source File %s Does Not Exist\n", source);
        return;
    }

    fdest = open(destination, O_CREATE | O_RDWR);
    int n;
    char temp[1024];
    while ((n = read(fsource,temp,sizeof(temp))) > 0)
        write(fdest,temp,n);
    close(fdest);

    if (unlink(source) < 0)printf(1, "rm: %s failed to delete\n", source);

    return;
}

void mv_all(char *path,char *destination)
{
    ///*
    char buf[512], *p;
    int fd;
    struct dirent de;
    struct stat st;
    //*/

    char *dummy = malloc(1024);
    memset(dummy,0,1024);
    strcat(dummy,path);
    //dummy[strlen(dummy)-1] = '\0';
    strcat(dummy,".");

    if((fd = open(dummy, 0)) < 0){
        printf(2, "ls: cannot open %s\n", dummy);
        return;
    }

    if(fstat(fd, &st) < 0){
        printf(2, "ls: cannot stat %s\n", dummy);
        close(fd);
        return;
    }

    switch(st.type){
        case T_FILE:
            printf(1, "%s %d %d %d\n", fmtname(dummy), st.type, st.ino, st.size);
            break;

        case T_DIR:
            if(strlen(dummy) + 1 + DIRSIZ + 1 > sizeof buf){
                printf(1, "ls: path too long\n");
                break;
            }
            strcpy(buf, dummy);
            p = buf+strlen(buf);
            *p++ = '/';

            while(read(fd, &de, sizeof(de)) == sizeof(de)){
                if(de.inum == 0) continue;
                memmove(p, de.name, DIRSIZ);
                p[DIRSIZ] = 0;
                if(stat(buf, &st) < 0){
                    printf(1, "ls: cannot stat %s\n", buf);
                    continue;
                }
                if (fmtname(buf)[0] != '.' ){
                    char *name = fmtname(buf);

                    char *tmp1 = malloc(100);
                    memset(tmp1,0,100);
                    strcat(tmp1,dummy);
                    tmp1[strlen(tmp1)-1]='\0';
                    strcat(tmp1,name);

                    char *tmp = malloc(100);
                    memset(tmp,0,100);
                    strcat(tmp,destination);
                    strcat(tmp,name);
                    mv(tmp1,tmp);
                }
            }
            break;
    }
    close(fd);
}

int main (int argc, char **argv) {
    int all = 0;

    if (argv[1][0] == '-' && argv[1][1] == 'h'){
        printf(1,"mv [File] [File]\n");
        printf(1,"mv /[Folder]/* /[Folder]/ to move all files\n");
        exit();
    }

    if (argv[1][strlen(argv[1])-1] == '*') {
        all = 1;
        argv[1][strlen(argv[1])-1] = '\0';
    }

	struct stat st1;
    struct stat st2;
    int s1,s2;

    s1 = open(argv[1],O_RDONLY);
    s2 = open(argv[2],O_RDONLY);
    fstat(s1, &st1);
    fstat(s2, &st2);
    if (st1.type == T_DIR && st2.type == T_DIR && all){
        mv_all(argv[1],argv[2]);
        exit();
    }
    else if (st1.type == T_FILE){
        mv(argv[1],argv[2]);
        exit();
    }

    printf(1,"Try 'mv -h' for more information.\n");
	exit();
}
