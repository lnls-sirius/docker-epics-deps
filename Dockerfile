FROM debian:9.2

ENV COMMIT base-3.14-synapps-lnls

RUN apt-get update && apt-get install -y \
    git \
    sudo \
    wget \
    curl \
    telnet && \
    git clone https://github.com/lnls-sirius/epics-dev.git /tmp/epics-dev && \
    cd /tmp/epics-dev && \
    git checkout ${COMMIT} && \
    ./run-all.sh -o -i -c -s yes && \
    rm -rf /var/lib/apt/lists/*
