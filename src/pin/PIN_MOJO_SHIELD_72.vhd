library IEEE;
use IEEE.std_logic_1164.all;  -- defines std_logic types
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Copyright (C) 2007, Peter C. Wallace, Mesa Electronics
-- http://www.mesanet.com
--
-- This program is is licensed under a disjunctive dual license giving you
-- the choice of one of the two following sets of free software/open source
-- licensing terms:
--
--    * GNU General Public License (GPL), version 2.0 or later
--    * 3-clause BSD License
-- 
--
-- The GNU GPL License:
-- 
--     This program is free software; you can redistribute it and/or modify
--     it under the terms of the GNU General Public License as published by
--     the Free Software Foundation; either version 2 of the License, or
--     (at your option) any later version.
-- 
--     This program is distributed in the hope that it will be useful,
--     but WITHOUT ANY WARRANTY; without even the implied warranty of
--     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
--     GNU General Public License for more details.
-- 
--     You should have received a copy of the GNU General Public License
--     along with this program; if not, write to the Free Software
--     Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301 USA
-- 
-- 
-- The 3-clause BSD License:
-- 
--     Redistribution and use in source and binary forms, with or without
--     modification, are permitted provided that the following conditions
--     are met:
-- 
--   * Redistributions of source code must retain the above copyright
--     notice, this list of conditions and the following disclaimer.
-- 
--   * Redistributions in binary form must reproduce the above
--     copyright notice, this list of conditions and the following
--     disclaimer in the documentation and/or other materials
--     provided with the distribution.
-- 
--   * Neither the name of Mesa Electronics nor the names of its
--     contributors may be used to endorse or promote products
--     derived from this software without specific prior written
--     permission.
-- 
-- 
-- Disclaimer:
-- 
--     THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
--     "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
--     LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
--     FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
--     COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
--     INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
--     BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
--     LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
--     CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
--     LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
--     ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
--     POSSIBILITY OF SUCH DAMAGE.
-- 

use work.IDROMConst.all;

