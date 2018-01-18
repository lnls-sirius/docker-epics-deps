FROM centos:7.4.1708

ENV COMMIT v0.4.3

RUN yum install -y \
    git \
    sudo \
    wget \
    curl \
    telnet && \
    git clone https://github.com/lnls-sirius/epics-dev.git /tmp/epics-dev && \
    cd /tmp/epics-dev && \
    git checkout ${COMMIT} && \
    ./run-all.sh -o -i -c -s yes && \
    yum clean all && \
    rm -rf /var/cache/yum
