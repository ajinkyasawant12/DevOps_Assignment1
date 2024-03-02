# Use the official Ubuntu base image
FROM ubuntu:22.04

# Update the package lists # Install Apache
RUN apt-get update && apt-get install -y apache2 --no-install-recommends && rm -rf /var/lib/apt/lists/* ;

# Expose port 8081
EXPOSE 80

# Start Apache service
CMD ["apache2ctl", "-D", "FOREGROUND"]
