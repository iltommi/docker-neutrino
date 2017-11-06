# Smilei docker 

This is a copy of Smilei https://smileipic.github.io/Smilei built on fedora

## DockerHub image

```bash
docker pull iltommi/docker-smilei

docker run -v $(pwd):/mnt -i -t iltommi/docker-smilei /bin/bash
````

## Local image

```bash
git clone https://github.com/iltommi/docker-smilei.git
cd docker-smilei
docker build -t smilei docker-smilei

docker run -v $(pwd):/mnt -i -t docker-smilei /bin/bash
````


 
## Example

```bash
cd /mnt
mpirun -n 4 smilei /Smilei/benchmarks/tst1d_1_clb_explosion.py

ipython

import happi
s=Smilei()
```

----

exit iPython
exit docker


## Reopen stopped container

```bash
docker ps -a
CONTAINER ID   IMAGE                      [...]  NAMES
d5b7467d9746   iltommi/docker-smilei      [...]  fervent_nobel

docker start -i fervent_nobel
```
