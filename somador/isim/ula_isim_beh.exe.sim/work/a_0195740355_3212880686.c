/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0xfbc00daa */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "/home/giron/ula/Ula_4bits/somador/comparador3.vhd";
extern char *IEEE_P_2592010699;



static void work_a_0195740355_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;

LAB0:    xsi_set_current_line(44, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 1192U);
    t3 = *((char **)t1);
    t1 = ((IEEE_P_2592010699) + 4000);
    t4 = xsi_vhdl_greater(t1, t2, 3U, t3, 3U);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 1192U);
    t3 = *((char **)t1);
    t1 = ((IEEE_P_2592010699) + 4000);
    t4 = xsi_vhdl_lessthan(t1, t2, 3U, t3, 3U);
    if (t4 != 0)
        goto LAB5;

LAB6:    xsi_set_current_line(49, ng0);
    t1 = (t0 + 4516);
    t3 = (t0 + 2904);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t1, 3U);
    xsi_driver_first_trans_fast_port(t3);

LAB3:    t1 = (t0 + 2824);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(45, ng0);
    t5 = (t0 + 4510);
    t7 = (t0 + 2904);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t5, 3U);
    xsi_driver_first_trans_fast_port(t7);
    goto LAB3;

LAB5:    xsi_set_current_line(47, ng0);
    t5 = (t0 + 4513);
    t7 = (t0 + 2904);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t5, 3U);
    xsi_driver_first_trans_fast_port(t7);
    goto LAB3;

}


extern void work_a_0195740355_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0195740355_3212880686_p_0};
	xsi_register_didat("work_a_0195740355_3212880686", "isim/ula_isim_beh.exe.sim/work/a_0195740355_3212880686.didat");
	xsi_register_executes(pe);
}
