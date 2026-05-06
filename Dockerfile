# Use the updated, secure version as the single base image
FROM tomcat:9.0.96-jdk11-openjdk-slim

# Clean up default apps
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy your specific war file to the ROOT of the server
COPY target/shopping-site-web-app.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080
CMD ["catalina.sh", "run"]
