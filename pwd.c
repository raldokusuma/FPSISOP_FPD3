#include "types.h"
#include "stat.h"
#include "user.h"
#include "fcntl.h"

int main (int argc,char **argv){
    int current_pwd;
    current_pwd = open(".pwd",O_RDONLY);
    char temp[1];
    int n;
    while ((n = read(current_pwd,temp,sizeof(temp))) > 0){
            printf(1,"%c",temp[0]);
    }
    printf(1,"\n");
    close(current_pwd);

    exit();
}