package PIN_MOJO_SHIELD_72 is
	constant ModuleID : ModuleIDType :=( 
		(WatchDogTag,     x"00",	ClockLowTag,  x"01",  WatchDogTimeAddr&PadT,    WatchDogNumRegs,	x"00",  WatchDogMPBitMask),
		(IOPortTag,       x"00",	ClockLowTag,  x"03",  PortAddr&PadT,            IOPortNumRegs,		x"00",  IOPortMPBitMask),
		(LEDTag,          x"00",	ClockLowTag,  x"08",  LEDAddr&PadT,             LEDNumRegs,         x"00",  LEDMPBitMask),
		(StepGenTag,      x"02",	ClockLowTag,  x"05",  StepGenRateAddr&PadT,     StepGenNumRegs,     x"00",  StepGenMPBitMask),
    	(QcountTag,       x"02",	ClockLowTag,  x"05",  QcounterAddr&PadT,        QCounterNumRegs,    x"00",  QCounterMPBitMask),
		(PWMTag,          x"00",	ClockHighTag, x"06",  PWMValAddr&PadT,          PWMNumRegs,         x"00",  PWMMPBitMask),
		(ADCTag,          x"00",	ClockLowTag,  x"01",  ADCAddr&PadT,             ADCNumRegs,         x"00",  ADCMPBitMask),
		(BSPITag,         x"00",	ClockLowTag,  x"01",  BSPIDataAddr&PadT,        BSPINumRegs,        x"11",  BSPIMPBitMask),
		(NullTag,         x"00",	NullTag,      x"00",  NullAddr&PadT,            x"00",              x"00",  x"00000000"),
		(NullTag,         x"00",	NullTag,      x"00",  NullAddr&PadT,            x"00",              x"00",  x"00000000"),
		(NullTag,         x"00",	NullTag,      x"00",  NullAddr&PadT,            x"00",              x"00",  x"00000000"),
		(NullTag,         x"00",	NullTag,      x"00",  NullAddr&PadT,            x"00",              x"00",  x"00000000"),
		(NullTag,         x"00",	NullTag,      x"00",  NullAddr&PadT,            x"00",              x"00",  x"00000000"),
		(NullTag,         x"00",	NullTag,      x"00",  NullAddr&PadT,            x"00",              x"00",  x"00000000"),
		(NullTag,         x"00",	NullTag,      x"00",  NullAddr&PadT,            x"00",              x"00",  x"00000000"),
		(NullTag,         x"00",	NullTag,      x"00",  NullAddr&PadT,            x"00",              x"00",  x"00000000"),
		(NullTag,         x"00",	NullTag,      x"00",  NullAddr&PadT,            x"00",              x"00",  x"00000000"),
		(NullTag,         x"00",	NullTag,      x"00",  NullAddr&PadT,            x"00",              x"00",  x"00000000"),
		(NullTag,         x"00",	NullTag,      x"00",  NullAddr&PadT,            x"00",              x"00",  x"00000000"),
		(NullTag,         x"00",	NullTag,      x"00",  NullAddr&PadT,            x"00",              x"00",  x"00000000"),
		(NullTag,         x"00",	NullTag,      x"00",  NullAddr&PadT,            x"00",              x"00",  x"00000000"),
		(NullTag,         x"00",	NullTag,      x"00",  NullAddr&PadT,            x"00",              x"00",  x"00000000"),
		(NullTag,         x"00",	NullTag,      x"00",  NullAddr&PadT,            x"00",              x"00",  x"00000000"),
		(NullTag,         x"00",	NullTag,      x"00",  NullAddr&PadT,            x"00",              x"00",  x"00000000"),
		(NullTag,         x"00",	NullTag,      x"00",  NullAddr&PadT,            x"00",              x"00",  x"00000000"),
		(NullTag,         x"00",	NullTag,      x"00",  NullAddr&PadT,            x"00",              x"00",  x"00000000"),
		(NullTag,         x"00",	NullTag,      x"00",  NullAddr&PadT,            x"00",              x"00",  x"00000000"),
		(NullTag,         x"00",	NullTag,      x"00",  NullAddr&PadT,            x"00",              x"00",  x"00000000"),
		(NullTag,         x"00",	NullTag,      x"00",  NullAddr&PadT,            x"00",              x"00",  x"00000000"),
		(NullTag,         x"00",	NullTag,      x"00",  NullAddr&PadT,            x"00",              x"00",  x"00000000"),
		(NullTag,         x"00",	NullTag,      x"00",  NullAddr&PadT,            x"00",              x"00",  x"00000000"),
		(NullTag,         x"00",	NullTag,      x"00",  NullAddr&PadT,            x"00",              x"00",  x"00000000")
		);
			
	constant PinDesc : PinDescType :=(
-- 	Base func  sec unit sec func 	 		 sec pin		
		IOPortTag & x"00" & NullTag & x"00",                  -- P57    I/O 00
		IOPortTag & x"00" & NullTag & x"00",                  -- P58    I/O 01
		IOPortTag & x"00" & NullTag & x"00",                  -- P66    I/O 02   X HOME
		IOPortTag & x"00" & NullTag & x"00",                  -- P67    I/O 03   X MAX
		IOPortTag & x"00" & NullTag & x"00",                  -- P74    I/O 04   Y HOME
		IOPortTag & x"00" & NullTag & x"00",                  -- P75    I/O 05   Y MAX
		IOPortTag & x"00" & NullTag & x"00",                  -- P78    I/O 06   Z HOME
		IOPortTag & x"00" & NullTag & x"00",                  -- P79    I/O 07   Z MAX
		IOPortTag & x"00" & NullTag & x"00",                  -- P80    I/O 08   A HOME
		IOPortTag & x"00" & NullTag & x"00",                  -- P81    I/O 09   A MAX
		IOPortTag & x"00" & NullTag & x"00",                  -- P82    I/O 10   B HOME
		IOPortTag & x"00" & NullTag & x"00",                  -- P83    I/O 11   B MAX
		IOPortTag & x"00" & QCountTag & QCountQAPin,          -- P84    I/O 12   X ENCODER A
		IOPortTag & x"00" & NullTag & x"00",                  -- P85    I/O 13   X ERR
		IOPortTag & x"00" & QCountTag & QCountQBPin,          -- P87    I/O 14   X ENCODER B
		IOPortTag & x"00" & NullTag & x"00",                  -- P88    I/O 15   Y ERR
		IOPortTag & x"01" & QCountTag & QCountQAPin,          -- P92    I/O 16   Y ENCODER A
		IOPortTag & x"00" & NullTag & x"00",                  -- P93    I/O 17   Z ERR
		IOPortTag & x"01" & QCountTag & QCountQBPin,          -- P94    I/O 18   Y ENCODER B
		IOPortTag & x"00" & NullTag & x"00",                  -- P95    I/O 19   A ERR
		IOPortTag & x"02" & QCountTag & QCountQAPin,          -- P97    I/O 20   Z ENCODER A
		IOPortTag & x"00" & NullTag & x"00",                  -- P98    I/O 21   B ERR
		IOPortTag & x"02" & QCountTag & QCountQBPin,          -- P99    I/O 22   Z ENCODER B
		IOPortTag & x"00" & NullTag & x"00",                  -- P100   I/O 23   RESERVED0
		IOPortTag & x"03" & QCountTag & QCountQAPin,          -- P101   I/O 24   A ENCODER A
		IOPortTag & x"00" & NullTag & x"00",                  -- P102   I/O 25   RESERVED1
		IOPortTag & x"03" & QCountTag & QCountQBPin,          -- P104   I/O 26   A ENCODER B
		IOPortTag & x"00" & NullTag & x"00",                  -- P105   I/O 27   RESERVED2
		IOPortTag & x"04" & QCountTag & QCountQAPin,          -- P111   I/O 28   B ENCODER A
		IOPortTag & x"00" & NullTag & x"00",                  -- P112   I/O 29   RESERVED3
		IOPortTag & x"04" & QCountTag & QCountQBPin,          -- P114   I/O 30   B ENCODER B
		IOPortTag & x"00" & NullTag & x"00",                  -- P115   I/O 31   RESERVED4
		IOPortTag & x"00" & NullTag & x"00",                  -- P116   I/O 32   PROBE
		IOPortTag & x"00" & NullTag & x"00",                  -- P117   I/O 33   RESERVED5
		IOPortTag & x"00" & NullTag & x"00",                  -- P118   I/O 34
		IOPortTag & x"00" & NullTag & x"00",                  -- P119   I/O 35
		IOPortTag & x"00" & NullTag & x"00",                  -- P120   I/O 36
		IOPortTag & x"00" & NullTag & x"00",                  -- P121   I/O 37
		IOPortTag & x"00" & StepGenTag & StepGenStepPin,      -- P50    I/O 38   X STEP
		IOPortTag & x"00" & NullTag & x"00",                  -- P51    I/O 39
		IOPortTag & x"01" & StepGenTag & StepGenStepPin,      -- P40    I/O 40   Y STEP
		IOPortTag & x"00" & NullTag & x"00",                  -- P41    I/O 41
		IOPortTag & x"02" & StepGenTag & StepGenStepPin,      -- P34    I/O 42   Z STEP
		IOPortTag & x"00" & NullTag & x"00",                  -- P35    I/O 43
		IOPortTag & x"03" & StepGenTag & StepGenStepPin,      -- P32    I/O 44   A STEP
		IOPortTag & x"00" & NullTag & x"00",                  -- P33    I/O 45
		IOPortTag & x"04" & StepGenTag & StepGenStepPin,      -- P29    I/O 46   B STEP
		IOPortTag & x"00" & NullTag & x"00",                  -- P30    I/O 47
		IOPortTag & x"00" & StepGenTag & StepGenDirPin,       -- P26    I/O 48   X DIR
		IOPortTag & x"00" & NullTag & x"00",                  -- P27    I/O 49
		IOPortTag & x"01" & StepGenTag & StepGenDirPin,       -- P23    I/O 50   Y DIR
		IOPortTag & x"02" & StepGenTag & StepGenDirPin,       -- P21    I/O 51   Z DIR
		IOPortTag & x"03" & StepGenTag & StepGenDirPin,       -- P16    I/O 52   A DIR
		IOPortTag & x"04" & StepGenTag & StepGenDirPin,       -- P14    I/O 53   B DIR
		IOPortTag & x"00" & NullTag & x"00",                  -- P11    I/O 54   X ENABLE
		IOPortTag & x"00" & NullTag & x"00",                  -- P12    I/O 55   RESERVED8
		IOPortTag & x"00" & NullTag & x"00",                  -- P9     I/O 56   Y ENABLE
		IOPortTag & x"00" & NullTag & x"00",                  -- P10    I/O 57   RESERVED9
		IOPortTag & x"00" & NullTag & x"00",                  -- P7     I/O 58   Z ENABLE
		IOPortTag & x"00" & NullTag & x"00",                  -- P8     I/O 59   RESERVED10
		IOPortTag & x"00" & NullTag & x"00",                  -- P5     I/O 60   A ENABLE
		IOPortTag & x"00" & NullTag & x"00",                  -- P6     I/O 61   RESERVED11
		IOPortTag & x"00" & NullTag & x"00",                  -- P1     I/O 62   B ENABLE
		IOPortTag & x"00" & NullTag & x"00",                  -- P2     I/O 63   RESERVED12
		IOPortTag & x"00" & NullTag & x"00",                  -- P143   I/O 64   RESERVED7 
		IOPortTag & x"00" & NullTag & x"00",                  -- P144   I/O 65   RESERVED13
		IOPortTag & x"00" & PWMTag & PWMAOutPin,              -- P141   I/O 66 # PWM00
		IOPortTag & x"01" & PWMTag & PWMAOutPin,              -- P142   I/O 67 # PWM01
		IOPortTag & x"02" & PWMTag & PWMAOutPin,              -- P139   I/O 68 # PWM02
		IOPortTag & x"03" & PWMTag & PWMAOutPin,              -- P140   I/O 69 # PWM03
		IOPortTag & x"04" & PWMTag & PWMAOutPin,              -- P137   I/O 70 # PWM04
		IOPortTag & x"05" & PWMTag & PWMAOutPin,              -- P138   I/O 71 # PWM05
-- to be added: fan control, cooling pump control

		emptypin,emptypin,emptypin,emptypin,emptypin,emptypin,emptypin,emptypin, -- added for IDROM v3
		emptypin,emptypin,emptypin,emptypin,emptypin,emptypin,emptypin,emptypin,
		
		emptypin,emptypin,emptypin,emptypin,emptypin,emptypin,emptypin,emptypin,
		emptypin,emptypin,emptypin,emptypin,emptypin,emptypin,emptypin,emptypin,
		emptypin,emptypin,emptypin,emptypin,emptypin,emptypin,emptypin,emptypin,
		emptypin,emptypin,emptypin,emptypin,emptypin,emptypin,emptypin,emptypin,
		emptypin,emptypin,emptypin,emptypin,emptypin,emptypin,emptypin,emptypin,
		emptypin,emptypin,emptypin,emptypin,emptypin,emptypin,emptypin,emptypin,
		emptypin,emptypin,emptypin,emptypin,emptypin,emptypin,emptypin,emptypin);

end package PIN_MOJO_SHIELD_72;
