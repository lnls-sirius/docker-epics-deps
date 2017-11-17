FROM centos:7.4.1708

RUN yum install -y git sudo && \
    git clone https://github.com/lnls-sirius/epics-dev.git /tmp/epics-dev && \
    cd /tmp/epics-dev && \
    git checkout a3d887fb153963b7c6268e33e0ff4725e96847dd && \
    ./run-all.sh -o -i -c -s yes && \
    yum clean all && \
    rm -rf /var/cache/yum
