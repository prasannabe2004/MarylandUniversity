#include <stdio.h>


// gcc -fno-stack-protector stack2.c

void func(unsigned char *str)
{
	int a = 1;
	printf("Before buffer overflow a =%d\n", a);
	
	unsigned char buffer[4];
	//strcpy(buffer[4],str);

	printf("address of buffer=%x\n",&buffer[0]);
	printf("address of a=%x\n",&a);

	buffer[8] = str[0];
	buffer[9] = str[1];
	buffer[10] = str[2];
	buffer[11] = str[3];

	printf("address of buffer=%x %x %x %x\n",&buffer[8],&buffer[9],&buffer[10],&buffer[11]);
	printf("buffer = %x %x %x %x\n", buffer[8],buffer[9],buffer[10],buffer[11]);
	printf("%x\n",(int *)buffer[8]);
	printf("After buffer overflow a =%x\n", a);

}

void hack()
{
	printf("you hacked me\n");
}

int hack2 = 7;

int main()
{
	int *ptr = &hack;
	unsigned char str[5];

	printf("ptr = %p\n", ptr);

	str[0] = 0x08;
	str[1] = 0x04;	
	str[2] = 0x85;
	str[3] = 0x17;
	str[4] = 0x00;

	func(str);
	printf("bye\n");

	return 0;
}
