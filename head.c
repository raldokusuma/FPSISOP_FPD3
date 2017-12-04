#include "user.h"
#include "fcntl.h"

void head(char *source){
    int fsour;

    if ((fsour = open(source,O_RDONLY)) < 0) {
        printf(1,"Source File %s Does Not Exist\n", source);
        return;
    }

    int n;
    char temp[1];
    int i = 0;
    printf(1,"head :\n");
    while ((n = read(fsour,temp,sizeof(temp))) > 0){
        if (i >= 10) return;

        if (temp[0] == '\n') i++;

        printf(1,"%c",temp[0]);
    }

    return;
}

int main (int argc, char **argv){
    head(argv[1]);
    exit();
}
