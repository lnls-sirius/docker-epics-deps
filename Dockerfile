FROM debian:9.2

RUN apt-get update && apt-get install -y \
    git \
    sudo \
    wget \
    curl && \
    git clone https://github.com/lnls-sirius/epics-dev.git /tmp/epics-dev && \
    cd /tmp/epics-dev && \
    git checkout 9e5c3135e90b0debc3f17ab3880cfd5a61d30757 && \
    ./run-all.sh -o -i -c -s yes && \
    rm -rf /var/lib/apt/lists/*
