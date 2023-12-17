@echo off
REM ****************************************************************************
REM Vivado (TM) v2023.1.1 (64-bit)
REM
REM Filename    : simulate.bat
REM Simulator   : Xilinx Vivado Simulator
REM Description : Script for simulating the design by launching the simulator
REM
REM Generated by Vivado on Fri Oct 20 18:41:01 -0500 2023
REM SW Build 3900603 on Fri Jun 16 19:31:24 MDT 2023
REM
REM IP Build 3900379 on Sat Jun 17 05:28:05 MDT 2023
REM
REM usage: simulate.bat
REM
REM ****************************************************************************
REM simulate design
echo "xsim tb_flight_attendant_call_system_behav -key {Behavioral:sim_1:Functional:tb_flight_attendant_call_system} -tclbatch tb_flight_attendant_call_system.tcl -log simulate.log"
call xsim  tb_flight_attendant_call_system_behav -key {Behavioral:sim_1:Functional:tb_flight_attendant_call_system} -tclbatch tb_flight_attendant_call_system.tcl -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
