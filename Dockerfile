#Installation of wget

FROM java:8
ENTRYPOINT ["java","-cp","bin", "hello"]
WORKDIR /hello
COPY hello.java /hello/src/
RUN mkdir bin
RUN javac -d bin src/hello.java
ENV FOO bar
ENV CONNECTION ${SSH_CONNECTION}
#CMD ["127.0.0.1"]
