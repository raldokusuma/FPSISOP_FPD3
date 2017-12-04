#include "types.h"
#include "stat.h"
#include "user.h"
#include "fcntl.h"

char *
strcat(char *dest, const char *src)
{
    int i,j;
    for (i = 0; dest[i] != '\0'; i++);
    for (j = 0; src[j] != '\0'; j++)dest[i+j] = src[j];
    dest[i+j] = '\0';
    return dest;
}

int relative_path(char *dir){
    int current_pwd;
    int next_pwd;

    if ((current_pwd = open(".pwd",O_RDONLY)) > 0){
        char *next = {""};
        char dummy[1024];

        read(current_pwd,dummy,sizeof(dummy));
        close(current_pwd);
        //printf(1,"dummy : %s\n",dummy);
        next = strcat(next,dummy);
        next = strcat(next,dir);
        next = strcat(next,"/");
        next = strcat(next,".pwd");

        current_pwd = open(".pwd",O_RDONLY);
        next_pwd = open(next, O_CREATE | O_RDWR);
        int n;
        char temp[1];
        while ((n = read(current_pwd,temp,sizeof(temp))) > 0){
            write(next_pwd,temp,n);
          //  printf(1,"%c",temp[0]);
        }
        //printf(1,"\n");
        //write(next_pwd,"/",1);
        write(next_pwd,dir,strlen(dir));
        write(next_pwd,"/",1);
        close(next_pwd);
    }
    close(current_pwd);
    return 1;
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

int
main(int argc, char *argv[])
{
    int i;

    if(argc < 2){
        printf(2, "Usage: mkdir files...\n");
        exit();
    }

    for(i = 1; i < argc; i++){
        if(mkdir(argv[i]) >= 0){
             if (argv[i][0] == '/') absolute_path(argv[i]);
             else relative_path(argv[i]);
        } else {
            printf(2, "mkdir: %s failed to create\n", argv[i]);
            break;
        }
    }

    exit();
}
