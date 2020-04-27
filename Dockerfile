FROM ubuntu:focal

RUN apt-get update
RUN apt-get install -yq libopencv-dev libopencv4.2-java openjdk-11-jdk

WORKDIR /app
COPY . /app
RUN ./gradlew build --no-daemon

ENTRYPOINT ["java", "-jar", "/app/app.jar"]