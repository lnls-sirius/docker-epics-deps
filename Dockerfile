FROM centos:7.4.1708

RUN yum install -y \
    git \
    sudo \
    wget \
    curl \
    telnet && \
    git clone https://github.com/lnls-sirius/epics-dev.git /tmp/epics-dev && \
    cd /tmp/epics-dev && \
    git checkout 6043ec252397852a4782e0df0f0cc96e851eeaa6 && \
    ./run-all.sh -o -i -c -s yes && \
    yum clean all && \
    rm -rf /var/cache/yum
