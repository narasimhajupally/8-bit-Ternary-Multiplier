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

#include "xsi.h"

struct XSI_INFO xsi_info;



int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    work_m_07731740125061542523_0833183191_init();
    work_m_16722479774151365857_3030778209_init();
    work_m_07468517119011214053_1538389813_init();
    work_m_13676864886241473123_2207681426_init();
    work_m_13676864886241473123_1342111821_init();
    work_m_02629988106866461449_1345475044_init();
    work_m_17012742082926885184_1985558087_init();
    work_m_16541823861846354283_2073120511_init();


    xsi_register_tops("work_m_17012742082926885184_1985558087");
    xsi_register_tops("work_m_16541823861846354283_2073120511");


    return xsi_run_simulation(argc, argv);

}
