FROM golang:latest 

RUN mkdir /build
WORKDIR /build 

RUN export GO111MODULE=auto
RUN go get github.com/gnsalok/go-app-docker/main
RUN cd /build && git clone https://github.com/gnsalok/go-app-docker.git

RUN cd /build/go-app-docker/main && go build 

EXPOSE 8080

ENTRYPOINT [ "/build/go-app-docker/main/main" ]
