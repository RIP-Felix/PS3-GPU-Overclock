#!/usr/bin/tclsh
#
# ps3mfw -- PS3 MFW creator
#
# Copyright (C) Anonymous Developers (Code Monkeys)
#
# This software is distributed under the terms of the GNU General Public
# License ("GPL") version 3, as published by the Free Software Foundation.
#

# Priority: 5
# Description: Patch LV1 for RSX Overclock

# Option --patch-lv1-rsx-oc: [3.xx/4.xx]  LV1: --> Patch LV1 to overclock RSX Core / Memory

# Type --patch-lv1-rsx-oc: combobox { {300MHz / 500MHz} {350MHz / 500MHz} {400MHz / 500MHz} {450MHz / 500MHz} {500MHz / 500MHz} {} {300MHz / 525MHz} {350MHz / 525MHz} {400MHz / 525MHz} {450MHz / 525MHz} {500MHz / 525MHz} {} {300MHz / 550MHz} {350MHz / 550MHz} {400MHz / 550MHz} {450MHz / 550MHz} {500MHz / 550MHz} {550MHz / 550MHz} {600MHz / 550MHz} {650MHz / 550MHz} {700MHz / 550MHz} {} {300MHz / 575MHz} {350MHz / 575MHz} {400MHz / 575MHz} {450MHz / 575MHz} {500MHz / 575MHz} {550MHz / 575MHz} {600MHz / 575MHz} {650MHz / 575MHz} {700MHz / 575MHz} {} {300MHz / 600MHz} {350MHz / 600MHz} {400MHz / 600MHz} {450MHz / 600MHz} {500MHz / 600MHz} {550MHz / 600MHz} {600MHz / 600MHz} {650MHz / 600MHz} {700MHz / 600MHz} {} {300MHz / 625MHz} {350MHz / 625MHz} {400MHz / 625MHz} {450MHz / 625MHz} {500MHz / 625MHz} {550MHz / 625MHz} {600MHz / 625MHz} {} {300MHz / 650MHz} {350MHz / 650MHz} {400MHz / 650MHz} {450MHz / 650MHz} {Default - 500MHz / 650MHz} {550MHz / 650MHz} {600MHz / 650MHz} {650MHz / 650MHz} {700MHz / 650MHz} {750MHz / 650MHz} {800MHz / 650MHz} {850MHz / 650MHz} {900MHz / 650MHz} {950MHz / 650MHz} {1000MHz / 650MHz} {} {300MHz / 675MHz} {350MHz / 675MHz} {400MHz / 675MHz} {450MHz / 675MHz} {500MHz / 675MHz} {550MHz / 675MHz} {600MHz / 675MHz} {} {300MHz / 700MHz} {350MHz / 700MHz} {400MHz / 700MHz} {450MHz / 700MHz} {500MHz / 700MHz} {550MHz / 700MHz} {600MHz / 700MHz} {650MHz / 700MHz} {700MHz / 700MHz} {750MHz / 700MHz} {800MHz / 700MHz} {850MHz / 700MHz} {900MHz / 700MHz} {950MHz / 700MHz} {1000MHz / 700MHz} {} {300MHz / 725MHz} {350MHz / 725MHz} {400MHz / 725MHz} {450MHz / 725MHz} {500MHz / 725MHz} {550MHz / 725MHz} {600MHz / 725MHz} {} {300MHz / 750MHz} {350MHz / 750MHz} {400MHz / 750MHz} {450MHz / 750MHz} {500MHz / 750MHz} {550MHz / 750MHz} {600MHz / 750MHz} {650MHz / 750MHz} {700MHz / 750MHz} {750MHz / 750MHz} {800MHz / 750MHz} {850MHz / 750MHz} {900MHz / 750MHz} {950MHz / 750MHz} {1000MHz / 750MHz} {} {300MHz / 775MHz} {350MHz / 775MHz} {400MHz / 775MHz} {450MHz / 775MHz} {500MHz / 775MHz} {550MHz / 775MHz} {600MHz / 775MHz} {650MHz / 775MHz} {700MHz / 775MHz} {750MHz / 775MHz} {800MHz / 775MHz} {850MHz / 775MHz} {900MHz / 775MHz} {950MHz / 775MHz} {1000MHz / 775MHz} {} {300MHz / 800MHz} {350MHz / 800MHz} {400MHz / 800MHz} {450MHz / 800MHz} {500MHz / 800MHz} {550MHz / 800MHz} {600MHz / 800MHz} {650MHz / 800MHz} {700MHz / 800MHz} {750MHz / 800MHz} {800MHz / 800MHz} {850MHz / 800MHz} {900MHz / 800MHz} {950MHz / 800MHz} {1000MHz / 800MHz} {1050MHz / 800MHz} {1100MHz / 800MHz} {1150MHz / 800MHz} {1200MHz / 800MHz} {1250MHz / 800MHz} {1300MHz / 800MHz} {1350MHz / 800MHz} {1400MHz / 800MHz} {1450MHz / 800MHz} {1500MHz / 800MHz} {} {300MHz / 825MHz} {350MHz / 825MHz} {400MHz / 825MHz} {450MHz / 825MHz} {500MHz / 825MHz} {550MHz / 825MHz} {600MHz / 825MHz} {650MHz / 825MHz} {700MHz / 825MHz} {750MHz / 825MHz} {800MHz / 825MHz} {850MHz / 825MHz} {900MHz / 825MHz} {950MHz / 825MHz} {1000MHz / 825MHz} {1050MHz / 825MHz} {1100MHz / 825MHz} {1150MHz / 825MHz} {1200MHz / 825MHz} {1250MHz / 825MHz} {1300MHz / 825MHz} {1350MHz / 825MHz} {1400MHz / 825MHz} {1450MHz / 825MHz} {1500MHz / 825MHz} {} {300MHz / 850MHz} {350MHz / 850MHz} {400MHz / 850MHz} {450MHz / 850MHz} {500MHz / 850MHz} {550MHz / 850MHz} {600MHz / 850MHz} {650MHz / 850MHz} {700MHz / 850MHz} {750MHz / 850MHz} {800MHz / 850MHz} {850MHz / 850MHz} {900MHz / 850MHz} {950MHz / 850MHz} {1000MHz / 850MHz} {1050MHz / 850MHz} {1100MHz / 850MHz} {1150MHz / 850MHz} {1200MHz / 850MHz} {1250MHz / 850MHz} {1300MHz / 850MHz} {1350MHz / 850MHz} {1400MHz / 850MHz} {1450MHz / 850MHz} {1500MHz / 850MHz} {} {300MHz / 875MHz} {350MHz / 875MHz} {400MHz / 875MHz} {450MHz / 875MHz} {500MHz / 875MHz} {550MHz / 875MHz} {600MHz / 875MHz} {650MHz / 875MHz} {700MHz / 875MHz} {750MHz / 875MHz} {800MHz / 875MHz} {850MHz / 875MHz} {900MHz / 875MHz} {950MHz / 875MHz} {1000MHz / 875MHz} {} {300MHz / 900MHz} {350MHz / 900MHz} {400MHz / 900MHz} {450MHz / 900MHz} {500MHz / 900MHz} {550MHz / 900MHz} {600MHz / 900MHz} {650MHz / 900MHz} {700MHz / 900MHz} {750MHz / 900MHz} {800MHz / 900MHz} {850MHz / 900MHz} {900MHz / 900MHz} {950MHz / 900MHz} {1000MHz / 900MHz} {1050MHz / 900MHz} {1100MHz / 900MHz} {1150MHz / 900MHz} {1200MHz / 900MHz} {1250MHz / 900MHz} {1300MHz / 900MHz} {} {450MHz / 925MHz} {500MHz / 925MHz} {550MHz / 925MHz} {600MHz / 925MHz} {650MHz / 925MHz} {700MHz / 925MHz} {750MHz / 925MHz} {800MHz / 925MHz} {850MHz / 925MHz} {900MHz / 925MHz} {950MHz / 925MHz} {1000MHz / 925MHz} {} {450MHz / 950MHz} {500MHz / 950MHz} {550MHz / 950MHz} {600MHz / 950MHz} {650MHz / 950MHz} {700MHz / 950MHz} {750MHz / 950MHz} {800MHz / 950MHz} {850MHz / 950MHz} {900MHz / 950MHz} {950MHz / 950MHz} {1000MHz / 950MHz} {} {450MHz / 975MHz} {500MHz / 975MHz} {550MHz / 975MHz} {600MHz / 975MHz} {650MHz / 975MHz} {700MHz / 975MHz} {750MHz / 975MHz} {800MHz / 975MHz} {850MHz / 975MHz} {900MHz / 975MHz} {950MHz / 975MHz} {1000MHz / 975MHz} {} {450MHz / 1000MHz} {500MHz / 1000MHz} {550MHz / 1000MHz} {600MHz / 1000MHz} {650MHz / 1000MHz} {700MHz / 1000MHz} {750MHz / 1000MHz} {800MHz / 1000MHz} {850MHz / 1000MHz} {900MHz / 1000MHz} {950MHz / 1000MHz} {1000MHz / 1000MHz} {} {700MHz / 1025MHz} {750MHz / 1025MHz} {800MHz / 1025MHz} {850MHz / 1025MHz} {900MHz / 1025MHz} {950MHz / 1025MHz} {1000MHz / 1025MHz} {} {700MHz / 1050MHz} {750MHz / 1050MHz} {800MHz / 1050MHz} {850MHz / 1050MHz} {900MHz / 1050MHz} {950MHz / 1050MHz} {1000MHz / 1050MHz} {} {700MHz / 1075MHz} {750MHz / 1075MHz} {800MHz / 1075MHz} {850MHz / 1075MHz} {900MHz / 1075MHz} {950MHz / 1075MHz} {1000MHz / 1075MHz} {} {700MHz / 1100MHz} {750MHz / 1100MHz} {800MHz / 1100MHz} {850MHz / 1100MHz} {900MHz / 1100MHz} {950MHz / 1100MHz} {1000MHz / 1100MHz} {} {700MHz / 1125MHz} {750MHz / 1125MHz} {800MHz / 1125MHz} {850MHz / 1125MHz} {900MHz / 1125MHz} {950MHz / 1125MHz} {1000MHz / 1125MHz} {} {700MHz / 1150MHz} {750MHz / 1150MHz} {800MHz / 1150MHz} {850MHz / 1150MHz} {900MHz / 1150MHz} {950MHz / 1150MHz} {1000MHz / 1150MHz} {} {700MHz / 1175MHz} {750MHz / 1175MHz} {800MHz / 1175MHz} {850MHz / 1175MHz} {900MHz / 1175MHz} {950MHz / 1175MHz} {1000MHz / 1175MHz} {} {700MHz / 1200MHz} {750MHz / 1200MHz} {800MHz / 1200MHz} {850MHz / 1200MHz} {900MHz / 1200MHz} {950MHz / 1200MHz} {1000MHz / 1200MHz} {} {700MHz / 1225MHz} {750MHz / 1225MHz} {800MHz / 1225MHz} {850MHz / 1225MHz} {900MHz / 1225MHz} {950MHz / 1225MHz} {1000MHz / 1225MHz} {} {700MHz / 1250MHz} {750MHz / 1250MHz} {800MHz / 1250MHz} {850MHz / 1250MHz} {900MHz / 1250MHz} {950MHz / 1250MHz} {1000MHz / 1250MHz} {} {800MHz / 1275MHz} {850MHz / 1275MHz} {900MHz / 1275MHz} {950MHz / 1275MHz} {1000MHz / 1275MHz} {} {800MHz / 1300MHz} {850MHz / 1300MHz} {900MHz / 1300MHz} {950MHz / 1300MHz} {1000MHz / 1300MHz} {} {800MHz / 1325MHz} {850MHz / 1325MHz} {900MHz / 1325MHz} {950MHz / 1325MHz} {1000MHz / 1325MHz} {} {800MHz / 1350MHz} {850MHz / 1350MHz} {900MHz / 1350MHz} {950MHz / 1350MHz} {1000MHz / 1350MHz} {} {800MHz / 1375MHz} {850MHz / 1375MHz} {900MHz / 1375MHz} {950MHz / 1375MHz} {1000MHz / 1375MHz} {} {800MHz / 1400MHz} {850MHz / 1400MHz} {900MHz / 1400MHz} {950MHz / 1400MHz} {1000MHz / 1400MHz} {} {800MHz / 1425MHz} {850MHz / 1425MHz} {900MHz / 1425MHz} {950MHz / 1425MHz} {1000MHz / 1425MHz} {} {800MHz / 1450MHz} {850MHz / 1450MHz} {900MHz / 1450MHz} {950MHz / 1450MHz} {1000MHz / 1450MHz} {} {800MHz / 1475MHz} {850MHz / 1475MHz} {900MHz / 1475MHz} {950MHz / 1475MHz} {1000MHz / 1475MHz} {} {800MHz / 1500MHz} {850MHz / 1500MHz} {900MHz / 1500MHz} {950MHz / 1500MHz} {1000MHz / 1500MHz}}

