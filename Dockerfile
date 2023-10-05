# Use an official PostgreSQL image as a parent image
FROM postgres:latest

# Set environment variables for the database
ENV POSTGRES_DB=mydatabase
ENV POSTGRES_USER=myuser
ENV POSTGRES_PASSWORD=mypassword