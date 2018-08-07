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
static const char *ng0 = "/home/ise/xilinxcodes/multiplier/multiplier.v";
static unsigned int ng1[] = {0U, 0U};
static unsigned int ng2[] = {0U, 1U};
static unsigned int ng3[] = {1U, 0U};
static unsigned int ng4[] = {0U, 2U};
static unsigned int ng5[] = {0U, 3U};
static unsigned int ng6[] = {1U, 2U};
static unsigned int ng7[] = {2U, 0U};
static unsigned int ng8[] = {2U, 1U};
static unsigned int ng9[] = {3U, 0U};
static unsigned int ng10[] = {0U, 4U};
static unsigned int ng11[] = {0U, 5U};
static unsigned int ng12[] = {1U, 4U};
static unsigned int ng13[] = {0U, 6U};
static unsigned int ng14[] = {0U, 7U};
static unsigned int ng15[] = {1U, 6U};
static unsigned int ng16[] = {2U, 4U};
static unsigned int ng17[] = {2U, 5U};
static unsigned int ng18[] = {3U, 4U};
static unsigned int ng19[] = {4U, 0U};
static unsigned int ng20[] = {4U, 1U};
static unsigned int ng21[] = {5U, 0U};
static unsigned int ng22[] = {4U, 2U};
static unsigned int ng23[] = {4U, 3U};
static unsigned int ng24[] = {5U, 2U};
static unsigned int ng25[] = {6U, 0U};
static unsigned int ng26[] = {6U, 1U};
static unsigned int ng27[] = {7U, 0U};



static void Always_357_0(char *t0)
{
    char t4[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    int t9;
    char *t10;
    char *t11;

LAB0:    t1 = (t0 + 2840U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(357, ng0);
    t2 = (t0 + 3160);
    *((int *)t2) = 1;
    t3 = (t0 + 2872);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(358, ng0);

LAB5:    xsi_set_current_line(359, ng0);
    t5 = (t0 + 1368U);
    t6 = *((char **)t5);
    t5 = (t0 + 1208U);
    t7 = *((char **)t5);
    t5 = (t0 + 1048U);
    t8 = *((char **)t5);
    xsi_vlogtype_concat(t4, 3, 3, 3U, t8, 1, t7, 1, t6, 1);

LAB6:    t5 = ((char*)((ng1)));
    t9 = xsi_vlog_unsigned_case_compare(t4, 3, t5, 3);
    if (t9 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng2)));
    t9 = xsi_vlog_unsigned_case_compare(t4, 3, t2, 3);
    if (t9 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng3)));
    t9 = xsi_vlog_unsigned_case_compare(t4, 3, t2, 3);
    if (t9 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng4)));
    t9 = xsi_vlog_unsigned_case_compare(t4, 3, t2, 3);
    if (t9 == 1)
        goto LAB13;

LAB14:    t2 = ((char*)((ng5)));
    t9 = xsi_vlog_unsigned_case_compare(t4, 3, t2, 3);
    if (t9 == 1)
        goto LAB15;

LAB16:    t2 = ((char*)((ng6)));
    t9 = xsi_vlog_unsigned_case_compare(t4, 3, t2, 3);
    if (t9 == 1)
        goto LAB17;

LAB18:    t2 = ((char*)((ng7)));
    t9 = xsi_vlog_unsigned_case_compare(t4, 3, t2, 3);
    if (t9 == 1)
        goto LAB19;

LAB20:    t2 = ((char*)((ng8)));
    t9 = xsi_vlog_unsigned_case_compare(t4, 3, t2, 3);
    if (t9 == 1)
        goto LAB21;

LAB22:    t2 = ((char*)((ng9)));
    t9 = xsi_vlog_unsigned_case_compare(t4, 3, t2, 3);
    if (t9 == 1)
        goto LAB23;

LAB24:    t2 = ((char*)((ng10)));
    t9 = xsi_vlog_unsigned_case_compare(t4, 3, t2, 3);
    if (t9 == 1)
        goto LAB25;

LAB26:    t2 = ((char*)((ng11)));
    t9 = xsi_vlog_unsigned_case_compare(t4, 3, t2, 3);
    if (t9 == 1)
        goto LAB27;

LAB28:    t2 = ((char*)((ng12)));
    t9 = xsi_vlog_unsigned_case_compare(t4, 3, t2, 3);
    if (t9 == 1)
        goto LAB29;

LAB30:    t2 = ((char*)((ng13)));
    t9 = xsi_vlog_unsigned_case_compare(t4, 3, t2, 3);
    if (t9 == 1)
        goto LAB31;

LAB32:    t2 = ((char*)((ng14)));
    t9 = xsi_vlog_unsigned_case_compare(t4, 3, t2, 3);
    if (t9 == 1)
        goto LAB33;

LAB34:    t2 = ((char*)((ng15)));
    t9 = xsi_vlog_unsigned_case_compare(t4, 3, t2, 3);
    if (t9 == 1)
        goto LAB35;

