# Use the official Prometheus image as the base
FROM prom/prometheus:latest

# Copy the custom Prometheus configuration (prometheus.yml)
COPY ./prometheus.yml /etc/prometheus/prometheus.yml

# Expose Prometheus's default port
EXPOSE 9090

# Run Prometheus with the custom configuration
CMD ["/bin/prometheus", "--config.file=/etc/prometheus/prometheus.yml"]
