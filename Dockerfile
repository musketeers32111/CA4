# Use an official PostgreSQL image as a base image
FROM postgres:latest

# Set environment variables
ENV POSTGRES_DB mydatabase
ENV POSTGRES_USER myuser
ENV POSTGRES_PASSWORD mypassword

# Expose the PostgreSQL port
EXPOSE 5432

# Copy SQL script into the image
COPY init_database.sql /docker-entrypoint-initdb.d/