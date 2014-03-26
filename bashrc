# .bashrc

# User specific aliases and functions

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

export PATH=~/bin:/home/mdl/poremba/bin:$PATH
export PATH="$PATH:/home/mdl/poremba/crosstool/gcc-4.1.0-glibc-2.3.6/alpha-unknown-linux-gnu/bin"
export PATH="$PATH:/home/mdl/poremba/cuda/bin"

export LD_LIBRARY_PATH=/home/mdl/poremba/lib:$LD_LIBRARY_PATH
export LD_LIBRARY_PATH=/home/mdl/poremba/lib64:$LD_LIBRARY_PATH

export M5_PATH=/home/mdl/poremba/gem5/gem5
export CUDAHOME=/home/mdl/poremba/cuda
export NVIDIA_CUDA_SDK_LOCATION=/home/mdl/poremba/NVIDIA_GPU_Computing_SDK/C
export SPEC2006_PATH=/home/mdl/poremba/benchmarks
export SCRATCH_PATH=/home/mdl/poremba/scratch

export PIN_HOME="/home/mdl/poremba/simulators/sniper/pintool/pin-2.12-58423-gcc.4.4.7-linux"

export SVN_EDITOR="vim"
export HGEDITOR="vim"

export PS1="\n\[\e[34;1m\]\u@\h\[\e[30;1m\] \[\e[31;1m\]- \[\e[34;1m\]\@ \[\e[31;1m\]- \[\e[34;1m\]\d\[\e[30;1m\]\n\[\e[31;1m\]- \[\[\e[32;1m\]\w\[\e[31;1m\] --> \[\e[0m\]"


export LM_LICENSE_FILE="1700@dmv.cse.psu.edu:1700@telperion.cse.psu.edu:27011@lm.rcc.psu.edu"
