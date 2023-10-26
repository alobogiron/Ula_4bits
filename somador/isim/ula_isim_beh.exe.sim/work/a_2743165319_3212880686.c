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
static const char *ng0 = "/home/giron/ula/Ula_4bits/somador/ula.vhd";



static void work_a_2743165319_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    int t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    unsigned char t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned char t15;
    int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned char t20;
    unsigned char t21;
    int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned char t26;
    unsigned char t27;
    unsigned char t28;
    char *t29;
    char *t30;
    char *t31;

LAB0:    xsi_set_current_line(122, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t1 = (t0 + 8733);
    t4 = xsi_mem_cmp(t1, t2, 3U);
    if (t4 == 1)
        goto LAB3;

LAB5:
LAB4:    xsi_set_current_line(132, ng0);
    t1 = (t0 + 8736);
    t3 = (t0 + 5464);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t1, 3U);
    xsi_driver_first_trans_fast_port(t3);

LAB2:    t1 = (t0 + 5384);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(124, ng0);
    t5 = (t0 + 1832U);
    t6 = *((char **)t5);
    t5 = (t0 + 5464);
    t7 = (t5 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t6, 3U);
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(125, ng0);
    t1 = (t0 + 2952U);
    t2 = *((char **)t1);
    t11 = *((unsigned char *)t2);
    t1 = (t0 + 5528);
    t3 = (t1 + 56U);
    t5 = *((char **)t3);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t11;
    xsi_driver_first_trans_delta(t1, 1U, 1, 0LL);
    xsi_set_current_line(126, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t4 = (2 - 2);
    t12 = (t4 * -1);
    t13 = (1U * t12);
    t14 = (0 + t13);
    t1 = (t2 + t14);
    t15 = *((unsigned char *)t1);
    t3 = (t0 + 1192U);
    t5 = *((char **)t3);
    t16 = (2 - 2);
    t17 = (t16 * -1);
    t18 = (1U * t17);
    t19 = (0 + t18);
    t3 = (t5 + t19);
    t20 = *((unsigned char *)t3);
    t21 = (t15 == t20);
    if (t21 == 1)
        goto LAB10;

LAB11:    t11 = (unsigned char)0;

LAB12:    if (t11 != 0)
        goto LAB7;

LAB9:    xsi_set_current_line(129, ng0);
    t1 = (t0 + 5528);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_delta(t1, 0U, 1, 0LL);

LAB8:    goto LAB2;

LAB6:;
LAB7:    xsi_set_current_line(127, ng0);
    t8 = (t0 + 5528);
    t10 = (t8 + 56U);
    t29 = *((char **)t10);
    t30 = (t29 + 56U);
    t31 = *((char **)t30);
    *((unsigned char *)t31) = (unsigned char)3;
    xsi_driver_first_trans_delta(t8, 0U, 1, 0LL);
    goto LAB8;

LAB10:    t6 = (t0 + 1032U);
    t7 = *((char **)t6);
    t22 = (2 - 2);
    t23 = (t22 * -1);
    t24 = (1U * t23);
    t25 = (0 + t24);
    t6 = (t7 + t25);
    t26 = *((unsigned char *)t6);
    t8 = (t0 + 2952U);
    t9 = *((char **)t8);
    t27 = *((unsigned char *)t9);
    t28 = (t26 != t27);
    t11 = t28;
    goto LAB12;

}


extern void work_a_2743165319_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2743165319_3212880686_p_0};
	xsi_register_didat("work_a_2743165319_3212880686", "isim/ula_isim_beh.exe.sim/work/a_2743165319_3212880686.didat");
	xsi_register_executes(pe);
}
