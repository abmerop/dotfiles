# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git mercurial zsh-syntax-highlighting) 

alias qstat="ssh titan qstat"
alias qdel="ssh titan qdel"
alias qselect="ssh titan qselect"
alias intq="qsub -I -q titan@shai -l walltime=04:00:00 -l nodes=1:ppn=1"
alias intq4="qsub -I -q titan@shai -l walltime=04:00:00 -l nodes=1:ppn=4"
alias qs="ssh titan qstat | grep poremba"

ZSH_THEME="gsd"

source $ZSH/oh-my-zsh.sh

# Git stuff
export EDITOR=vim
unset SSH_ASKPASS

# Customize to your needs...
export PATH=/home/grads/poremba/bin:/usr/local/bin:/usr/bin:/bin

export PATH=${PATH}:/home/software/synopsys-2008/hspice/hspice/bin/

export PATH=${PATH}:/home/grads/poremba/bin:/home/mdl/duan/mmi/mmi/bin.i486-linux/

# QT - for moc
export PATH=${PATH}:/usr/lib64/qt-3.3/bin

# modelsim
export DISPLAY=":0.0"
export PATH=${PATH}:/home/software/mentorgraphics/modeltech-10.0c/modeltech/linux_x86_64/

# calibre
export PATH=${PATH}:/home/software/mentorgraphics/calibre/ixl_cal_2009.3_24.19/bin/

# virtuoso and related tools
export PATH=${PATH}:/home/software/cadence-2009/ldv/tools/bin/
export PATH=${PATH}:/home/software/cadence-2009/ldv/tools/nclauch/bin/
export PATH=${PATH}:/home/software/cadence-2009/dsmse/tools/bin/
export PATH=${PATH}:/home/software/cadence-2009/dsmse/tools/dsm/bin/
export PATH=${PATH}:/home/software/cadence-2009/ic/tools/bin/
export PATH=${PATH}:/home/software/cadence-2009/ic/tools/dfII/binB/
export PATH=${PATH}:/home/software/cadence-2009/icc/tools/bin/
export PATH=${PATH}:/home/software/cadence-2009/psd/tools/bin/
export PATH=${PATH}:/home/software/cadence-2009/ic610/tools.lnx86/dfII/bin/

# Encounter
export PATH=${PATH}:/home/software/cadence-2009/soc81/tools.lnx86/cdnshelp/bin/

# Design compiler 
export PATH=${PATH}:/home/software/cadence-2009/mmsim7.2/tools/bin
export PATH=${PATH}:/home/software/synopsys-2008/synthesis/amd64/syn/bin

# Primetime 
export PATH=${PATH}:/home/software/synopsys-2008/primetime/bin

# Verification tools
export PATH=${PATH}:/home/software/synopsys-2008/formality/bin
export PATH=${PATH}:/home/software/cadence-2009/ius/tools.lnx86/bin/
export PATH=${PATH}:/home/software/synopsys-2008/vcs_mx/bin

# Simics 3.0
export PATH=${PATH}:/home/grads/poremba/bin:/home/mdl/srikanta/simics/simics-3.0.31/bin/

# qstat, etc
export PATH=${PATH}:/usr/pbs/default/bin

# ptx 
export PATH=${PATH}:/home/mdl/poremba/cuda/bin

export VCS_HOME=/home/software/synopsys-2008/vcs_mx
export PATH=~/bin:/home/mdl/poremba/bin:$PATH
export PATH="$PATH:/home/mdl/poremba/crosstool/gcc-4.1.0-glibc-2.3.6/alpha-unknown-linux-gnu/bin"
export PATH=$PATH:/home/other/cg536/bin
export LD_LIBRARY_PATH=/home/mdl/poremba/lib:$LD_LIBRARY_PATH
export LD_LIBRARY_PATH=/home/mdl/poremba/lib64:$LD_LIBRARY_PATH

# gem5 / gem5-gpu stuff
export M5_PATH=/home/mdl/poremba/gem5/gem5
export CUDAHOME=/home/mdl/poremba/cuda
export NVIDIA_CUDA_SDK_LOCATION=/home/mdl/poremba/NVIDIA_GPU_Computing_SDK/C
export SPEC2006_PATH=/home/mdl/poremba/benchmarks/cpu2006
export SCRATCH_PATH=/home/mdl/poremba/scratch

# Sniper stuff
export PIN_HOME="/home/mdl/poremba/simulators/sniper/pintool/pin-2.12-58423-gcc.4.4.7-linux"

export SVN_EDITOR="vim"
export HGEDITOR="vim"

# alpha cross compiler
export PATH="$PATH:/home/mdl/poremba/cross_compilers/alphaev67-unknown-linux-gnu/bin/"

# arm cross compiler
export PATH="$PATH:/home/grads/poremba/mdl/cross_compilers/arm/arm-2013.11/bin"

export LM_LICENSE_FILE="1700@dmv.cse.psu.edu:1700@telperion.cse.psu.edu:27011@lm.rcc.psu.edu"

# Disable annoying crap
setopt append_history no_inc_append_history no_share_history
DISABLE_AUTO_TITLE=true
