# PS3-GPU-Overclock
The VID Tables map the Hex value needed to program the SYSCON EEPROM to select the coresponding voltage for mullion or sherwood syscon. Be sure to use the correct table for your model of PS3. Note: Default is FF, in case you need to revert to stock voltage.

The 01_patch_rsx_oc.tcl file is a modified version of the dropdown in MFW Builder, which adds more overclock timings. Place it into the "tasks" folder of MFW Builder, overwriting the one in there. Since it adds so many more combinations it may take a few seconds longer for the dropdown to appear after checking the box to enable the overcolck. 
