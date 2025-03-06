#structure for create docker image
FROM openjdk:21-slim

#introduce the application to the docker
ADD target/hello.jar app.jar

#expose the port that app will run the cintainer
EXPOSE 8080

#run the springboot application
ENTRYPOINT ["java","-jar","app.jar"]