/*
 * #define GO_BASE 0x21000
 * #define PRT_BASE 0x21010
 * #define M_BASE 0x21040
 * #define MULT_BASE 0x21030
 * #define RES_BASE 0x21020
 *
 */

#include <stdio.h>

#define go (int *) 0x21000
#define prt (int *) 0x21010
#define m (int *) 0x21040
#define mult (int *) 0x21030
#define res (int *) 0x21020

int main()
{
  printf("Hello from Nios II!\n");
  *go = 0;
  *prt = 0;
  *m = 10;
  *mult = 10;

  *go = 1;
  //printf("go %i x %i\n", *m, *mult);
  if(*prt == 1){
	  //printf("entrou no if - prt voltou\n");
	  printf("Resultado da multiplicacao %i x %i = %i\n", *m, *mult, *res);
  }

  return 0;
}