#include "types.h"
#include "stat.h"
#include "user.h"
#include "fs.h"


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

void rm_r(char *path)
{
    char buf[512], *p;
    int fd;
    struct dirent de;
    struct stat st;

    /*char *dummy = malloc(1024);
    memset(dummy,0,1024);
    strcat(dummy,path);
    strcat(dummy,".");*/

    if((fd = open(path, 0)) < 0){
        printf(2, "rm: cannot open %s\n", path);
        return;
    }

    if(fstat(fd, &st) < 0){
        printf(2, "rm: cannot stat %s\n", path);
        close(fd);
        return;
    }

    switch(st.type){
        case T_FILE:
            if(unlink(path) < 0){
	      printf(2, "rm: %s failed to delete\n", path);
	      break;
	    }
            break;

        case T_DIR:
            if(strlen(path) + 1 + DIRSIZ + 1 > sizeof buf){
                printf(1, "rm: path too long\n");
                break;
            }
            strcpy(buf, path);
            p = buf+strlen(buf);
            *p++ = '/';

	    while(read(fd, &de, sizeof(de)) == sizeof(de)){
                if(de.inum == 0) continue;
                memmove(p, de.name, DIRSIZ);
                p[DIRSIZ] = 0;
                if(stat(buf, &st) < 0){
                    printf(1, "rm: cannot stat %s\n", buf);
                    continue;
                }
		if(fmtname(buf)[0] != '.' && st.type == T_DIR){
			printf(1,"Directory Type\n");
			rm_r(buf);
		}
		else if(unlink(buf) < 0){
		      printf(2, "rm: %s failed to delete\n", buf);
		      break;
	    	}
	    }
	    break;
    }
    close(fd);
    unlink(path);
}

int main(int argc, char *argv[])
{
  int i;

  if (argv[1][0] == '-' && argv[1][1] == 'h'){
        printf(1,"rm [File] [File]\n");
        printf(1,"rm -r /[Folder]/ /[Folder]/ to recursively remove all files\n");
        exit();
    }

  if(argc < 2){
    printf(2, "Usage: rm files...\n");
    exit();
  }

  //struct stat st;
  if (argv[1][0] == '-' && argv[1][1] == 'r'){
	//if (st.type == T_DIR){
		rm_r(argv[2]);
		exit();
	//}
  }

  else{
	  for(i = 1; i < argc; i++){
	    if(unlink(argv[i]) < 0){
	      printf(2, "rm: %s failed to delete\n", argv[i]);
	      break;
	    }
  	}
  }

  printf(1,"Try 'cp -h' for more information.\n");
  
  exit();
}
