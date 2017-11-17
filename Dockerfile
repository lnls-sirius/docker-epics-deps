FROM debian:9.2

RUN apt-get update && apt-get install -y \
    git \
    sudo && \
    rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/lnls-sirius/epics-dev.git /tmp/epics-dev && \
    cd /tmp/epics-dev && \
    git checkout 75f02b62ba56291e8026598541ce1523ceb69332 && \
    ./run-all.sh -o -i -c -s yes && \
    rm -rf /var/lib/apt/lists/*
