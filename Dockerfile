# Package stage
#
FROM openjdk:11-jre-slim
COPY --from=build demo.jar /usr/local/lib/demo.jar
EXPOSE 8084
ENTRYPOINT ["java","-jar","/usr/local/lib/demo.jar"]
