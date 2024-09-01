# Use an official Go runtime as a parent image
FROM golang:1.20-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the Go module files and download dependencies
COPY go.mod ./
RUN go mod download

# Copy the rest of the application code
COPY . .

# Build the Go app
RUN go build -o /go_micro_shop

# Expose the port the app runs on
EXPOSE 8080

# Run the executable
CMD ["/go_micro_shop"]
