FROM openjdk:8
WORKDIR HelloWorld
ADD . /HelloWorld
RUN curl -L -o sbt-1.3.0.deb http://dl.bintray.com/sbt/debian/sbt-1.3.0.deb && \
  dpkg -i sbt-1.3.0.deb && \
  rm sbt-1.3.0.deb && \
  sbt version
CMD sbt compile
CMD sbt run
