#include <stdio.h>
#include "system.h"
#include "altera_avalon_performance_counter.h"

int main()
{
	int i, resp =0;

	PERF_RESET(PERFORMANCE_COUNTER_0_BASE);
	PERF_START_MEASURING(PERFORMANCE_COUNTER_0_BASE);

	PERF_BEGIN(PERFORMANCE_COUNTER_0_BASE, 1);

	int M = 63;
	int m = 63;

	for(i=1;i<=m;i++){
		resp += M;
	}

	PERF_END(PERFORMANCE_COUNTER_0_BASE, 1);
	PERF_STOP_MEASURING(PERFORMANCE_COUNTER_0_BASE);

	printf("Resultado da multiplicacao %i x %i = %i\n", m, M, resp);

	perf_print_formatted_report((void*) PERFORMANCE_COUNTER_0_BASE, ALT_CPU_FREQ, 1, "TOTAL");

	return 0;
}
