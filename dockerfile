# Use the CentOS base image
FROM centos:latest

# Install httpd (Apache HTTP server)
RUN yum -y update && \
    yum -y install httpd && \
    yum clean all

# Set the working directory
WORKDIR /var/www/html

# Create the index.html file with content
RUN echo "test1" > /var/www/html/index.html

# Expose port 80
EXPOSE 80

# Set the default command to start httpd service in the foreground
CMD ["httpd", "-D", "FOREGROUND"]
