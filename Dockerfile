# Use a base image for ARM architecture
FROM arm32v7/ubuntu:latest

# Install necessary packages
RUN apt-get update && \
    apt-get install -y git && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Clone the MongoDB-OrangePI repository
RUN git clone https://github.com/GoreevArtem/MongoDB-OrangePI.git

RUN chmod 777 MongoDB-OrangePI/install.sh

CMD [ "./MongoDB-OrangePI/install.sh" ]