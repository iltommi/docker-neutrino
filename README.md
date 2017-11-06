# Smilei docker 

This is a copy of Smilei https://smileipic.github.io/Smilei built on fedora

```
docker pull iltommi/docker-smilei

docker run -v $(pwd):/mnt -i -t iltommi/docker-smilei /bin/bash
mpirun -n 4 smilei /Smilei/benchmarks/tst1d_1_clb_explosion.py

ipython

import happi
s=Smilei()
```
………

exit iPython
exit docker

```
docker ps -a
CONTAINER ID   IMAGE                      COMMAND          CREATED             STATUS                      PORTS    NAMES
d5b7467d9746   iltommi/docker-smilei      "/bin/bash"      About an hour ago   Exited (0) 6 seconds ago             fervent_nobel

docker start -i fervent_nobel
```
