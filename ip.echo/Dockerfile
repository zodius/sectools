FROM golang:1.19

WORKDIR /app/
COPY . /app/
RUN CGO_ENABLED=0 GOOS=linux go build -installsuffix cgo -o ip.echo main.go

FROM scratch
COPY --from=0 /app/ip.echo .
ENTRYPOINT ["/ip.echo"]