namespace eval ::01_patch_rsx_oc {

    array set ::01_patch_rsx_oc::options {
		--patch-lv1-rsx-oc "Select Speed"
    }

    proc main {} {
		variable options
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) != "Select Speed" || $::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) != ""} {
			set self "lv1.self"
			::modify_coreos_file $self ::01_patch_rsx_oc::Do_LV1_Patch
		}
    }

	proc Do_LV1_Patch {self} {		
        ::modify_self_file $self ::01_patch_rsx_oc::LV1_elf_Patch
	}
	
	proc LV1_elf_Patch {elf} {
		log "Applying LV1 patch...."	
		# RSX OC 300/500
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "300MHz / 500MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 300MHz / 500MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x06\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x14\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 350/500
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "350MHz / 500MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 350MHz / 500MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x07\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x14\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }	
		# RSX OC 400/500
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "400MHz / 500MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 400MHz / 500MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x08\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x14\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 450/500
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "450MHz / 500MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 450MHz / 500MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x09\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x14\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 500/500
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "500MHz / 500MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 500MHz / 500MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x14\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 300/525
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "300MHz / 525MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 300MHz / 525MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x06\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x15\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 350/525
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "350MHz / 525MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 350MHz / 525MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x07\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x15\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }	
		# RSX OC 400/525
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "400MHz / 525MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 400MHz / 525MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x08\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x15\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 450/525
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "450MHz / 525MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 450MHz / 525MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x09\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x15\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 500/525
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "500MHz / 525MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 500MHz / 525MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x15\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 300/550
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "300MHz / 550MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 300MHz / 550MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x06\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x16\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 350/550
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "350MHz / 550MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 350MHz / 550MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x07\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x16\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }	
		# RSX OC 400/550
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "400MHz / 550MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 400MHz / 550MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x08\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x16\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 450/550
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "450MHz / 550MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 450MHz / 550MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x09\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x16\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 500/550
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "500MHz / 550MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 500MHz / 550MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x16\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 550/550
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "550MHz / 550MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 550MHz / 550MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x0b\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x16\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 600/550
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "600MHz / 550MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 600MHz / 550MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x0c\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x16\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
	}
		# RSX OC 650/550
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "650MHz / 550MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 650MHz / 550MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x0d\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x16\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
	}
		# RSX OC 700/550
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "700MHz / 550MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 700MHz / 550MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x0e\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x16\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
	}
		# RSX OC 300/575
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "300MHz / 575MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 300MHz / 575MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x06\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x17\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 350/575
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "350MHz / 575MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 350MHz / 575MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x07\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x17\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 400/575
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "400MHz / 575MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 400MHz / 575MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x08\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x17\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 450/575
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "450MHz / 575MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 450MHz / 575MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x09\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x17\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 500/575
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "500MHz / 575MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 500MHz / 575MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x17\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 550/575
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "550MHz / 575MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 550MHz / 575MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x0b\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x17\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 600/575
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "600MHz / 575MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 600MHz / 575MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x0c\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x17\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 650/575
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "650MHz / 575MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 650MHz / 575MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x0d\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x17\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 700/575
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "700MHz / 575MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 700MHz / 575MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x0e\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x17\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 300/600
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "300MHz / 600MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 300MHz / 600MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x06\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x18\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 350/600
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "350MHz / 600MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 350MHz / 600MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x07\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x18\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 400/600
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "400MHz / 600MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 400MHz / 600MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x08\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x18\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 450/600
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "450MHz / 600MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 450MHz / 600MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x09\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x18\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 500/600
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "500MHz / 600MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 500MHz / 600MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x18\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 550/600
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "550MHz / 600MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 550MHz / 600MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x0b\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x18\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 600/600
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "600MHz / 600MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 600MHz / 600MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x0c\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x18\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 650/600
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "650MHz / 600MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 650MHz / 600MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x0d\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x18\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }		
		# RSX OC 700/600
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "700MHz / 600MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 700MHz / 600MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x0e\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x18\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 300/625
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "300MHz / 625MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 300MHz / 625MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x06\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x19\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 350/625
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "350MHz / 625MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 350MHz / 625MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x07\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x19\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 400/625
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "400MHz / 625MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 400MHz / 625MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x08\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x19\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 450/625
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "450MHz / 625MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 450MHz / 625MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x09\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x19\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 500/625
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "500MHz / 625MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 500MHz / 625MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x19\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 550/625
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "550MHz / 625MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 550MHz / 625MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x0b\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x19\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 600/625
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "600MHz / 625MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 600MHz / 625MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x0c\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x19\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		
		# RSX OC 300/650
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "300MHz / 650MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 300MHz / 650MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x06\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 350/650
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "350MHz / 650MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 350MHz / 650MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x07\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 400/650
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "400MHz / 650MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 400MHz / 650MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x08\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 450/650
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "450MHz / 650MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 450MHz / 650MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x09\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 500/650
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "Default - 500MHz / 650MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to Default 500MHz / 650MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 550/650
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "550MHz / 650MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 550MHz / 650MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x0b\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 600/650
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "600MHz / 650MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 600MHz / 650MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x0c\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 650/650
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "650MHz / 650MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 650MHz / 650MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x0d\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 700/650
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "700MHz / 650MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 700MHz / 650MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x0e\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 750/650
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "750MHz / 650MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 750MHz / 650MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x0f\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 800/650
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "800MHz / 650MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 800MHz / 650MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x10\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 850/650
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "850MHz / 650MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 850MHz / 650MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x11\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 900/650
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "900MHz / 650MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 900MHz / 650MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x12\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 950/650
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "950MHz / 650MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 950MHz / 650MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x13\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 1000/650
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "1000MHz / 650MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 1000MHz / 650MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x14\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }

		# RSX OC 300/675
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "300MHz / 675MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 300MHz / 675MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x06\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1b\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 350/675
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "350MHz / 675MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 350MHz / 675MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x07\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1b\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 400/675
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "400MHz / 675MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 400MHz / 675MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x08\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1b\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 450/675
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "450MHz / 675MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 450MHz / 675MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x09\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1b\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 500/675
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "500MHz / 675MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 500MHz / 675MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1b\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 550/675
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "550MHz / 675MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 550MHz / 675MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x0b\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1b\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 600/675
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "600MHz / 675MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 600MHz / 675MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x0c\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1b\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		
		# RSX OC 300/700
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "300MHz / 700MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 300MHz / 700MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x06\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1c\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 350/700
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "350MHz / 700MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 350MHz / 700MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x07\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1c\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 400/700
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "400MHz / 700MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 400MHz / 700MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x08\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1c\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 450/700
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "450MHz / 700MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 450MHz / 700MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x09\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1c\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 500/700
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "500MHz / 700MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 500MHz / 700MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1c\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 550/700
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "550MHz / 700MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 550MHz / 700MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x0b\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1c\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 600/700
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "600MHz / 700MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 600MHz / 700MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x0c\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1c\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 650/700
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "650MHz / 700MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 650MHz / 700MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x0d\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1c\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 700/700
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "700MHz / 700MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 700MHz / 700MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x0e\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1c\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 750/700
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "750MHz / 700MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 750MHz / 700MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x0f\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1c\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 800/700
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "800MHz / 700MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 800MHz / 700MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x10\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1c\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 850/700
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "850MHz / 700MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 850MHz / 700MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x11\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1c\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 900/700
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "900MHz / 700MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 900MHz / 700MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x12\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1c\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 950/700
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "950MHz / 700MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 950MHz / 700MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x13\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1c\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 1000/700
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "1000MHz / 700MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 1000MHz / 700MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x14\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1c\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }

		# RSX OC 300/725
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "300MHz / 725MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 300MHz / 725MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x06\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1d\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 350/725
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "350MHz / 725MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 350MHz / 725MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x07\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1d\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 400/725
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "400MHz / 725MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 400MHz / 725MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x08\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1d\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 450/725
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "450MHz / 725MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 450MHz / 725MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x09\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1d\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 500/725
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "500MHz / 725MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 500MHz / 725MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1d\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 550/725
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "550MHz / 725MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 550MHz / 725MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x0b\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1d\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 600/725
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "600MHz / 725MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 600MHz / 725MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x0c\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1d\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		
		# RSX OC 300/750
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "300MHz / 750MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 300MHz / 750MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x06\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1e\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 350/750
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "350MHz / 750MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 350MHz / 750MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x07\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1e\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 400/750
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "400MHz / 750MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 400MHz / 750MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x08\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1e\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 450/750
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "450MHz / 750MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 450MHz / 750MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x09\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1e\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 500/750
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "500MHz / 750MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 500MHz / 750MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1e\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 550/750
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "550MHz / 750MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 550MHz / 750MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x0b\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1e\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 600/750
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "600MHz / 750MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 600MHz / 750MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x0c\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1e\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 650/750
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "650MHz / 750MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 650MHz / 750MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x0d\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1e\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 700/750
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "700MHz / 750MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 700MHz / 750MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x0e\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1e\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 750/750
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "750MHz / 750MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 750MHz / 750MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x0f\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1e\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 800/750
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "800MHz / 750MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 800MHz / 750MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x10\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1e\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 850/750
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "850MHz / 750MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 850MHz / 750MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x11\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1e\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 900/750
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "900MHz / 750MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 900MHz / 750MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x12\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1e\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 950/750
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "950MHz / 750MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 950MHz / 750MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x13\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1e\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 1000/750
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "1000MHz / 750MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 1000MHz / 750MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x14\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1e\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
                # RSX OC 300/775
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "300MHz / 775MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 300MHz / 775MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x06\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1f\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 350/775
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "350MHz / 775MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 350MHz / 775MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x07\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1f\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 400/775
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "400MHz / 775MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 400MHz / 775MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x08\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1f\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
        	# RSX OC 450/775
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "450MHz / 775MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 450MHz / 775MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x09\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1f\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
        	# RSX OC 500/775
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "500MHz / 775MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 500MHz / 775MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1f\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 550/775
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "550MHz / 775MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 550MHz / 775MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x0b\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1f\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
        	# RSX OC 600/775
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "600MHz / 775MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 600MHz / 775MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x0c\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1f\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 650/775
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "650MHz / 775MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 650MHz / 775MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x0d\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1f\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 700/775
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "700MHz / 775MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 700MHz / 775MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x0e\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1f\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 750/775
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "750MHz / 775MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 750MHz / 775MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x0f\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1f\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 800/775
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "800MHz / 775MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 800MHz / 775MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x10\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1f\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 850/775
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "850MHz / 775MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 850MHz / 775MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x11\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1f\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 900/775
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "900MHz / 775MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 900MHz / 775MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x12\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1f\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 950/775
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "950MHz / 775MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 950MHz / 775MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x13\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1f\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 1000/775
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "1000MHz / 775MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 1000MHz / 775MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x14\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1f\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 300/800
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "300MHz / 800MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 300MHz / 800MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x06\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x20\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 350/800
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "350MHz / 800MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 350MHz / 800MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x07\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x20\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 400/800
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "400MHz / 800MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 400MHz / 800MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x08\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x20\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 450/800
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "450MHz / 800MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 450MHz / 800MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x09\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x20\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 500/800
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "500MHz / 800MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 500MHz / 800MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x20\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 550/800
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "550MHz / 800MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 550MHz / 800MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x0b\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x20\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 600/800
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "600MHz / 800MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 600MHz / 800MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x0c\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x20\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 650/800
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "650MHz / 800MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 650MHz / 800MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x0d\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x20\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 700/800
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "700MHz / 800MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 700MHz / 800MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x0e\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x20\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 750/800
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "750MHz / 800MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 750MHz / 800MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x0f\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x20\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 800/800
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "800MHz / 800MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 800MHz / 800MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x10\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x20\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 850/800
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "850MHz / 800MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 850MHz / 800MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x11\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x20\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 900/800
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "900MHz / 800MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 900MHz / 800MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x12\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x20\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 950/800
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "950MHz / 800MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 950MHz / 800MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x13\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x20\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 1000/800
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "1000MHz / 800MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 1000MHz / 800MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x14\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x20\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 1050/800
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "1050MHz / 800MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 1050MHz / 800MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x15\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x20\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 1100/800
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "1100MHz / 800MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 1100MHz / 800MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x16\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x20\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 1150/800
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "1150MHz / 800MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 1150MHz / 800MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x17\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x20\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 1200/800
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "1200MHz / 800MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 1200MHz / 800MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x18\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x20\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 1250/800
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "1250MHz / 800MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 1250MHz / 800MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x19\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x20\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 1300/800
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "1300MHz / 800MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 1300MHz / 800MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x1a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x20\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 1350/800
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "1350MHz / 800MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 1350MHz / 800MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x1b\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x20\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 1400/800
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "1400MHz / 800MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 1400MHz / 800MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x1c\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x20\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 1450/800
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "1450MHz / 800MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 1450MHz / 800MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x1d\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x20\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 1500/800
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "1500MHz / 800MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 1500MHz / 800MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x1e\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x20\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
        	# RSX OC 300/825
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "300MHz / 825MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 300MHz / 825MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x06\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x21\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
        	# RSX OC 350/825
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "350MHz / 825MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 350MHz / 825MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x07\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x21\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
        	# RSX OC 400/825
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "400MHz / 825MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 400MHz / 825MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x08\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x21\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
        	# RSX OC 450/825
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "450MHz / 825MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 450MHz / 825MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x09\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x21\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
        	# RSX OC 500/825
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "500MHz / 825MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 500MHz / 825MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x21\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
        	# RSX OC 550/825
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "550MHz / 825MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 550MHz / 825MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x0b\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x21\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
        	# RSX OC 600/825
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "600MHz / 825MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 600MHz / 825MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x0c\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x21\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 650/825
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "650MHz / 825MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 650MHz / 825MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x0d\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x21\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 700/825
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "700MHz / 825MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 700MHz / 825MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x0e\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x21\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 750/825
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "750MHz / 825MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 750MHz / 825MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x0f\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x21\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 800/825
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "800MHz / 825MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 800MHz / 825MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x10\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x21\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 850/825
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "850MHz / 825MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 850MHz / 825MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x11\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x21\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 900/825
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "900MHz / 825MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 900MHz / 825MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x12\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x21\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 950/825
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "950MHz / 825MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 950MHz / 825MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x13\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x21\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 1000/825
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "1000MHz / 825MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 1000MHz / 825MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x14\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x21\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 1050/825
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "1050MHz / 825MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 1050MHz / 825MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x15\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x21\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 1100/825
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "1100MHz / 825MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 1100MHz / 825MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x16\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x21\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 1150/825
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "1150MHz / 825MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 1150MHz / 825MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x17\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x21\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 1200/825
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "1200MHz / 825MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 1200MHz / 825MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x18\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x21\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 1250/825
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "1250MHz / 825MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 1250MHz / 825MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x19\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x21\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 1300/825
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "1300MHz / 825MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 1300MHz / 825MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x1a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x21\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 1350/825
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "1350MHz / 825MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 1350MHz / 825MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x1b\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x21\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 1400/825
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "1400MHz / 825MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 1400MHz / 825MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x1c\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x21\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 1450/825
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "1450MHz / 825MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 1450MHz / 825MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x1d\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x21\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 1500/825
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "1500MHz / 825MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 1500MHz / 825MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x1e\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x21\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 300/850
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "300MHz / 850MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 300MHz / 850MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x06\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x22\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 350/850
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "350MHz / 850MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 350MHz / 850MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x07\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x22\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 400/850
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "400MHz / 850MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 400MHz / 850MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x08\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x22\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 450/850
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "450MHz / 850MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 450MHz / 850MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x09\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x22\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 500/850
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "500MHz / 850MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 500MHz / 850MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x22\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 550/850
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "550MHz / 850MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 550MHz / 850MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x0b\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x22\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 600/850
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "600MHz / 850MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 600MHz / 850MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x0c\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x22\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 650/850
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "650MHz / 850MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 650MHz / 850MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x0d\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x22\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 700/850
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "700MHz / 850MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 700MHz / 850MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x0e\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x22\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 750/850
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "750MHz / 850MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 750MHz / 850MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x0f\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x22\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 800/850
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "800MHz / 850MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 800MHz / 850MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x10\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x22\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 850/850
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "850MHz / 850MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 850MHz / 850MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x11\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x22\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 900/850
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "900MHz / 850MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 900MHz / 850MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x12\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x22\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 950/850
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "950MHz / 850MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 950MHz / 850MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x13\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x22\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 1000/850
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "1000MHz / 850MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 1000MHz / 850MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x14\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x22\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 1050/850
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "1050MHz / 850MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 1050MHz / 850MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x15\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x22\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 1100/850
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "1100MHz / 850MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 1100MHz / 850MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x16\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x22\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 1150/850
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "1150MHz / 850MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 1150MHz / 850MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x17\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x22\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 1200/850
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "1200MHz / 850MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 1200MHz / 850MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x18\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x22\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 1250/850
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "1250MHz / 850MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 1250MHz / 850MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x19\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x22\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 1300/850
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "1300MHz / 850MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 1300MHz / 850MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x1a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x22\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 1350/850
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "1350MHz / 850MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 1350MHz / 850MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x1b\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x22\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 1400/850
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "1400MHz / 850MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 1400MHz / 850MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x1c\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x22\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 1450/850
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "1450MHz / 850MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 1450MHz / 850MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x1d\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x22\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 1500/850
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "1500MHz / 850MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 1500MHz / 850MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x1e\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x22\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
        	# RSX OC 300/875
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "300MHz / 875MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 300MHz / 875MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x06\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x23\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
        	# RSX OC 350/875
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "350MHz / 875MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 350MHz / 875MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x07\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x23\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
        	# RSX OC 400/875
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "400MHz / 875MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 400MHz / 875MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x08\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x23\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
        	# RSX OC 450/875
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "450MHz / 875MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 450MHz / 875MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x09\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x23\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
        	# RSX OC 500/875
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "500MHz / 875MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 500MHz / 875MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x23\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
        	# RSX OC 550/875
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "550MHz / 875MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 550MHz / 875MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x0b\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x23\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
        	# RSX OC 600/875
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "600MHz / 875MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 600MHz / 875MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x0c\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x23\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 650/875
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "650MHz / 875MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 650MHz / 875MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x0d\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x23\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 700/875
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "700MHz / 875MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 700MHz / 875MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x0e\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x23\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 750/875
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "750MHz / 875MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 750MHz / 875MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x0f\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x23\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 800/875
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "800MHz / 875MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 800MHz / 875MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x10\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x23\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 850/875
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "850MHz / 875MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 850MHz / 875MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x11\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x23\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 900/875
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "900MHz / 875MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 900MHz / 875MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x12\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x23\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 950/875
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "950MHz / 875MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 950MHz / 875MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x13\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x23\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 1000/875
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "1000MHz / 875MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 1000MHz / 875MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x14\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x23\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 1050/875
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "1050MHz / 875MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 1050MHz / 875MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x15\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x23\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 1100/875
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "1100MHz / 875MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 1100MHz / 875MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x16\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x23\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 1150/875
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "1150MHz / 875MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 1150MHz / 875MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x17\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x23\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 1200/875
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "1200MHz / 875MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 1200MHz / 875MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x18\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x23\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 1250/875
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "1250MHz / 875MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 1250MHz / 875MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x19\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x23\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 1300/875
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "1300MHz / 875MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 1300MHz / 875MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x1a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x23\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 300/900
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "300MHz / 900MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 300MHz / 900MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x06\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x24\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 350/900
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "350MHz / 900MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 350MHz / 900MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x07\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x24\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }	
		# RSX OC 400/900
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "400MHz / 900MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 400MHz / 900MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x08\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x24\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 450/900
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "450MHz / 900MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 450MHz / 900MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x09\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x24\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 500/900
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "500MHz / 900MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 500MHz / 900MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x24\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 550/900
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "550MHz / 900MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 550MHz / 900MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x0b\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x24\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 600/900
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "600MHz / 900MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 600MHz / 900MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x0c\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x24\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 650/900
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "650MHz / 900MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 650MHz / 900MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x0d\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x24\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 700/900
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "700MHz / 900MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 700MHz / 900MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x0e\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x24\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 750/900
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "750MHz / 900MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 750MHz / 900MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x0f\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x24\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 800/900
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "800MHz / 900MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 800MHz / 900MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x10\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x24\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 850/900
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "850MHz / 900MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 850MHz / 900MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x11\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x24\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 900/900
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "900MHz / 900MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 900MHz / 900MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x12\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x24\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 950/900
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "950MHz / 900MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 950MHz / 900MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x13\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x24\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 1000/900
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "1000MHz / 900MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 1000MHz / 900MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x14\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x24\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 1050/900
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "1050MHz / 900MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 1050MHz / 900MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x15\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x24\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 1100/900
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "1100MHz / 900MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 1100MHz / 900MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x16\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x24\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 1150/900
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "1150MHz / 900MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 1150MHz / 900MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x17\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x24\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 1200/900
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "1200MHz / 900MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 1200MHz / 900MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x18\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x24\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 1250/900
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "1250MHz / 900MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 1250MHz / 900MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x19\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x24\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 1300/900
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "1300MHz / 900MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 1300MHz / 900MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x1a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x24\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
        	# RSX OC 450/925
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "450MHz / 925MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 450MHz / 925MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x09\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x25\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
        	# RSX OC 500/925
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "500MHz / 925MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 500MHz / 925MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x25\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
        	# RSX OC 550/925
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "550MHz / 925MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 550MHz / 925MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x0b\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x25\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
        	# RSX OC 600/925
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "600MHz / 925MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 600MHz / 925MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x0c\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x25\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 650/925
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "650MHz / 925MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 650MHz / 925MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x0d\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x25\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 700/925
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "700MHz / 925MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 700MHz / 925MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x0e\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x25\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 750/925
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "750MHz / 925MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 750MHz / 925MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x0f\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x25\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 800/925
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "800MHz / 925MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 800MHz / 925MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x10\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x25\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 850/925
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "850MHz / 925MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 850MHz / 925MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x11\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x25\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 900/925
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "900MHz / 925MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 900MHz / 925MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x12\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x25\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 950/925
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "950MHz / 925MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 950MHz / 925MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x13\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x25\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 1000/925
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "1000MHz / 925MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 1000MHz / 925MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x14\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x25\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 450/950
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "450MHz / 950MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 450MHz / 950MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x09\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x26\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 500/950
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "500MHz / 950MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 500MHz / 950MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x26\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 550/950
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "550MHz / 950MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 550MHz / 950MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x0b\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x26\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 600/950
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "600MHz / 950MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 600MHz / 950MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x0c\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x26\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 650/950
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "650MHz / 950MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 650MHz / 950MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x0d\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x26\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 700/950
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "700MHz / 950MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 700MHz / 950MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x0e\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x26\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 750/950
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "750MHz / 950MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 750MHz / 950MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x0f\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x26\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 800/950
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "800MHz / 950MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 800MHz / 950MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x10\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x26\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 850/950
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "850MHz / 950MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 850MHz / 950MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x11\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x26\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 900/950
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "900MHz / 950MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 900MHz / 950MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x12\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x26\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 950/950
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "950MHz / 950MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 950MHz / 950MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x13\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x26\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
        	# RSX OC 450/975
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "450MHz / 975MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 450MHz / 975MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x09\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x27\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
        	# RSX OC 500/975
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "500MHz / 975MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 500MHz / 975MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x27\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
        	# RSX OC 550/975
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "550MHz / 975MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 550MHz / 975MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x0b\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x27\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
        	# RSX OC 600/975
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "600MHz / 975MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 600MHz / 975MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x0c\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x27\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
        	# RSX OC 650/975
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "650MHz / 975MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 650MHz / 975MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x0d\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x27\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 700/975
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "700MHz / 975MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 700MHz / 975MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x0e\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x27\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 750/975
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "750MHz / 975MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 750MHz / 975MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x0f\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x27\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 800/975
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "800MHz / 975MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 800MHz / 975MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x10\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x27\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 850/975
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "850MHz / 975MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 850MHz / 975MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x11\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x27\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 900/975
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "900MHz / 975MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 900MHz / 975MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x12\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x27\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 950/975
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "950MHz / 975MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 950MHz / 975MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x13\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x27\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 1000/975
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "1000MHz / 975MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 1000MHz / 975MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x14\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x27\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 450/1000
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "450MHz / 1000MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 450MHz / 1000MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x09\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x28\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 500/1000
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "500MHz / 1000MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 500MHz / 1000MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x28\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 550/1000
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "550MHz / 1000MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 550MHz / 1000MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x0b\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x28\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 600/1000
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "600MHz / 1000MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 600MHz / 1000MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x0c\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x28\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 650/1000
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "650MHz / 1000MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 650MHz / 1000MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x0d\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x28\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 700/1000
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "700MHz / 1000MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 700MHz / 1000MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x0e\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x28\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 750/1000
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "750MHz / 1000MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 750MHz / 1000MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x0f\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x28\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 800/1000
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "800MHz / 1000MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 800MHz / 1000MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x10\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x28\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 850/1000
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "850MHz / 1000MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 850MHz / 1000MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x11\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x28\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 900/1000
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "900MHz / 1000MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 900MHz / 1000MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x12\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x28\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 950/1000
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "950MHz / 1000MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 950MHz / 1000MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x13\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x28\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 1000/1000
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "1000MHz / 1000MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 1000MHz / 1000MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x14\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x28\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 700/1025
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "700MHz / 1025MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 700MHz / 1025MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x0e\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x29\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 750/1025
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "750MHz / 1025MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 750MHz / 1025MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x0f\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x29\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 800/1025
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "800MHz / 1025MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 800MHz / 1025MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x10\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x29\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 850/1025
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "850MHz / 1025MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 850MHz / 1025MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x11\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x29\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 900/1025
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "900MHz / 1025MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 900MHz / 1025MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x12\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x29\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 950/1025
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "950MHz / 1025MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 950MHz / 1025MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x13\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x29\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 1000/1025
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "1000MHz / 1025MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 1000MHz / 1025MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x14\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x29\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 700/1050
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "700MHz / 1050MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 700MHz / 1050MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x0e\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x2a\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 750/1050
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "750MHz / 1050MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 750MHz / 1050MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x0f\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x2a\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 800/1050
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "800MHz / 1050MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 800MHz / 1050MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x10\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x2a\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 850/1050
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "850MHz / 1050MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 850MHz / 1050MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x11\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x2a\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 900/1050
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "900MHz / 1050MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 900MHz / 1050MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x12\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x2a\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 950/1050
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "950MHz / 1050MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 950MHz / 1050MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x13\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x2a\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 1000/1050
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "1000MHz / 1050MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 1000MHz / 1050MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x14\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x2a\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 700/1075
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "700MHz / 1075MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 700MHz / 1075MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x0e\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x2b\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 750/1075
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "750MHz / 1075MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 750MHz / 1075MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x0f\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x2b\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 800/1075
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "800MHz / 1075MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 800MHz / 1075MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x10\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x2b\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 850/1075
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "850MHz / 1075MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 850MHz / 1075MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x11\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x2b\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 900/1075
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "900MHz / 1075MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 900MHz / 1075MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x12\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x2b\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 950/1075
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "950MHz / 1075MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 950MHz / 1075MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x13\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x2b\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 1000/1075
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "1000MHz / 1075MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 1000MHz / 1075MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x14\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x2b\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 700/1100
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "700MHz / 1100MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 700MHz / 1100MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x0e\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x2c\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 750/1100
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "750MHz / 1100MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 750MHz / 1100MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x0f\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x2c\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 800/1100
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "800MHz / 1100MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 800MHz / 1100MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x10\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x2c\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 850/1100
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "850MHz / 1100MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 850MHz / 1100MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x11\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x2c\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 900/1100
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "900MHz / 1100MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 900MHz / 1100MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x12\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x2c\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 950/1100
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "950MHz / 1100MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 950MHz / 1100MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x13\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x2c\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 1000/1100
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "1000MHz / 1100MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 1000MHz / 1100MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x14\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x2c\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 700/1125
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "700MHz / 1125MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 700MHz / 1125MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x0e\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x2d\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 750/1125
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "750MHz / 1125MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 750MHz / 1125MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x0f\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x2d\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 800/1125
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "800MHz / 1125MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 800MHz / 1125MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x10\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x2d\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 850/1125
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "850MHz / 1125MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 850MHz / 1125MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x11\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x2d\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 900/1125
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "900MHz / 1125MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 900MHz / 1125MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x12\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x2d\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 950/1125
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "950MHz / 1125MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 950MHz / 1125MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x13\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x2d\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 1000/1125
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "1000MHz / 1125MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 1000MHz / 1125MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x14\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x2d\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 700/1150
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "700MHz / 1150MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 700MHz / 1150MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x0e\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x2e\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 750/1150
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "750MHz / 1150MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 750MHz / 1150MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x0f\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x2e\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 800/1150
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "800MHz / 1150MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 800MHz / 1150MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x10\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x2e\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 850/1150
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "850MHz / 1150MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 850MHz / 1150MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x11\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x2e\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 900/1150
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "900MHz / 1150MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 900MHz / 1150MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x12\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x2e\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 950/1150
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "950MHz / 1150MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 950MHz / 1150MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x13\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x2e\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 1000/1150
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "1000MHz / 1150MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 1000MHz / 1150MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x14\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x2e\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 700/1175
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "700MHz / 1175MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 700MHz / 1175MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x0e\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x2f\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 750/1175
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "750MHz / 1175MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 750MHz / 1175MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x0f\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x2f\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 800/1175
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "800MHz / 1175MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 800MHz / 1175MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x10\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x2f\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 850/1175
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "850MHz / 1175MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 850MHz / 1175MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x11\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x2f\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 900/1175
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "900MHz / 1175MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 900MHz / 1175MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x12\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x2f\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 950/1175
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "950MHz / 1175MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 950MHz / 1175MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x13\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x2f\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 1000/1175
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "1000MHz / 1175MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 1000MHz / 1175MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x14\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x2f\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 700/1200
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "700MHz / 1200MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 700MHz / 1200MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x0e\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x30\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 750/1200
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "750MHz / 1200MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 750MHz / 1200MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x0f\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x30\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 800/1200
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "800MHz / 1200MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 800MHz / 1200MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x10\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x30\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 850/1200
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "850MHz / 1200MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 850MHz / 1200MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x11\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x30\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 900/1200
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "900MHz / 1200MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 900MHz / 1200MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x12\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x30\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 950/1200
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "950MHz / 1200MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 950MHz / 1200MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x13\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x30\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 1000/1200
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "1000MHz / 1200MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 1000MHz / 1200MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x14\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x30\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 700/1225
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "700MHz / 1225MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 700MHz / 1225MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x0e\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x31\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 750/1225
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "750MHz / 1225MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 750MHz / 1225MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x0f\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x31\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 800/1225
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "800MHz / 1225MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 800MHz / 1225MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x10\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x31\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 850/1225
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "850MHz / 1225MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 850MHz / 1225MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x11\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x31\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 900/1225
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "900MHz / 1225MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 900MHz / 1225MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x12\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x31\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 950/1225
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "950MHz / 1225MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 950MHz / 1225MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x13\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x31\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 1000/1225
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "1000MHz / 1225MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 1000MHz / 1225MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x14\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x31\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 700/1250
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "700MHz / 1250MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 700MHz / 1250MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x0e\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x32\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 750/1250
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "750MHz / 1250MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 750MHz / 1250MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x0f\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x32\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 800/1250
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "800MHz / 1250MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 800MHz / 1250MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x10\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x32\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 850/1250
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "850MHz / 1250MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 850MHz / 1250MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x11\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x32\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 900/1250
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "900MHz / 1250MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 900MHz / 1250MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x12\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x32\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 950/1250
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "950MHz / 1250MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 950MHz / 1250MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x13\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x32\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 1000/1250
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "1000MHz / 1250MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 1000MHz / 1250MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x14\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x32\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 800/1275
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "800MHz / 1275MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 800MHz / 1275MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x10\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x33\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 850/1275
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "850MHz / 1275MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 850MHz / 1275MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x11\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x33\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 900/1275
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "900MHz / 1275MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 900MHz / 1275MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x12\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x33\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 950/1275
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "950MHz / 1275MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 950MHz / 1275MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x13\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x33\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 1000/1275
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "1000MHz / 1275MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 1000MHz / 1275MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x14\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x33\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 800/1300
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "800MHz / 1300MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 800MHz / 1300MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x10\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x34\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 850/1300
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "850MHz / 1300MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 850MHz / 1300MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x11\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x34\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 900/1300
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "900MHz / 1300MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 900MHz / 1300MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x12\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x34\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 950/1300
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "950MHz / 1300MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 950MHz / 1300MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x13\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x34\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 1000/1300
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "1000MHz / 1300MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 1000MHz / 1300MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x14\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x34\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 800/1325
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "800MHz / 1325MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 800MHz / 1325MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x10\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x35\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 850/1325
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "850MHz / 1325MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 850MHz / 1325MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x11\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x35\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 900/1325
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "900MHz / 1325MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 900MHz / 1325MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x12\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x35\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 950/1325
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "950MHz / 1325MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 950MHz / 1325MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x13\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x35\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 1000/1325
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "1000MHz / 1325MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 1000MHz / 1325MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x14\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x35\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 800/1350
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "800MHz / 1350MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 800MHz / 1350MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x10\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x36\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 850/1350
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "850MHz / 1350MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 850MHz / 1350MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x11\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x36\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 900/1350
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "900MHz / 1350MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 900MHz / 1350MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x12\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x36\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 950/1350
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "950MHz / 1350MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 950MHz / 1350MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x13\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x36\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 1000/1350
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "1000MHz / 1350MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 1000MHz / 1350MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x14\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x36\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 800/1375
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "800MHz / 1375MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 800MHz / 1375MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x10\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x37\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 850/1375
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "850MHz / 1375MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 850MHz / 1375MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x11\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x37\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 900/1375
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "900MHz / 1375MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 900MHz / 1375MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x12\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x37\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 950/1375
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "950MHz / 1375MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 950MHz / 1375MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x13\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x37\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 1000/1375
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "1000MHz / 1375MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 1000MHz / 1375MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x14\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x37\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 800/1400
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "800MHz / 1400MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 800MHz / 1400MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x10\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x38\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 850/1400
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "850MHz / 1400MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 850MHz / 1400MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x11\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x38\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 900/1400
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "900MHz / 1400MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 900MHz / 1400MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x12\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x38\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 950/1400
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "950MHz / 1400MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 950MHz / 1400MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x13\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x38\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 1000/1400
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "1000MHz / 1400MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 1000MHz / 1400MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x14\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x38\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 800/1425
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "800MHz / 1425MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 800MHz / 1425MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x10\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x39\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 850/1425
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "850MHz / 1425MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 850MHz / 1425MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x11\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x39\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 900/1425
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "900MHz / 1425MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 900MHz / 1425MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x12\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x39\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 950/1425
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "950MHz / 1425MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 950MHz / 1425MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x13\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x39\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 1000/1425
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "1000MHz / 1425MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 1000MHz / 1425MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x14\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x39\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 800/1450
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "800MHz / 1450MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 800MHz / 1450MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x10\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x3a\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 850/1450
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "850MHz / 1450MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 850MHz / 1450MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x11\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x3a\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 900/1450
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "900MHz / 1450MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 900MHz / 1450MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x12\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x3a\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 950/1450
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "950MHz / 1450MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 950MHz / 1450MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x13\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x3a\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 1000/1450
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "1000MHz / 1450MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 1000MHz / 1450MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x14\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x3a\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 800/1475
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "800MHz / 1475MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 800MHz / 1475MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x10\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x3b\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 850/1475
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "850MHz / 1475MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 850MHz / 1475MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x11\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x3b\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 900/1475
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "900MHz / 1475MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 900MHz / 1475MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x12\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x3b\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 950/1475
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "950MHz / 1475MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 950MHz / 1475MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x13\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x3b\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 1000/1475
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "1000MHz / 1475MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 1000MHz / 1475MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x14\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x3b\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 800/1500
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "800MHz / 1500MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 800MHz / 1500MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x10\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x3c\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 850/1500
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "850MHz / 1500MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 850MHz / 1500MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x11\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x3c\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 900/1500
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "900MHz / 1500MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 900MHz / 1500MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x12\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x3c\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 950/1500
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "950MHz / 1500MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 950MHz / 1500MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x13\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x3c\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
		# RSX OC 1000/1500
		if {$::01_patch_rsx_oc::options(--patch-lv1-rsx-oc) == "1000MHz / 1500MHz"} {
            log "Patching LV1 hypervisor to overclock RSX to 1000MHz / 1500MHz"
			set search  "\x0a\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x1a\x04"
			set replace "\x14\x02\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x3c\x04"
			set offset 0
			set mask 0				
			# PATCH THE ELF BINARY
			catch_die {::patch_elf $elf $search $offset $replace $mask} "Unable to patch self [file tail $elf]" 
        }
	}
}

