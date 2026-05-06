# Verified stable tag for Tomcat 9 on JRE 11 Slim
FROM tomcat:9.0.116-jre11-temurin-jammy

# Clean up default apps
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy your war file
COPY target/shopping-site-web-app.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080
CMD ["catalina.sh", "run"]
