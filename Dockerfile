FROM centos:7.4.1708

RUN yum install -y git sudo && \
    git clone https://github.com/lnls-sirius/epics-dev.git /tmp/epics-dev && \
    cd /tmp/epics-dev && \
    git checkout fba3baccc24575ad5fcb995903ddce94d3817fb5 && \
    ./run-all.sh -o -i -c -s yes && \
    yum clean all && \
    rm -rf /var/cache/yum
