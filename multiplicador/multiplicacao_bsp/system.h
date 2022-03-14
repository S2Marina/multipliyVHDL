/*
 * system.h - SOPC Builder system and BSP software package information
 *
 * Machine generated for CPU 'nios' in SOPC Builder design 'MySoc'
 * SOPC Builder design path: C:/Users/1701560011/Documents/booth-main/booth-main/multiplicador/MySoc.sopcinfo
 *
 * Generated: Fri Mar 11 15:49:16 BRT 2022
 */

/*
 * DO NOT MODIFY THIS FILE
 *
 * Changing this file will have subtle consequences
 * which will almost certainly lead to a nonfunctioning
 * system. If you do modify this file, be aware that your
 * changes will be overwritten and lost when this file
 * is generated again.
 *
 * DO NOT MODIFY THIS FILE
 */

/*
 * License Agreement
 *
 * Copyright (c) 2008
 * Altera Corporation, San Jose, California, USA.
 * All rights reserved.
 *
 * Permission is hereby granted, free of charge, to any person obtaining a
 * copy of this software and associated documentation files (the "Software"),
 * to deal in the Software without restriction, including without limitation
 * the rights to use, copy, modify, merge, publish, distribute, sublicense,
 * and/or sell copies of the Software, and to permit persons to whom the
 * Software is furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
 * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
 * DEALINGS IN THE SOFTWARE.
 *
 * This agreement shall be governed in all respects by the laws of the State
 * of California and by the laws of the United States of America.
 */

#ifndef __SYSTEM_H_
#define __SYSTEM_H_

/* Include definitions from linker script generator */
#include "linker.h"


/*
 * CPU configuration
 *
 */

#define ALT_CPU_ARCHITECTURE "altera_nios2_qsys"
#define ALT_CPU_BIG_ENDIAN 0
#define ALT_CPU_BREAK_ADDR 0x20820
#define ALT_CPU_CPU_FREQ 50000000u
#define ALT_CPU_CPU_ID_SIZE 1
#define ALT_CPU_CPU_ID_VALUE 0x00000000
#define ALT_CPU_CPU_IMPLEMENTATION "tiny"
#define ALT_CPU_DATA_ADDR_WIDTH 0x12
#define ALT_CPU_DCACHE_LINE_SIZE 0
#define ALT_CPU_DCACHE_LINE_SIZE_LOG2 0
#define ALT_CPU_DCACHE_SIZE 0
#define ALT_CPU_EXCEPTION_ADDR 0x10020
#define ALT_CPU_FLUSHDA_SUPPORTED
#define ALT_CPU_FREQ 50000000
#define ALT_CPU_HARDWARE_DIVIDE_PRESENT 0
#define ALT_CPU_HARDWARE_MULTIPLY_PRESENT 0
#define ALT_CPU_HARDWARE_MULX_PRESENT 0
#define ALT_CPU_HAS_DEBUG_CORE 1
#define ALT_CPU_HAS_DEBUG_STUB
#define ALT_CPU_HAS_JMPI_INSTRUCTION
#define ALT_CPU_ICACHE_LINE_SIZE 0
#define ALT_CPU_ICACHE_LINE_SIZE_LOG2 0
#define ALT_CPU_ICACHE_SIZE 0
#define ALT_CPU_INST_ADDR_WIDTH 0x12
#define ALT_CPU_NAME "nios"
#define ALT_CPU_RESET_ADDR 0x10000


/*
 * CPU configuration (with legacy prefix - don't use these anymore)
 *
 */

#define NIOS2_BIG_ENDIAN 0
#define NIOS2_BREAK_ADDR 0x20820
#define NIOS2_CPU_FREQ 50000000u
#define NIOS2_CPU_ID_SIZE 1
#define NIOS2_CPU_ID_VALUE 0x00000000
#define NIOS2_CPU_IMPLEMENTATION "tiny"
#define NIOS2_DATA_ADDR_WIDTH 0x12
#define NIOS2_DCACHE_LINE_SIZE 0
#define NIOS2_DCACHE_LINE_SIZE_LOG2 0
#define NIOS2_DCACHE_SIZE 0
#define NIOS2_EXCEPTION_ADDR 0x10020
#define NIOS2_FLUSHDA_SUPPORTED
#define NIOS2_HARDWARE_DIVIDE_PRESENT 0
#define NIOS2_HARDWARE_MULTIPLY_PRESENT 0
#define NIOS2_HARDWARE_MULX_PRESENT 0
#define NIOS2_HAS_DEBUG_CORE 1
#define NIOS2_HAS_DEBUG_STUB
#define NIOS2_HAS_JMPI_INSTRUCTION
#define NIOS2_ICACHE_LINE_SIZE 0
#define NIOS2_ICACHE_LINE_SIZE_LOG2 0
#define NIOS2_ICACHE_SIZE 0
#define NIOS2_INST_ADDR_WIDTH 0x12
#define NIOS2_RESET_ADDR 0x10000


