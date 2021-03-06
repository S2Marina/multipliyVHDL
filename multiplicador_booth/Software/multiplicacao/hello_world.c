/*
 * #define GO_BASE 0x21000
 * #define PRT_BASE 0x21010
 * #define M_BASE 0x21040
 * #define MULT_BASE 0x21030
 * #define RES_BASE 0x21020
 *
 */

#include <stdio.h>
#include "system.h"
#include "altera_avalon_performance_counter.h"

#define go (int *) 0x21000
#define prt (int *) 0x21010
#define m (int *) 0x21040
#define mult (int *) 0x21030
#define res (int *) 0x21020

int main()
{
  printf("Hello from Nios II!\n");
  PERF_RESET(PERFORMANCE_COUNTER_0_BASE);
  PERF_START_MEASURING(PERFORMANCE_COUNTER_0_BASE);

  PERF_BEGIN(PERFORMANCE_COUNTER_0_BASE, 1);

  *go = 0;
  *prt = 0;
  *m = 63;
  *mult = 63;

  *go = 1;

  PERF_END(PERFORMANCE_COUNTER_0_BASE, 1);
  PERF_STOP_MEASURING(PERFORMANCE_COUNTER_0_BASE);

  while(*prt != 1){
  	  //printf("Esperando...");
    }

  printf("Resultado da multiplicacao %i x %i = %i\n", *m, *mult, *res);

  perf_print_formatted_report((void*) PERFORMANCE_COUNTER_0_BASE, ALT_CPU_FREQ, 1, "TOTAL");

  return 0;
}
