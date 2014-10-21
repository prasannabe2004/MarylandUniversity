#include <stdio.h>
#include <string.h>

func(char* arg1)
{
    int auth = 0;
    char buffer[4];
    /* The following strcpy overwirites the auth variable. and makes it invalid.*/
    strcpy(buffer,arg1);
    printf("%d\n",auth);
}

int main()
{
char *mystr = "AuthMe!";
func(mystr);
return 0;
}
