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

int absolute_path(char *dir){
    char *next = {""};
    next = strcat(next,dir);
    next = strcat(next,"/");
    next = strcat(next,".pwd");

    int next_pwd;

    next_pwd = open(next,O_CREATE | O_RDWR);
    write(next_pwd,dir,strlen(dir));
    write(next_pwd,"/",1);
    close(next_pwd);
    return 1;
}

void cp(char *source, char *destination){
    int fsource;
    int fcdest;
    int fdest;

    if ((fsource = open(source,O_RDONLY)) < 0){
        printf(1,"Source File %s Does Not Exist\n", source);
        return;
    }

    if ((fcdest = open(destination,O_RDONLY)) < 0){
        fdest = open(destination, O_CREATE | O_RDWR);
        int n;
        char temp[1024];
        while ((n = read(fsource,temp,sizeof(temp))) > 0)
            write(fdest,temp,n);
        close(fdest);
    }
    close(fcdest);

    return;
}

void cp_all(char *path,char *destination)
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
                if (fmtname(buf)[0] != '.' && st.type == T_FILE){
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
                    cp(tmp1,tmp);
                }
            }
            break;
    }
    close(fd);
}

void cp_recursion(char *path,char *destination)
{
    char buf[512], *p;
    int fd;
    struct dirent de;
    struct stat st;

    char *dummy = malloc(1024);
    memset(dummy,0,1024);
    strcat(dummy,path);
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
                if (fmtname(buf)[0] != '.' && st.type == T_FILE){
                    printf(1,"File Type\n");
                    char *name = fmtname(buf);

                    char *next_source = malloc(100);
                    memset(next_source,0,100);
                    strcat(next_source,dummy);
                    next_source[strlen(next_source)-1]='\0';
                    strcat(next_source,name);

                    char *next_destination = malloc(100);
                    memset(next_destination,0,100);
                    strcat(next_destination,destination);
                    strcat(next_destination,name);

                    printf(1,"path %s\n",next_source);
                    printf(1,"dest %s\n",next_destination);

                    cp(next_source,next_destination);
                }
                if (fmtname(buf)[0] != '.' && st.type == T_DIR){
                    printf(1,"Directory Type\n");
                    char *name = fmtname(buf);

                    char *next_source = malloc(100);
                    memset(next_source,0,100);
                    strcat(next_source,dummy);
                    next_source[strlen(next_source)-1]='\0';
                    strcat(next_source,name);
                    strcat(next_source,"/");

                    char *next_destination = malloc(100);
                    memset(next_destination,0,100);
                    strcat(next_destination,destination);
                    strcat(next_destination,name);
                    mkdir(next_destination);
                    absolute_path(next_destination);
                    strcat(next_destination,"/");

                    printf(1,"path %s\n",next_source);
                    printf(1,"dest %s\n",next_destination);

                    cp_recursion(next_source,next_destination);
                }
            }
            break;
    }
    close(fd);
}

int main (int argc, char **argv) {
    int all = 0;

    if (argv[1][0] == '-' && argv[1][1] == 'h'){
        printf(1,"cp [File] [File]\n");
        printf(1,"cp /[Folder]/* /[Folder]/ to copy all files\n");
        printf(1,"cp -R /[Folder]/ /[Folder]/ to recursively copy all files\n");
        exit();
    }

    if (argv[1][strlen(argv[1])-1] == '*') {
        all = 1;
        argv[1][strlen(argv[1])-1] = '\0';
    }

    struct stat st1;
    struct stat st2;

    int s1;
    int s2;

    if (argv[1][0] == '-' && argv[1][1] == 'R'){
        s1 = open(argv[2],O_RDONLY);
        s2 = open(argv[3],O_RDONLY);
        fstat(s1, &st1);
        fstat(s2, &st2);
        if (st1.type == T_DIR && st2.type == T_DIR){
            cp_recursion(argv[2],argv[3]);
            exit();
        }
    } else {
        s1 = open(argv[1],O_RDONLY);
        s2 = open(argv[2],O_RDONLY);
        fstat(s1, &st1);
        fstat(s2, &st2);
        if (st1.type == T_DIR && st2.type == T_DIR && all){
            cp_all(argv[1],argv[2]);
            exit();
        }
        else if (st1.type == T_FILE){
            cp(argv[1],argv[2]);
            exit();
        }
	}

    printf(1,"Try 'cp -h' for more information.\n");
	exit();
}
