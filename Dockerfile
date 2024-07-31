# Use the official OpenJDK 21 image as the base image
FROM openjdk:21-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the Spring Boot application's JAR file into the container
COPY mini-project-expense-tracking-0.0.1-SNAPSHOT.jar app.jar

# Expose the port your Spring Boot application will run on
EXPOSE 8080

# Command to run the application
ENTRYPOINT ["java", "-jar", "/app/app.jar"]