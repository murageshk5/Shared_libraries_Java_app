FROM openjdk:8-jdk-apline 
WORKDIR /app
COPY /target/*.jar /app
CMD ["java", "-jar", "kubernetes-configmap-reload.jar"]