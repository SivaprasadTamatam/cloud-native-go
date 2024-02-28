FROM golang:1.16.3-alpine3.13 as builder

ENV SOURCES  ./../cloud-native-go/

COPY $(SOURCES) && CGO_ENABLED=0 go install 

ENV PORT 8080
EXPOSE 8080

ENTRYPOINT cloud-native-go
