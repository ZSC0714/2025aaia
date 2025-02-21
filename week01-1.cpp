#include <stdio.h>

int main()
{
	int a, b;///整數 a, b
	scanf( "%d%d", &a, &b ); /// 讀入資料(小心 "%d%d" 後面 逗號
    ///兩個%d%d   &   &
	printf("%d" , a + b );
}
