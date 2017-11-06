FROM fedora:latest

RUN dnf -y update; \
    dnf install -y gcc-c++ hdf5-openmpi hdf5-openmpi-devel openmpi-devel git which findutils python python-devel; \
    dnf install -y h5py ipython python2-pint sphinx python2-matplotlib 

RUN echo "export PATH=/usr/lib64/openmpi/bin/:$PATH" >> ~/.bashrc;  \
    echo "alias mpirun='mpirun --allow-run-as-root'" >> ~/.bashrc
    
RUN source ~/.bashrc ;                                     \
    git clone https://github.com/SmileiPIC/Smilei.git ;    \
    cd Smilei && make -j$(nproc) && make happi ;           \
    cp smilei /usr/local/bin


