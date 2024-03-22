FROM ubuntu:jammy

WORKDIR /app

# Update
RUN apt-get update -y && apt-get upgrade -y

# Install dependencies
RUN apt-get install -y git \
                       cmake \
                       make \
                       python3 \
                       g++ \
                       gcc \
                       python3-dev \
                       python-setuptools \
                       g++ \
                       gcc
# Clone from gitlab
RUN git clone https://gitlab.com/nsnam/ns-3-allinone.git

# Download ns3
RUN cd ns-3-allinone && ./download.py

# Change workdir for the just downloaded folder
WORKDIR /app/ns-3-allinone/ns-3-dev

# Configure and build
RUN ./ns3 configure --enable-examples --enable-tests

RUN ./ns3 build

# ns3 run
CMD ["./ns3", "run", "scratch-simulator"]