/*
 * Define for each module class mastered by the CPU
 *
 */

#define __ALTERA_AVALON_JTAG_UART
#define __ALTERA_AVALON_ONCHIP_MEMORY2
#define __ALTERA_AVALON_PIO
#define __ALTERA_AVALON_SYSID_QSYS
#define __ALTERA_NIOS2_QSYS


/*
 * System configuration
 *
 */

#define ALT_DEVICE_FAMILY "Cyclone III"
#define ALT_ENHANCED_INTERRUPT_API_PRESENT
#define ALT_IRQ_BASE NULL
#define ALT_LOG_PORT "/dev/null"
#define ALT_LOG_PORT_BASE 0x0
#define ALT_LOG_PORT_DEV null
#define ALT_LOG_PORT_TYPE ""
#define ALT_NUM_EXTERNAL_INTERRUPT_CONTROLLERS 0
#define ALT_NUM_INTERNAL_INTERRUPT_CONTROLLERS 1
#define ALT_NUM_INTERRUPT_CONTROLLERS 1
#define ALT_STDERR "/dev/jtag"
#define ALT_STDERR_BASE 0x21068
#define ALT_STDERR_DEV jtag
#define ALT_STDERR_IS_JTAG_UART
#define ALT_STDERR_PRESENT
#define ALT_STDERR_TYPE "altera_avalon_jtag_uart"
#define ALT_STDIN "/dev/jtag"
#define ALT_STDIN_BASE 0x21068
#define ALT_STDIN_DEV jtag
#define ALT_STDIN_IS_JTAG_UART
#define ALT_STDIN_PRESENT
#define ALT_STDIN_TYPE "altera_avalon_jtag_uart"
#define ALT_STDOUT "/dev/jtag"
#define ALT_STDOUT_BASE 0x21068
#define ALT_STDOUT_DEV jtag
#define ALT_STDOUT_IS_JTAG_UART
#define ALT_STDOUT_PRESENT
#define ALT_STDOUT_TYPE "altera_avalon_jtag_uart"
#define ALT_SYSTEM_NAME "MySoc"


/*
 * go configuration
 *
 */

#define ALT_MODULE_CLASS_go altera_avalon_pio
#define GO_BASE 0x21000
#define GO_BIT_CLEARING_EDGE_REGISTER 0
#define GO_BIT_MODIFYING_OUTPUT_REGISTER 0
#define GO_CAPTURE 0
#define GO_DATA_WIDTH 1
#define GO_DO_TEST_BENCH_WIRING 0
#define GO_DRIVEN_SIM_VALUE 0
#define GO_EDGE_TYPE "NONE"
#define GO_FREQ 50000000
#define GO_HAS_IN 0
#define GO_HAS_OUT 1
#define GO_HAS_TRI 0
#define GO_IRQ -1
#define GO_IRQ_INTERRUPT_CONTROLLER_ID -1
#define GO_IRQ_TYPE "NONE"
#define GO_NAME "/dev/go"
#define GO_RESET_VALUE 0
#define GO_SPAN 16
#define GO_TYPE "altera_avalon_pio"


/*
 * hal configuration
 *
 */

#define ALT_MAX_FD 32
#define ALT_SYS_CLK none
#define ALT_TIMESTAMP_CLK none


/*
 * jtag configuration
 *
 */

#define ALT_MODULE_CLASS_jtag altera_avalon_jtag_uart
#define JTAG_BASE 0x21068
#define JTAG_IRQ 0
#define JTAG_IRQ_INTERRUPT_CONTROLLER_ID 0
#define JTAG_NAME "/dev/jtag"
#define JTAG_READ_DEPTH 64
#define JTAG_READ_THRESHOLD 8
#define JTAG_SPAN 8
#define JTAG_TYPE "altera_avalon_jtag_uart"
#define JTAG_WRITE_DEPTH 64
#define JTAG_WRITE_THRESHOLD 8


/*
 * m configuration
 *
 */

#define ALT_MODULE_CLASS_m altera_avalon_pio
#define M_BASE 0x21040
#define M_BIT_CLEARING_EDGE_REGISTER 0
#define M_BIT_MODIFYING_OUTPUT_REGISTER 0
#define M_CAPTURE 0
#define M_DATA_WIDTH 6
#define M_DO_TEST_BENCH_WIRING 0
#define M_DRIVEN_SIM_VALUE 0
#define M_EDGE_TYPE "NONE"
#define M_FREQ 50000000
#define M_HAS_IN 1
#define M_HAS_OUT 0
#define M_HAS_TRI 0
#define M_IRQ -1
#define M_IRQ_INTERRUPT_CONTROLLER_ID -1
#define M_IRQ_TYPE "NONE"
#define M_NAME "/dev/m"
#define M_RESET_VALUE 0
#define M_SPAN 16
#define M_TYPE "altera_avalon_pio"


/*
 * mult configuration
 *
 */

