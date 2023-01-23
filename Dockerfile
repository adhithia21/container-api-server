FROM golang:alpine3.16

WORKDIR /aplikasi
COPY go.mod ./
COPY go.sum ./
RUN go mod download
COPY . ./
RUN go build -o /app
EXPOSE 8000
ENTRYPOINT ["/app"]