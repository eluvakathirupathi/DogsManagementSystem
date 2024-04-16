# Stage 1: Build the application
FROM maven:3.8.2-openjdk-17 AS build
COPY . .
RUN mvn clean package -Pprod -DskipTests

# Stage 2: Create the final image
FROM openjdk:17-jdk-alpine
COPY --from=build /target/DogManagementSystem-0.0.1-SNAPSHOT.jar DogManagementSystem.jar
CMD ["java", "-jar", "DogManagementSystem.jar"]
