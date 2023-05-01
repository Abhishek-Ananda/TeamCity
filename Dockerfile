# Start with a base image containing Java runtime
FROM openjdk:11-jre-slim
# Add Maintainer Info
# Configure your teams DL or shared mailbox
LABEL maintainer="_SH_-GL-US-CJF@Cevalogistics.com"

ENV APP_FILE co2emission-rest-spring-boot.jar
ENV APP_HOME /usr/apps
ENV DEPTYPE="dev"

RUN apt-get -y update && apt-get install -y fontconfig libfreetype6 libfontconfig1

# Make ports available
EXPOSE 8080 8081

# Add the application's jar to the container
COPY --chown=nobody:nogroup target/$APP_FILE $APP_HOME/

# Run the jar file 
WORKDIR $APP_HOME

USER nobody

ENTRYPOINT ["sh", "-c"]
CMD ["exec java -Dspring.profiles.active=$DEPTYPE -jar $APP_FILE "]