# $HOME/.cshrc:
#	environment configuration for interactive csh-based shells.
#
# A new copy of this file can be retrieved by executing
# '/usr/local/bin/new_dots' at a shell prompt.
#
# Note on Software: Course software (such as Synopsys, Cadence, etc.)
# is now set up through the '.software' file in your home directory.
# See that file to set up your environment for such software.
#

#
# CSE DEFAULTS
#
# It is strongly encouraged that you do not change the 'CSE DEFAULTS'
# section of this file.  If you do so, ensure that you're fully aware
# of the consequences.
#
# Caveat: If you prefer /usr/ucb in front of /usr/bin in your $PATH,
# (i.e. the "old" CSE path), uncomment the following line:
#setenv UCBFIRST 1

setenv MMI_TOOLS /home/mdl/duan/mmi/mmi
setenv PATH ${MMI_TOOLS}/bin.i486-linux/:$PATH

# Set configuration file directory
set confdir = /usr/local/user_conf

# Include the default rcfile.
if ( -r $confdir/cshrc.def ) source $confdir/cshrc.def

#
# END CSE DEFAULTS
#

#
# PERSONAL ADDITIONS
#

# Add personal bin directory to the binary search path.
setenv PATH ~/bin:$PATH

# Some common environment variables
#setenv PAGER   'less'
#setenv MORE    '-cs'
#setenv LESS    '-c -d -e -i -q -s -w'
#setenv EDITOR  'vi'
#setenv EDITOR	'vim'
 
# If we're not an interactive shell, skip the rest of the script.
if (! $?prompt) exit

# Get asynchronous notification about finished jobs.
set notify
 
# The number of commands to save in the history.
set history = 500
 
# Stop the shell from checking for new mail.
unset mail
 
# Source user-created alias file if it exists
if (-r $HOME/.alias.csh) source $HOME/.alias.csh

# Examples of aliases for convenience.

# Change default behavior of 'ls(1)' command on Solaris.
# Linux does some of these by default
switch (`uname -s`)
	case "SunOS":
		alias ls	'ls -F'
		if ($?UCBFIRST) then
			alias ll	'ls -lg'
			alias la	'ls -lga'
		else
			alias ll	'ls -l'
			alias la	'ls -la'
		endif
		alias l.	'la'
		alias tar	'gtar'
		breaksw
	case "Linux":
		alias la	'l.'
		breaksw
endsw

alias lh	'll -h'
 
# This is like "cd ..", but it follows symlinks backwards.
alias up	'cd "$cwd:h"'
 
# Customize the prompt.
set prompt = "`hostname` \!% "

# Limits the sizes of core dumps created by program faults to zero.
limit coredumpsize 0

#
# END PERSONAL ADDITIONS
#
#
# Source CMPEN 411 course shell file
#if ( $HOSTNAME == "taelon.cse.psu.edu" ) echo "HELLO"
#if ( $HOSTNAME == "taelon.cse.psu.edu" ) source /home/faculty/kyusun/.class411
#

#source ~/.emacs.fixbackspace



switch (`uname -s`)
	case "SunOS":
	    alias spin spin_sun
	    breaksw
	case "Linux":
	    alias spin spin_linux
	    breaksw
endsw



# Setup License Server
setenv SNPSLMD_LICENSE_FILE 1700@dmv:1700@telperion:27000@cyberstar.psu.edu
setenv LM_LICENSE_FILE 1700@dmv.cse.psu.edu:1700@telperion.cse.psu.edu:27011@lm.rcc.psu.edu

# Modelsim
setenv PATH ${PATH}:/home/software/mentorgraphics/modeltech-6.5b/modeltech/bin/
if (-r /usr/local/user_conf/cshrc.modelsim) source /usr/local/user_conf/cshrc.modelsim

# Xilinx
#if (-r /usr/local/user_conf/cshrc.xilinx-10.1) source /usr/local/user_conf/cshrc.xilinx-10.1
#setenv LMC_HOME /home/software/xilinx-10.1/ISE/smartmodel/lin/installed_lin


