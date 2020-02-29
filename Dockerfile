# Use an OpenJDK Runtime as a parent image
FROM openjdk:8
# Add Maintainer Info
LABEL maintainer="he.hamrouni@gmail.com"
#Volume
VOLUME /tmp
# Define environment variables
ENV APP_HOME=/home/app \
    user=houssem \
    group=usergroup \
    uid=10000 \
    gid=10000
#Not necessary as default user is root
USER root
#Create a lambda user, its group, its home directory and setting its shell
RUN groupadd -g ${gid} ${group}\
    && useradd -d "$APP_HOME" -u ${uid} -g ${gid} -m -s /bin/bash ${user}
#Change owner and permission of app home directory to the new user
RUN chmod +x -R ${APP_HOME} \
    && chown -R ${user} "${APP_HOME}"
# Copy the executable into the container at /app
COPY target/*.jar $APP_HOME/app.jar
# Set the working directory
WORKDIR $APP_HOME
#Set active user to created one for security reason (it was root)
USER ${user}
# Make port 9999 available to the world outside this container
EXPOSE 9999
# Run app.jar when the container launches
CMD ["java", "-jar", "$APP_HOME/app.jar"]