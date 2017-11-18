FROM debian:9.2

RUN apt-get update && apt-get install -y \
    git \
    sudo \
    wget \
    curl && \
    git clone https://github.com/lnls-sirius/epics-dev.git /tmp/epics-dev && \
    cd /tmp/epics-dev && \
    git checkout 6043ec252397852a4782e0df0f0cc96e851eeaa6 && \
    ./run-all.sh -o -i -c -s yes && \
    rm -rf /var/lib/apt/lists/*
