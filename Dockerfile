FROM centos:7.4.1708

RUN yum install -y git sudo && \
    git clone https://github.com/lnls-sirius/epics-dev.git /tmp/epics-dev && \
    cd /tmp/epics-dev && \
    git checkout 75f02b62ba56291e8026598541ce1523ceb69332 && \
    ./run-all.sh -o -i -c -s yes && \
    yum clean all && \
    rm -rf /var/cache/yum
