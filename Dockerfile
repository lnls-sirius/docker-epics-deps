FROM debian:9.2

RUN apt-get update && apt-get install -y \
    git \
    sudo && \
    rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/lnls-sirius/epics-dev.git /tmp/epics-dev && \
    cd /tmp/epics-dev && \
    git checkout a3d887fb153963b7c6268e33e0ff4725e96847dd && \
    ./run-all.sh -o -i -c -s yes && \
    rm -rf /var/lib/apt/lists/*
