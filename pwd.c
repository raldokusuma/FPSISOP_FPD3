#include <stdio.h>
#include <unistd.h>

int main() {
   char cwd[1024];
   if (getcwd(cwd, sizeof(cwd)) != NULL)
       printf("%s\n", cwd);
   else
       printf("ERROR!");
   return 0;
}