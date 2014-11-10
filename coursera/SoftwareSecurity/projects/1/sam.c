#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <errno.h>
#include <string.h>
#include <sys/types.h>
#include <time.h> 

char greeting[] = "Hello there\n1. Receive wisdom\n2. Add wisdom\nSelection >";
char prompt[] = "Enter some wisdom\n";
char pat[] = "Achievement unlocked!\n";
char secret[] = "secret key";

int infd = 0; /* stdin */
int outfd = 1; /* stdout */

#define DATA_SIZE 128

typedef struct _WisdomList {
  struct  _WisdomList *next;
  char    data[DATA_SIZE];
} WisdomList; 

struct _WisdomList  *head = NULL;

typedef void (*fptr)(void);

void write_secret(void) {
  write(outfd, secret, sizeof(secret));
  return;
}

void pat_on_back(void) {
  write(outfd, pat, sizeof(pat));
  return;
}

void get_wisdom(void) {
  char buf[] = "no wisdom\n";
  if(head == NULL) {
    write(outfd, buf, sizeof(buf)-sizeof(char));
  } else {
    WisdomList  *l = head;
    while(l != NULL) {
      write(outfd, l->data, strlen(l->data));
      write(outfd, "\n", 1);
      l = l->next;
    }
  }
  return;
}

void put_wisdom(void) {
  char  wis[DATA_SIZE] = {0}; 
  int   r;

  r = write(outfd, prompt, sizeof(prompt)-sizeof(char));
  if(r < 0) {
    return;
  }
 
  r = (int)gets(wis); 
  if (r == 0)
    return;

  WisdomList  *l = malloc(sizeof(WisdomList));

  if(l != NULL) {
    memset(l, 0, sizeof(WisdomList));
    strcpy(l->data, wis);
    if(head == NULL) {
      head = l;
    } else {
      WisdomList  *v = head;
      while(v->next != NULL) {
        v = v->next;
      }
      v->next = l;
    }
  }

  return;
}

fptr  ptrs[3] = { NULL, get_wisdom, put_wisdom };

int main(int argc, char *argv[]) {
  printf("Global variables\n");
  printf("greeting     = 0x%x\n", &greeting);
  printf("prompt       = 0x%x\n", &prompt);
  printf("pat          = 0x%x\n", &pat);
  printf("secret       = 0x%x\n", &secret);
  printf("infd         = 0x%x\n", &infd);
  printf("outfd        = 0x%x\n", &outfd);
  printf("head         = 0x%x\n", &head);
  printf("write_secret = 0x%x\n", &write_secret);
  printf("pat_on_back  = 0x%x\n", &pat_on_back);
  printf("get_wisdom   = 0x%x\n", &get_wisdom);
  printf("put_wisdom   = 0x%x\n", &put_wisdom);
  printf("ptrs         = 0x%x\n", &ptrs);

  while(1) {
      char  buf[1024] = {0};
      int r;
      fptr p = pat_on_back;
      printf("Stack variables\n");
      printf("buf          = 0x%x\n", &buf);
      printf("r            = 0x%x\n", &r);
      printf("p            = 0x%x\n", &p);

      r = write(outfd, greeting, sizeof(greeting)-sizeof(char));
      if(r < 0) {
        break;
      }
      r = read(infd, buf, sizeof(buf)-sizeof(char));
      if(r > 0) {
        buf[r] = '\0';
        int s = atoi(buf);
        printf("s            = 0x%x\n", &s);
	// boundary check for s is missing
        fptr tmp = ptrs[s];
        printf("tmp          = 0x%x\n", &tmp);
        tmp();
      } else {
        break;
      }
  }
  
  return 0;
}
