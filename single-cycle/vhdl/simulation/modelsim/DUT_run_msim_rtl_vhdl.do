transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/aditya/Projects/iitb/ee309/project-2/backup/vhdl/Multiplexer16bit4to1.vhd}
vcom -93 -work work {/home/aditya/Projects/iitb/ee309/project-2/backup/vhdl/BitShifter.vhd}
vcom -93 -work work {/home/aditya/Projects/iitb/ee309/project-2/backup/vhdl/SignExtender9.vhd}
vcom -93 -work work {/home/aditya/Projects/iitb/ee309/project-2/backup/vhdl/Multiplexer3bit4to1.vhd}
vcom -93 -work work {/home/aditya/Projects/iitb/ee309/project-2/backup/vhdl/SignExtender6.vhd}
vcom -93 -work work {/home/aditya/Projects/iitb/ee309/project-2/backup/vhdl/Multiplexer3bit2to1.vhd}
vcom -93 -work work {/home/aditya/Projects/iitb/ee309/project-2/backup/vhdl/FlagRegister.vhd}
vcom -93 -work work {/home/aditya/Projects/iitb/ee309/project-2/backup/vhdl/ZeroAppender.vhd}
vcom -93 -work work {/home/aditya/Projects/iitb/ee309/project-2/backup/vhdl/Multiplexer16bit2to1.vhd}
vcom -93 -work work {/home/aditya/Projects/iitb/ee309/project-2/backup/vhdl/ALU.vhd}
vcom -93 -work work {/home/aditya/Projects/iitb/ee309/project-2/backup/vhdl/RAM.vhd}
vcom -93 -work work {/home/aditya/Projects/iitb/ee309/project-2/backup/vhdl/ROM.vhd}
vcom -93 -work work {/home/aditya/Projects/iitb/ee309/project-2/backup/vhdl/DUT.vhd}
vcom -93 -work work {/home/aditya/Projects/iitb/ee309/project-2/backup/vhdl/RegisterBank.vhd}
vcom -93 -work work {/home/aditya/Projects/iitb/ee309/project-2/backup/vhdl/SingleCycleDatapath.vhd}
vcom -93 -work work {/home/aditya/Projects/iitb/ee309/project-2/backup/vhdl/Controller.vhd}

vcom -93 -work work {/home/aditya/Projects/iitb/ee309/project-2/backup/vhdl/Testbench.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive -L rtl_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all
