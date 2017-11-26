#include <stdio.h>
#include <unistd.h>
#include <dirent.h>
 
int main(int argc, char **argv)
{
    struct dirent *de;
    char loc[1200];
    char fpath[1200];
    
 	
 	if(argv[1]==NULL){
 		DIR *dr = opendir(".");
 		if (dr == NULL)  
	    {
	        printf("Maap direktori gak ada" );
	        return 0;
	    }

	    while ((de = readdir(dr)) != NULL) printf("%s ", de->d_name); 
    	closedir(dr);    
    	
	}
	else{
		if(getcwd(loc, sizeof(loc)) != NULL){
			sprintf(fpath,"%s/%s",loc,argv[1]);
		}
		DIR *dr = opendir(fpath);
		while ((de = readdir(dr)) != NULL) {
			printf("%s ", de->d_name); 
		}
    	closedir(dr);
	}

	printf("\n");
	return 0;
 }
    