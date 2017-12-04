#include "user.h"
#include "fcntl.h"

int main(int argc, char **argv)
{
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

