# Use the official Debian image
FROM debian:bullseye

# Install MariaDB server and client
RUN apt-get update && apt-get install -y mariadb-server mariadb-client

# Copy the configure.sh script to the container
COPY tools/configure.sh /mariadb_conf/configure.sh

# Make the script executable
RUN chmod +x /mariadb_conf/configure.sh

# Expose MariaDB port
EXPOSE 3306

# Run the configure.sh script as the entry point
ENTRYPOINT ["/mariadb_conf/configure.sh"]
