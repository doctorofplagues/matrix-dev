FROM debian:bookworm-slim

# Install dependencies
RUN apt-get update && \
    apt-get install -y curl unzip bash && \
    apt-get clean

# Download and install Conduit binary
RUN curl -L https://gitlab.com/famedly/conduit/-/jobs/artifacts/master/raw/conduit-x86_64-unknown-linux-gnu.zip?job=build-release \
    -o /tmp/conduit.zip && \
    unzip /tmp/conduit.zip -d /usr/local/bin && \
    chmod +x /usr/local/bin/conduit

# Create directory for config and data
RUN mkdir -p /var/lib/matrix-conduit

# Default command
CMD ["/bin/bash"]
