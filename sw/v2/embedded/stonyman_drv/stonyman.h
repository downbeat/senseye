#ifndef STONYMAN_H
#define STONYMAN_H
//**************************************************************************************************
// Device driver for the Centeye Stonyman on Linux, a loadable kernel module (LKM).
// This program is part of the SensEye project.
// Copyright (C) 2013  The University of Michigan
//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU Affero General Public License as
// published by the Free Software Foundation, either version 3 of the
// License, or (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Affero General Public License for more details.
//
// You should have received a copy of the GNU Affero General Public License
// along with this program.  If not, see <http://www.gnu.org/licenses/>.
//**************************************************************************************************

//**************************************************************************************************
// stonyman.h
//
//
// Device driver for the Centeye Stonyman on Linux, a loadable kernel module (LKM).
// Runs on uClinux on the SmartFusion.
//
//
// AUTHORS
// Russ Bielawski <jbielaws@umich.edu>
//
//
// VERSION   DATE        DESCRIPTION
// 00.01.00  2013-07-23  Created.
//                       Supports starting and stopping capture, and reading from the FIFO in the
//                       interrupt (although data is merely discarded).
//                       There is some code for multiple cameras, but the functional code supports a
//                       single camera only.
// 00.02.00  2013-07-25  Implemented stonyman_read.
//                       Auser-space program can now read from the device file.
//                       THERE IS NO CONCURRENCY PROTECTION.
// 00.03.00  2013-07-29  Added spinlocks to address the glaring race condition between stonyman_read
//                       and stonyman_interrupt.
// 00.04.00  2013-07-30  Added support for seperate AFULL and 'capture done' interrupts, both of
//                       which map to stonyman_interrupt.
// 00.05.00  2013-08-15  Added support for reading partial images in stonyman_read.
// 00.06.00  2013-08-15  Added auto-delay mode (enabling requires recompilation).
// 01.00.00  2013-08-21  Multi-camera support.
// 01.01.00  2013-08-22  Using irq argument in stonyman_interrupt to determine camidx which gives a
//                       slight improvement in framerate.
// 01.02.00  2013-08-28  Determine camidx in stonyman_interrupt more intelligently.
// 01.03.00  2013-09-09  Changed stonyman REG_CTRL assignments from "or equal" assignments to
//                       "equal" assignments.
//**************************************************************************************************


//**************************************************************************************************
// includes
//
#include <asm/ioctl.h>


//**************************************************************************************************
// defines / constants
//
#define STONYMAN_IOC_MAGIC          (0xBB) // arbitrarily chosen (unused in ioctl-number.txt)
#define STONYMAN_IOC_START_CAPTURE  _IO(STONYMAN_IOC_MAGIC, 0)
#define STONYMAN_IOC_STOP_CAPTURE   _IO(STONYMAN_IOC_MAGIC, 1)
#define STONYMAN_IOC_SINGLE_FRAME   _IO(STONYMAN_IOC_MAGIC, 2) // TODO: currently unimplemented
#define STONYMAN_IOC_CMD_CNT        (3)


#endif // STONYMAN_H