# Cadence CAD Tools
switch (`uname -s`)
        case "SunOS":
	    # Set Up Synopsys (HSPICE)
	    setenv PATH ${PATH}:/import/software/synopsys-2008/hspice/hspice/bin/

	    # Mentor Calibre (DRC/LVS tool)
	    setenv MG_HOME /import/software/mentorgraphics
	    setenv MGC_HOME ${MG_HOME}/calibre-2008/ss5_cal_2008.3_25.16
	    setenv PATH ${PATH}:${MGC_HOME}/bin/

	    # Cadence Suite
	    setenv CDS /import/software/cadence
	    setenv CDS_HOME /import/software/cadence/IC610a
	    setenv CDSHOME ${CDS_HOME}
	    setenv IC610 ${CDS_HOME}
	    setenv CDS_LIC_FILE	1700@telperion.cse.psu.edu
	    # Cadence Tools (Library Manager etc)
	    setenv PATH ${PATH}:${CDS_HOME}/tools/bin:${CDS_HOME}/tools/dfII/bin:${CDS_HOME}/bin
	    # Cadence Help
	    setenv PATH ${PATH}:${CDS}/SOC81/tools/cdnshelp/bin/
	    # Virtuoso
	    setenv PATH ${PATH}:/import/software/cadence/IC610a/tools/dfII/bin/
	    setenv OA_HOME /import/software/cadence/openaccess
            breaksw
        case "Linux":
	    # Set Up Synopsys (HSPICE)
	    setenv PATH /home/software/synopsys-2008/hspice/hspice/bin/:${PATH}

	    # Mentor Calibre (DRC/LVS tool)
	    setenv MG_HOME /home/software/mentorgraphics
	    setenv MGC_HOME $MG_HOME/calibre/ixl_cal_2009.3_24.19
	    setenv PATH ${PATH}:${MGC_HOME}/bin/

	    # Cadence Suite
	    setenv CDS /home/software/cadence-2009
	    setenv CDS_HOME /home/software/cadence-2009/ic5-linux
	    setenv CDSHOME ${CDS_HOME}
	    setenv IC610 ${CDS_HOME}
	    setenv CDS_LIC_FILE 1700@telperion.cse.psu.edu
	    # Cadence Tools (Library Manager etc)
	    setenv PATH ${PATH}:${CDS}/ldv/tools/bin/:${CDS}/ldv/tools/nclauch/bin/:${CDS}/dsmse/tools/bin/:${CDS}/dsmse/tools/dsm/bin/:${CDS}/ic/tools/bin/:${CDS}/ic/tools/dfII/binB/:${CDS}/icc/tools/bin/:${CDS}/psd/tools/bin/
	    # Cadence Help
	    setenv PATH ${PATH}:${CDS}/soc81/tools.lnx86/cdnshelp/bin/
	    # Virtuoso
	    setenv PATH ${PATH}:${CDS}/ic610/tools.lnx86/dfII/bin/
            breaksw
endsw



# Spectre
setenv PATH ${PATH}:/home/software/cadence-2009/mmsim7.2/tools/bin

# DesignCompiler
setenv PATH ${PATH}:/home/software/synopsys-2008/synthesis/amd64/syn/bin

# Primetime
setenv PATH ${PATH}:/home/software/synopsys-2008/primetime/bin

# Formality
setenv PATH ${PATH}:/home/software/synopsys-2008/formality/bin

# NC-Verilog
setenv PATH ${PATH}:/home/software/cadence-2009/ius/tools.lnx86/bin/

#source ~/Desktop/3dchip/3D_PDK3.3.5/cdssetup/setup.csh

setenv PATH ${PATH}:/home/grads/poremba/bin


# R3Integrator
setenv R3L_HOME  /home/mdl/duan/r3Integrator
setenv LD_LIBRARY_PATH /usr/local/lib:/home/grads/poremba/lib:/home/mdl/poremba/crosstool/sparc-sun-solaris2.10/lib


setenv SVN_EDITOR "vim"

alias encounter /home/software/cadence-2009/soc81/tools/bin/encounter
alias encounter_2005 /home/software/cadence-2005/soc/tools.lnx86/bin/encounter
alias pico nano
alias emacs ~/bin/run_emacs
#alias emacs_cmd emacs -nw
alias e ~/bin/run_emacs
#alias gdb /usr/bin/gdb

#
# 3D CHIP STUFF
#
#setenv MGC_DRC_FILES /home/mdl/duan/tezzaron/Cadence_PDK/130nm_Cadence_PDK/chrt13lprf_DK009_Rev_1C_TSC_1B/DRC
#setenv __LVS_RULE_PATH__ ~/3dchip/3D_Chip/tezzaron_12_09/trunk/verification/LVS
#setenv BEOL_STACK 1P6M
#alias add_TDK 'source /home/ugrads/poremba/3dchip/3D_Chip/chrt13lprf_DK009_Rev_1C_TSC_1B/add_TDK'
#setenv TDK_DIR /home/mdl/duan/tezzaron/Cadence_PDK/130nm_Cadence_PDK/chrt13lprf_DK009_Rev_1C_TSC_1B
setenv TDK_DIR /home/faculty/kyusun/c411/ncsu-cdk-1.6.0.beta
setenv CDK_DIR /home/faculty/kyusun/c411/ncsu-cdk-1.6.0.beta

#set DISPLAY=`echo $DISPLAY | sed -e 's/\.0//'`



setenv SIMICS_INSTALL /home/mdl/srikanta/simics/simics-3.0.31/
setenv GEMS /home/mdl/poremba/gems-2.1/

#setenv PS1 "\u in \W \X> "

setenv CUDAHOME /home/mdl/poremba/cuda
setenv M5_PATH /home/mdl/poremba/gem5/gem5
setenv NVIDIA_CUDA_SDK_LOCATION /home/mdl/poremba/NVIDIA_GPU_Computing_SDK/C
setenv PATH ${PATH}:/home/mdl/poremba/cuda/bin

setenv PATH ${PATH}:/home/mdl/srikanta/simics/simics-3.0.31/bin/
#
# Source CMPEN 411 course shell file
switch (`uname -s`)
        case "SunOS":
	if (-r /home/faculty/kyusun/c411/bin/class411) source /home/faculty/kyusun/c411/bin/class411
	breaksw
endsw
#

switch (`uname -s`)
    case "Linux":
        zsh
        #bash
    breaksw
endsw


