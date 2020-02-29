# Use an OpenJDK Runtime as a parent image
FROM openjdk:8-jre-alpine
# Add Maintainer Info
LABEL maintainer="he.hamrouni@gmail.com"
# Set the working directory
WORKDIR /app
# Copy the executable into the container at /app
COPY target/*.jar /app/app.jar
# Make port 9999 available to the world outside this container
EXPOSE 9999
# Run app.jar when the container launches
CMD ["java", "-jar", "$APP_HOME/app.jar"]