LAB36:    t2 = ((char*)((ng16)));
    t9 = xsi_vlog_unsigned_case_compare(t4, 3, t2, 3);
    if (t9 == 1)
        goto LAB37;

LAB38:    t2 = ((char*)((ng17)));
    t9 = xsi_vlog_unsigned_case_compare(t4, 3, t2, 3);
    if (t9 == 1)
        goto LAB39;

LAB40:    t2 = ((char*)((ng18)));
    t9 = xsi_vlog_unsigned_case_compare(t4, 3, t2, 3);
    if (t9 == 1)
        goto LAB41;

LAB42:    t2 = ((char*)((ng19)));
    t9 = xsi_vlog_unsigned_case_compare(t4, 3, t2, 3);
    if (t9 == 1)
        goto LAB43;

LAB44:    t2 = ((char*)((ng20)));
    t9 = xsi_vlog_unsigned_case_compare(t4, 3, t2, 3);
    if (t9 == 1)
        goto LAB45;

LAB46:    t2 = ((char*)((ng21)));
    t9 = xsi_vlog_unsigned_case_compare(t4, 3, t2, 3);
    if (t9 == 1)
        goto LAB47;

LAB48:    t2 = ((char*)((ng22)));
    t9 = xsi_vlog_unsigned_case_compare(t4, 3, t2, 3);
    if (t9 == 1)
        goto LAB49;

LAB50:    t2 = ((char*)((ng23)));
    t9 = xsi_vlog_unsigned_case_compare(t4, 3, t2, 3);
    if (t9 == 1)
        goto LAB51;

LAB52:    t2 = ((char*)((ng24)));
    t9 = xsi_vlog_unsigned_case_compare(t4, 3, t2, 3);
    if (t9 == 1)
        goto LAB53;

LAB54:    t2 = ((char*)((ng25)));
    t9 = xsi_vlog_unsigned_case_compare(t4, 3, t2, 3);
    if (t9 == 1)
        goto LAB55;

LAB56:    t2 = ((char*)((ng26)));
    t9 = xsi_vlog_unsigned_case_compare(t4, 3, t2, 3);
    if (t9 == 1)
        goto LAB57;

LAB58:    t2 = ((char*)((ng27)));
    t9 = xsi_vlog_unsigned_case_compare(t4, 3, t2, 3);
    if (t9 == 1)
        goto LAB59;

LAB60:
LAB61:    goto LAB2;

LAB7:    xsi_set_current_line(360, ng0);

LAB62:    xsi_set_current_line(360, ng0);
    t10 = ((char*)((ng1)));
    t11 = (t0 + 1768);
    xsi_vlogvar_assign_value(t11, t10, 0, 0, 1);
    xsi_set_current_line(360, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1928);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB61;

LAB9:    xsi_set_current_line(361, ng0);

LAB63:    xsi_set_current_line(361, ng0);
    t3 = ((char*)((ng2)));
    t5 = (t0 + 1768);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 1);
    xsi_set_current_line(361, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1928);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB61;

LAB11:    xsi_set_current_line(362, ng0);

LAB64:    xsi_set_current_line(362, ng0);
    t3 = ((char*)((ng3)));
    t5 = (t0 + 1768);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 1);
    xsi_set_current_line(362, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1928);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB61;

LAB13:    xsi_set_current_line(363, ng0);

LAB65:    xsi_set_current_line(363, ng0);
    t3 = ((char*)((ng2)));
    t5 = (t0 + 1768);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 1);
    xsi_set_current_line(363, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1928);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB61;

LAB15:    xsi_set_current_line(364, ng0);

LAB66:    xsi_set_current_line(364, ng0);
    t3 = ((char*)((ng3)));
    t5 = (t0 + 1768);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 1);
    xsi_set_current_line(364, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1928);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB61;

LAB17:    xsi_set_current_line(365, ng0);

LAB67:    xsi_set_current_line(365, ng0);
    t3 = ((char*)((ng1)));
    t5 = (t0 + 1768);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 1);
    xsi_set_current_line(365, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1928);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB61;

LAB19:    xsi_set_current_line(366, ng0);

LAB68:    xsi_set_current_line(366, ng0);
    t3 = ((char*)((ng3)));
    t5 = (t0 + 1768);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 1);
    xsi_set_current_line(366, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1928);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB61;

LAB21:    xsi_set_current_line(367, ng0);

LAB69:    xsi_set_current_line(367, ng0);
    t3 = ((char*)((ng1)));
    t5 = (t0 + 1768);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 1);
    xsi_set_current_line(367, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1928);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB61;

LAB23:    xsi_set_current_line(368, ng0);

LAB70:    xsi_set_current_line(368, ng0);
    t3 = ((char*)((ng2)));
    t5 = (t0 + 1768);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 1);
    xsi_set_current_line(368, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1928);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB61;

LAB25:    xsi_set_current_line(370, ng0);

