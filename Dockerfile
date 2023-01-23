FROM golang:alpine3.16 AS build
WORKDIR /aplikasi
COPY go.mod ./
COPY go.sum ./
RUN go mod download
COPY . ./
RUN go build -o /app

FROM golang:alpine3.16
WORKDIR /
COPY --from=build /app /app
EXPOSE 8000
ENTRYPOINT ["/app"]