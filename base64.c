#include "user.h"
#include "fcntl.h"
#include "types.h"
#include "stat.h"
#include "fs.h"

char b64[] = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";

char *strcat(char *dest, unsigned char *src)
{
    int i,j;
    for (i = 0; dest[i] != '\0'; i++)
        ;
    for (j = 0; src[j] != '\0'; j++)
        dest[i+j] = src[j];
    dest[i+j] = '\0';
    return dest;
}


void decodeblock(unsigned char in[], char *clrstr) {
  unsigned char out[4];
  out[0] = in[0] << 2 | in[1] >> 4;
  out[1] = in[1] << 4 | in[2] >> 2;
  out[2] = in[2] << 6 | in[3] >> 0;
  out[3] = '\0';
  strcat(clrstr, out);
}

void b64_decode(char *b64src, char *clrdst) {
  int c, phase, i;
  unsigned char in[4];
  char *p;

  clrdst[0] = '\0';
  phase = 0; i=0;
  while(b64src[i]) {
    c = (int) b64src[i];
    if(c == '=') {
      decodeblock(in, clrdst); 
      break;
    }
    p = strchr(b64, c);
    if(p) {
      in[phase] = p - b64;
      phase = (phase + 1) % 4;
      if(phase == 0) {
        decodeblock(in, clrdst);
        in[0]=in[1]=in[2]=in[3]=0;
      }
    }
    i++;
  }
}

void encodeblock( unsigned char in[], char b64str[], int len ) {
    unsigned char out[5];
    out[0] = b64[ in[0] >> 2 ];
    out[1] = b64[ ((in[0] & 0x03) << 4) | ((in[1] & 0xf0) >> 4) ];
    out[2] = (unsigned char) (len > 1 ? b64[ ((in[1] & 0x0f) << 2) |
             ((in[2] & 0xc0) >> 6) ] : '=');
    out[3] = (unsigned char) (len > 2 ? b64[ in[2] & 0x3f ] : '=');
    out[4] = '\0';
    strcat(b64str, out);
}

void b64_encode(char *clrstr, char *b64dst) {
  unsigned char in[3];
  int i, len = 0;
  int j = 0;

  b64dst[0] = '\0';
  while(clrstr[j]) {
    len = 0;
    for(i=0; i<3; i++) {
     in[i] = (unsigned char) clrstr[j];
     if(clrstr[j]) {
        len++; j++;
      }
      else in[i] = 0;
    }
    if( len ) {
      encodeblock( in, b64dst, len );
    }
  }
}


int main(int argc, char **argv) {
  char myb64[1024];
  int fop;

  if(strcmp(argv[1],"-d")==0){
	if ((fop = open(argv[2],O_RDONLY)) < 0){
        printf(1,"Source File %s Does Not Exist\n", argv[2]);
        close(fop);
        exit();
  }
  int n;
  char temp[1024];
  while ((n = read(fop,temp,sizeof(temp))) > 0);
  b64_decode(temp, myb64);
  printf(1,"%s\n",myb64);
  close(fop);
  exit();
  }

  else if ((fop = open(argv[1],O_RDONLY)) < 0){
        printf(1,"Source File %s Does Not Exist\n", argv[1]);
    	close(fop);
	exit();
  }
  int n;
  char temp[1024];
  while ((n = read(fop,temp,sizeof(temp))) > 0);
  b64_encode(temp, myb64);
  printf(1,"%s\n",myb64);
  close(fop);
  exit();
}
