FROM sbtscala/scala-sbt:eclipse-temurin-17.0.4_1.7.1_3.2.0

WORKDIR /workspace

RUN apt update \
    && apt install -y kotlin

COPY bin/ .

RUN sbt compile

CMD ""
