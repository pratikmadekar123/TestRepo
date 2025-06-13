FROM openjdk:17
EXPOSE 8081
#WORKDIR /app

# Copy JAR file
ADD target/*.jar test-app.jar

# Optional: Copy profile-based config
# COPY src/main/resources/application-prod.yml /app/config/


ENTRYPOINT ["java", "-jar", "/test-app.jar"]
