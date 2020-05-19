# we will use openjdk 8 with alpine as it is a very small linux distro
FROM openjdk:8-jdk-alpine

#Exponse the port
EXPOSE 8500

# copy the packaged jar file into our docker image
ADD target/hello-world-jenkin.jar /hello-world-jenkin.jar 

# set the startup command to execute the jar
ENTRYPOINT ["sh","-c","java -jar /hello-world-jenkin.jar "]