LAB71:    xsi_set_current_line(370, ng0);
    t3 = ((char*)((ng2)));
    t5 = (t0 + 1768);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 1);
    xsi_set_current_line(370, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1928);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB61;

LAB27:    xsi_set_current_line(371, ng0);

LAB72:    xsi_set_current_line(371, ng0);
    t3 = ((char*)((ng3)));
    t5 = (t0 + 1768);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 1);
    xsi_set_current_line(371, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1928);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB61;

LAB29:    xsi_set_current_line(372, ng0);

LAB73:    xsi_set_current_line(372, ng0);
    t3 = ((char*)((ng1)));
    t5 = (t0 + 1768);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 1);
    xsi_set_current_line(372, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1928);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB61;

LAB31:    xsi_set_current_line(373, ng0);

LAB74:    xsi_set_current_line(373, ng0);
    t3 = ((char*)((ng3)));
    t5 = (t0 + 1768);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 1);
    xsi_set_current_line(373, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1928);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB61;

LAB33:    xsi_set_current_line(374, ng0);

LAB75:    xsi_set_current_line(374, ng0);
    t3 = ((char*)((ng1)));
    t5 = (t0 + 1768);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 1);
    xsi_set_current_line(374, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1928);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB61;

LAB35:    xsi_set_current_line(375, ng0);

LAB76:    xsi_set_current_line(375, ng0);
    t3 = ((char*)((ng2)));
    t5 = (t0 + 1768);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 1);
    xsi_set_current_line(375, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1928);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB61;

LAB37:    xsi_set_current_line(376, ng0);

LAB77:    xsi_set_current_line(376, ng0);
    t3 = ((char*)((ng1)));
    t5 = (t0 + 1768);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 1);
    xsi_set_current_line(376, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1928);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB61;

LAB39:    xsi_set_current_line(377, ng0);

LAB78:    xsi_set_current_line(377, ng0);
    t3 = ((char*)((ng2)));
    t5 = (t0 + 1768);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 1);
    xsi_set_current_line(377, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1928);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB61;

LAB41:    xsi_set_current_line(378, ng0);

LAB79:    xsi_set_current_line(378, ng0);
    t3 = ((char*)((ng3)));
    t5 = (t0 + 1768);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 1);
    xsi_set_current_line(378, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1928);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB61;

LAB43:    xsi_set_current_line(380, ng0);

LAB80:    xsi_set_current_line(380, ng0);
    t3 = ((char*)((ng3)));
    t5 = (t0 + 1768);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 1);
    xsi_set_current_line(380, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1928);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB61;

LAB45:    xsi_set_current_line(381, ng0);

LAB81:    xsi_set_current_line(381, ng0);
    t3 = ((char*)((ng1)));
    t5 = (t0 + 1768);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 1);
    xsi_set_current_line(381, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1928);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB61;

LAB47:    xsi_set_current_line(382, ng0);

LAB82:    xsi_set_current_line(382, ng0);
    t3 = ((char*)((ng2)));
    t5 = (t0 + 1768);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 1);
    xsi_set_current_line(382, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1928);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB61;

LAB49:    xsi_set_current_line(383, ng0);

LAB83:    xsi_set_current_line(383, ng0);
    t3 = ((char*)((ng1)));
    t5 = (t0 + 1768);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 1);
    xsi_set_current_line(383, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1928);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB61;

LAB51:    xsi_set_current_line(384, ng0);

LAB84:    xsi_set_current_line(384, ng0);
    t3 = ((char*)((ng2)));
    t5 = (t0 + 1768);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 1);
    xsi_set_current_line(384, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1928);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB61;

LAB53:    xsi_set_current_line(385, ng0);

LAB85:    xsi_set_current_line(385, ng0);
    t3 = ((char*)((ng3)));
    t5 = (t0 + 1768);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 1);
    xsi_set_current_line(385, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1928);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB61;

LAB55:    xsi_set_current_line(386, ng0);

LAB86:    xsi_set_current_line(386, ng0);
    t3 = ((char*)((ng2)));
    t5 = (t0 + 1768);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 1);
    xsi_set_current_line(386, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1928);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB61;

LAB57:    xsi_set_current_line(387, ng0);

LAB87:    xsi_set_current_line(387, ng0);
    t3 = ((char*)((ng3)));
    t5 = (t0 + 1768);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 1);
    xsi_set_current_line(387, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1928);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB61;

LAB59:    xsi_set_current_line(388, ng0);

LAB88:    xsi_set_current_line(388, ng0);
    t3 = ((char*)((ng1)));
    t5 = (t0 + 1768);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 1);
    xsi_set_current_line(388, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 1928);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB61;

}


extern void work_m_07731740125061542523_0833183191_init()
{
	static char *pe[] = {(void *)Always_357_0};
	xsi_register_didat("work_m_07731740125061542523_0833183191", "isim/test_isim_beh.exe.sim/work/m_07731740125061542523_0833183191.didat");
	xsi_register_executes(pe);
}
