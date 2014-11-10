#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>

#define BSIZE 16
#define OVERSIZE 8 /* overflow buf2 by OVERSIZE bytes */

int main(void) 
{
    u_long diff;
    char *buf0 = (char*)malloc(BSIZE);		// create two buffers
    //char *buf01 = (char*)malloc(BSIZE);      // create two buffers
    char *buf1 = (char*)malloc(BSIZE);

    diff = (u_long)buf1 - (u_long)buf0;	// difference between locations
    printf("Initial values:  ");
    printf("buf0=%p, buf1=%p, b_diff=0x%x bytes\n", buf0, buf1, diff);

    memset(buf0, 'A', BSIZE-1);
    buf0[BSIZE-1] = '\0';
    printf("Before overflow: buf0=%s\n", buf0);

    memset(buf1, 'B', BSIZE-1);
    buf1[BSIZE-1] = '\0';
    printf("Before overflow: buf1=%s\n", buf1);


/* Heap Over flow by 11 bytes */
    memset(buf0,'C',BSIZE+11);
/* Heap Over flow */


    printf("After overflow:  buf0=%s\n", buf0);
    printf("After overflow:  buf1=%s\n", buf1);
}