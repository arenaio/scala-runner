FROM flangelier/scala:2.12.1-8-jdk-jessie

RUN mkdir -p /home/src
WORKDIR /home/src

COPY Player.scala /home/src/
RUN mkdir -p /home/out/
RUN scalac /home/src/Player.scala -d /home/out/Player.jar

CMD ["scala", "/home/out/Player.jar"]

