FROM openjdk:8-jre-slim
  
WORKDIR /usr/app

COPY ./*.war .

ENTRYPOINT ["java","-jar","-Dserver.port=8580","*.war"]