#define ALT_MODULE_CLASS_mult altera_avalon_pio
#define MULT_BASE 0x21030
#define MULT_BIT_CLEARING_EDGE_REGISTER 0
#define MULT_BIT_MODIFYING_OUTPUT_REGISTER 0
#define MULT_CAPTURE 0
#define MULT_DATA_WIDTH 6
#define MULT_DO_TEST_BENCH_WIRING 0
#define MULT_DRIVEN_SIM_VALUE 0
#define MULT_EDGE_TYPE "NONE"
#define MULT_FREQ 50000000
#define MULT_HAS_IN 1
#define MULT_HAS_OUT 0
#define MULT_HAS_TRI 0
#define MULT_IRQ -1
#define MULT_IRQ_INTERRUPT_CONTROLLER_ID -1
#define MULT_IRQ_TYPE "NONE"
#define MULT_NAME "/dev/mult"
#define MULT_RESET_VALUE 0
#define MULT_SPAN 16
#define MULT_TYPE "altera_avalon_pio"


/*
 * prt configuration
 *
 */

#define ALT_MODULE_CLASS_prt altera_avalon_pio
#define PRT_BASE 0x21010
#define PRT_BIT_CLEARING_EDGE_REGISTER 0
#define PRT_BIT_MODIFYING_OUTPUT_REGISTER 0
#define PRT_CAPTURE 0
#define PRT_DATA_WIDTH 1
#define PRT_DO_TEST_BENCH_WIRING 0
#define PRT_DRIVEN_SIM_VALUE 0
#define PRT_EDGE_TYPE "NONE"
#define PRT_FREQ 50000000
#define PRT_HAS_IN 1
#define PRT_HAS_OUT 0
#define PRT_HAS_TRI 0
#define PRT_IRQ -1
#define PRT_IRQ_INTERRUPT_CONTROLLER_ID -1
#define PRT_IRQ_TYPE "NONE"
#define PRT_NAME "/dev/prt"
#define PRT_RESET_VALUE 0
#define PRT_SPAN 16
#define PRT_TYPE "altera_avalon_pio"


/*
 * ram configuration
 *
 */

#define ALT_MODULE_CLASS_ram altera_avalon_onchip_memory2
#define RAM_ALLOW_IN_SYSTEM_MEMORY_CONTENT_EDITOR 0
#define RAM_ALLOW_MRAM_SIM_CONTENTS_ONLY_FILE 0
#define RAM_BASE 0x10000
#define RAM_CONTENTS_INFO ""
#define RAM_DUAL_PORT 0
#define RAM_GUI_RAM_BLOCK_TYPE "AUTO"
#define RAM_INIT_CONTENTS_FILE "MySoc_ram"
#define RAM_INIT_MEM_CONTENT 1
#define RAM_INSTANCE_ID "NONE"
#define RAM_IRQ -1
#define RAM_IRQ_INTERRUPT_CONTROLLER_ID -1
#define RAM_NAME "/dev/ram"
#define RAM_NON_DEFAULT_INIT_FILE_ENABLED 0
#define RAM_RAM_BLOCK_TYPE "AUTO"
#define RAM_READ_DURING_WRITE_MODE "DONT_CARE"
#define RAM_SINGLE_CLOCK_OP 0
#define RAM_SIZE_MULTIPLE 1
#define RAM_SIZE_VALUE 40960
#define RAM_SPAN 40960
#define RAM_TYPE "altera_avalon_onchip_memory2"
#define RAM_WRITABLE 1


/*
 * res configuration
 *
 */

#define ALT_MODULE_CLASS_res altera_avalon_pio
#define RES_BASE 0x21020
#define RES_BIT_CLEARING_EDGE_REGISTER 0
#define RES_BIT_MODIFYING_OUTPUT_REGISTER 0
#define RES_CAPTURE 0
#define RES_DATA_WIDTH 12
#define RES_DO_TEST_BENCH_WIRING 0
#define RES_DRIVEN_SIM_VALUE 0
#define RES_EDGE_TYPE "NONE"
#define RES_FREQ 50000000
#define RES_HAS_IN 0
#define RES_HAS_OUT 1
#define RES_HAS_TRI 0
#define RES_IRQ -1
#define RES_IRQ_INTERRUPT_CONTROLLER_ID -1
#define RES_IRQ_TYPE "NONE"
#define RES_NAME "/dev/res"
#define RES_RESET_VALUE 0
#define RES_SPAN 16
#define RES_TYPE "altera_avalon_pio"


/*
 * sysid configuration
 *
 */

#define ALT_MODULE_CLASS_sysid altera_avalon_sysid_qsys
#define SYSID_BASE 0x21060
#define SYSID_ID 0
#define SYSID_IRQ -1
#define SYSID_IRQ_INTERRUPT_CONTROLLER_ID -1
#define SYSID_NAME "/dev/sysid"
#define SYSID_SPAN 8
#define SYSID_TIMESTAMP 1647009701
#define SYSID_TYPE "altera_avalon_sysid_qsys"

#endif /* __SYSTEM_H_ */
