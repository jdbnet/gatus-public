# Original image
FROM twinproduction/gatus:latest

# Set environment variables
ARG POSTGRES_USER
ARG POSTGRES_PASSWORD
ARG POSTGRES_DB

ENV POSTGRES_USER=$POSTGRES_USER
ENV POSTGRES_PASSWORD=$POSTGRES_PASSWORD
ENV POSTGRES_DB=$POSTGRES_DB

# Copy config
COPY config.yaml ./config/config.yaml

# Expose web UI port
EXPOSE 8080