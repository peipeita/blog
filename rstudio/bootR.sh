#!/bin/bash

#============ PBS Options ============
#QSUB -q #####
#QSUB -ug #####
#QSUB -W 1:00
#QSUB -A p=1:t=8:c=8:m=16G
#============ Shell Script ===========
domain="Name of the destination"
export PASSWORD=$(openssl rand -base64 15)
hs=$(echo $(hostname))
# get unused socket per https://unix.stackexchange.com/a/132524--auth-none=0 --auth-pam-helper-path=pam-helper
# tiny race condition between the python & singularity commands
readonly PORT=$(python -c 'import socket; s=socket.socket(); s.bind(("", 0)); print(s.getsockname()[1]); s.close()')
cat 1>&2 <<END
1. SSH tunnel from your workstation using the following command:

   ssh -N -L 8787:${hs}:${PORT} ${USER}@${domain}
   
      and point your web browser to http://localhost:8787
  
  2. log in to RStudio Server using the following credentials:
  
     user: ${USER}
    password: ${PASSWORD}

When done using RStudio Server, terminate the job by:

1. Exit the RStudio Session ("power" button in the top right corner of the RStudio window)
2. Issue the following command on the login node:

  qdel JOBID
END
  
# User-installed R packages go into their home directory
if [ ! -e ${HOME}/.Renviron ]
then
  printf '\nNOTE: creating ~/.Renviron file\n\n'
  echo 'R_LIBS_USER=~/R/%p-library/%v' >> ${HOME}/.Renviron
fi
  
# This example bind mounts the /project directory on the host into the Singularity container.
# By default the only host file systems mounted within the container are $HOME, /tmp, /proc, /sys, and /dev.
singularity exec --bind=$(pwd) ${HOME}/singularity_img/tidyverse.sif rserver --www-port ${PORT} --auth-none=0 --auth-pam-helper-path=pam-helper
printf 'rserver exited' 1>&2
