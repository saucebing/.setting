EDITOR=vim
PAGER="less"

GREP_OPTIONS='--color=auto'
GREP_COLOR='3;33'

# for python
#PYTHONVERSION="2.7.8"
#PYTHONROOT=${HOME}/vroot/local/Python-${PYTHONVERSION}
#export PATH=${PYTHONROOT}/bin:${PATH}
#export LD_LIBRARY_PATH=${PYTHONROOT}/lib:${LD_LIBRARY_PATH}
#
## CUDA
#CUDAVERSION="5.5"
#CUDAROOT=${HOME}/vroot/local/cuda-${CUDAVERSION}
#export PATH=${CUDAROOT}/bin:${PATH}
#export LD_LIBRARY_PATH=${CUDAROOT}/lib64:${LD_LIBRARY_PATH}
#
## cwp_su
SUVERSION="43"
export CWPROOT=${HOME}/tar/cwp_su_all_${SUVERSION}
export PATH=${CWPROOT}/bin:${PATH}
export LD_LIBRARY_PATH=${CWPROOT}/lib:${LD_LIBRARY_PATH}
#
## intel compiler toolkits
#ICCROOT=${HOME}/vroot/opt/composerxe
#INTELCOMPILERVAR=${ICCROOT}/bin/compilervars.sh
#if [[ -f $INTELCOMPILERVAR ]]; then
#  source $INTELCOMPILERVAR intel64
#fi
#
## intel mpi
#IMPIROOT=${HOME}/vroot/opt/impi
#INTELMPIVAR=${IMPIROOT}/bin64/mpivars.sh
#if [[ -f $INTELMPIVAR ]]; then
#  source $INTELMPIVAR
#fi
#

# for icc
source /opt/intel/compilers_and_libraries/linux/bin/compilervars.sh intel64

# for mkl
source /opt/intel/mkl/bin/mklvars.sh intel64

# for boost
export LD_LIBRARY_PATH=~/tar/boost_1_61_0/stage/lib:$LD_LIBRARY_PATH

# for mpich
MPICHVERSION="3.1.4"
MPICHROOT=${HOME}/soft/mpich-3.1.4
PATH=${MPICHROOT}/bin:${PATH}
LD_LIBRARY_PATH=${MPICHROOT}/lib64:${LD_LIBRARY_PATH}
# for madagascar
MADAGASCARVERSION="1.7"
MADAGASCARROOT=${HOME}/soft/madagascar-1.7
RSFROOT=${MADAGASCARROOT}
MADAGASCARENV=${MADAGASCARROOT}/share/madagascar/etc/env.sh
if [[ -f $MADAGASCARENV ]]; then
  source $MADAGASCARENV
fi

## export PATH, MANPATH, INFOPATH for texlive 2012
#export PATH=/usr/local/texlive/2012/bin/x86_64-linux:$PATH
#export MANPATH=/usr/local/texlive/2012/texmf/doc/man:$MANPATH
#export INFOPATH=/usr/local/texlive/2012/texmf/doc/info:$INFOPATH
#
## preceed personal path before system path
## it is better placed at the last line
export LD_LIBRARY_PATH=/lib64:$LD_LIBRARY_PATH

export PATH=${PATH}:/usr/sbin/
#export PATH=$HOME/vroot/bin:${PATH}
#export PATH=${HOME}/vroot/local/mpich-3.1.2/bin/:${PATH}
#
## vim: ft=zsh
