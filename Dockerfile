# Use a modern, supported version of Tomcat
FROM tomcat:9.0-jdk11-openjdk-slim

# Remove default apps to keep it clean (Good QA practice)
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy the .war file produced by your Maven stage
COPY target/shopping-site-web-app.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080
CMD ["catalina.sh", "run"]
