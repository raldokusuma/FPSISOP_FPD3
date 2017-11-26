#include<stdio.h>

int main(int argc, char **argv)
{
	FILE *f1;
	FILE *fr;

	if ( fopen(argv[1],"r") == NULL) {
		f1=fopen(argv[1],"w+");
		fclose(f1);
	}

	
	return 0;
}