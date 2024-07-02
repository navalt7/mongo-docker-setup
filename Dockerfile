# Use the official MongoDB image from Docker Hub
FROM mongo:latest

# Set environment variables for MongoDB (same as your connection string)
ENV MONGO_INITDB_ROOT_USERNAME=navalthakur70
ENV MONGO_INITDB_ROOT_PASSWORD=RfDyFM6oydhjD4M2
ENV MONGO_INITDB_DATABASE=myInstagramDB

# Expose the default MongoDB port
EXPOSE 27017

# Command to run the MongoDB server
CMD ["mongod", "--auth", "--bind_ip_all"]
