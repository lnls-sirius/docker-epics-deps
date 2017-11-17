FROM debian:9.2

RUN apt-get update && apt-get install -y \
    git \
    sudo \
    wget \
    curl && \
    git clone https://github.com/lnls-sirius/epics-dev.git /tmp/epics-dev && \
    cd /tmp/epics-dev && \
    git checkout fba3baccc24575ad5fcb995903ddce94d3817fb5 && \
    ./run-all.sh -o -i -c -s yes && \
    rm -rf /var/lib/apt/lists/*
