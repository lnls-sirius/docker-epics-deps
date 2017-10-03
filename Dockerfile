FROM centos:7.4.1708

RUN yum install -y git sudo && \
    git clone https://github.com/lnls-sirius/epics-dev.git /tmp/epics-dev && \
    cd /tmp/epics-dev && \
    git checkout 086a3332b68bba34905f61c4397d27d48c085178 && \
    ./run-all.sh -o -i -c -s yes && \
    yum clean all && \
    rm -rf /var/cache/yum
