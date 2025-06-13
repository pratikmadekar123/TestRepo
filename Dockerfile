FROM openjdk:17
EXPOSE 8081
#WORKDIR /app

# Copy JAR file
ADD target/*.jar TestApp.jar

# Optional: Copy profile-based config
# COPY src/main/resources/application-prod.yml /app/config/


ENTRYPOINT ["java", "-jar", "/TestApp.jar"]
