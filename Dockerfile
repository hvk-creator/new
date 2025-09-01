FROM ubuntu:24.04

# Install required packages
RUN DEBIAN_FRONTEND=noninteractive \
    apt-get update \
    && apt-get install -y neofetch nano wget curl \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /app

# Download and install code-server
RUN wget https://github.com/coder/code-server/releases/download/v4.101.2/code-server-4.101.2-linux-amd64.tar.gz \
    && tar -xf code-server-4.101.2-linux-amd64.tar.gz \
    && mv code-server-4.101.2-linux-amd64 code \
    && rm code-server-4.101.2-linux-amd64.tar.gz

# Copy project files
COPY . /app

# Expose port
EXPOSE 8080

# Start code-server
CMD ["./code/bin/code-server", "--auth", "none", "--port", "8080", "--host", "0.0.0.0", "/app"]
