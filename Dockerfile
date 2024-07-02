# Use the official MongoDB image from Docker Hub
FROM mongo:latest

# Set environment variables for MongoDB
ENV MONGO_INITDB_ROOT_USERNAME=navalthakur70
ENV MONGO_INITDB_ROOT_PASSWORD=RfDyFM6oydhjD4M2
ENV MONGO_INITDB_DATABASE=myInstagramDB

# Copy SSL certificates into the container
COPY mongodb-key.pem /etc/ssl/mongodb-key.pem
COPY mongodb-cert.pem /etc/ssl/mongodb-cert.pem

# Expose the default MongoDB port
EXPOSE 27017

# Command to run the MongoDB server with SSL/TLS
CMD ["mongod", "--auth", "--bind_ip_all", "--sslMode", "requireSSL", "--sslPEMKeyFile", "/etc/ssl/mongodb-cert.pem", "--sslCAFile", "/etc/ssl/mongodb-key.pem"]
