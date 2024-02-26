# Use the official Ubuntu base image
FROM ubuntu:latest

# Update the package lists # Install Apache
RUN apt-get update
RUN apt-get install -y apache2

# Expose port 8081
EXPOSE 8081

# Start Apache service
CMD ["apache2ctl", "-D", "FOREGROUND"]
