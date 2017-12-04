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

    int pwd;
    char *tmp = {""};
    strcat(tmp,path);
    tmp[strlen(tmp)-1]='\0';
    strcat(tmp,".pwd");
    pwd = open(tmp,O_RDONLY);

    char dummy[1024];
    read(pwd,dummy,sizeof(dummy));
    dummy[strlen(dummy)] = '.';
    dummy[strlen(dummy)+1] = '\0';
    printf(1,"alamat : %s\n",dummy);

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
                    //cp(tmp1,tmp);
                }
            }
            break;
    }
    close(pwd);
    close(fd);
}

void cp_recursion(char *path,char *destination)
{
    ///*
    char buf[512], *p;
    int fd;
    struct dirent de;
    struct stat st;
    //*/

    int pwd;
    char *tmp = {""};
    /*
    if (path[strlen(dummy)-1] != '/'){
        path[strlen(dummy)] = '/';
        path[strlen(dummy)+1] = '\0';
    }
    */
    strcat(tmp,path);
    strcat(tmp,".pwd");
    pwd = open(tmp,O_RDONLY);

    char *dummy = malloc(1024);
    memset(dummy,0,1024);
    read(pwd,dummy,sizeof(dummy));
    dummy[strlen(dummy)] = '.';
    dummy[strlen(dummy)+1] = '\0';
    //printf(1,"alamat : %s\n",dummy);

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
                if (fmtname(buf)[0] != '.' && st.type == T_DIR){
                    char *name = fmtname(buf);

                    char *tmp1 = malloc(100);
                    memset(tmp1,0,100);
                    strcat(tmp1,dummy);
                    tmp1[strlen(tmp1)-1]='\0';
                    strcat(tmp1,name);
                    strcat(tmp1,"/");

                    char *tmp = malloc(100);
                    memset(tmp,0,100);
                    strcat(tmp,destination);
                    strcat(tmp,name);
                    mkdir(tmp);
                    absolute_path(tmp);
                    strcat(tmp,"/");

                    printf(1,"path %s\n",tmp1);
                    printf(1,"dest %s\n",tmp);

                    cp_recursion(tmp1,tmp);
                }
            }
            break;
    }
    close(pwd);
    close(fd);
}

int main (int argc, char **argv) {
    int all = 0;
    int i;

    if (argv[1][0] == '-' && argv[1][1] == 'h'){
        printf(1,"cp [File] [File]\n");
        printf(1,"cp /[Folder]/* /[Folder]/ to copy all files\n");
        printf(1,"cp -R /[Folder]/ /[Folder]/ to recursively copy all files\n");
        exit();
    }

    for (i=0;i<strlen(argv[1])-1;i++){
        if (argv[1][i] == '*'){
            printf(1,"Misplaced *\n");
            exit();
        }
    }

    if (argv[1][strlen(argv[1])-1] == '*') all = 1;

    if (argv[1][0] == '-' && argv[1][1] == 'R') cp_recursion(argv[2],argv[3]);
	else if (all) cp_all(argv[1],argv[2]);
	else cp(argv[1],argv[2]);

	exit();
}
