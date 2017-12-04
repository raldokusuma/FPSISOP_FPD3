#include "user.h"
#include "fcntl.h"

int main(int argc, char **argv)
{
	if (argv[1][0] == '-' && argv[1][1] == 'h'){
        printf(1,"touch [File1] [File2] ... to Create Files\n");
        exit();
    }

	int fl;
	int fr;
	int i;
	for (i=1;i<argc;i++){
        if ((fr = open(argv[i], O_RDONLY)) > 0) {
            printf(1,"File %s Sudah Ada\n",argv[i]);
        } else {
            fl = open(argv[i], O_CREATE);
            close(fl);
        }
        close(fr);
	}

	exit();
}

