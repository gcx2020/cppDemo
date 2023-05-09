// #include <stdio.h>
// #include "cppTest.hpp" 

// int main()
// {
// 	int a = 1;
// 	int b= 2;
	
// 	printf("a+b=%d\n", add(a, b));
	
// 	return 0;
// }


#include <stdio.h>
#include "cppPack.hpp" 

int main()
{
	int a = 1;
	int b= 2;
	
	//这里调用封装的addPack函数，addPack函数内部就是调用的add函数
	printf("a+b=%d\n", addPack(a, b));
	return 0;
}