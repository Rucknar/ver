FROM golang:1.7
COPY . /go/src/github.com/a-h/ver
WORKDIR /go/src/github.com/a-h/ver
RUN go get -d -v
RUN go install -v
COPY fwatchdog /usr/bin/
ENV fprocess="/go/src/app/app"  
RUN chmod +x /usr/bin/fwatchdog
CMD ["fwatchdog"]  
