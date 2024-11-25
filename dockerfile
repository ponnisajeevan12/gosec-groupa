# Use an official Go runtime as the base image with the latest version of Alpine
FROM golang:1.20-alpine3.20

# Set the Current Working Directory inside the container
WORKDIR /app

# Copy the Go source code into the container
COPY . .

# Install dependencies (if any)
RUN go mod tidy

# Build the Go app
RUN go build -o main .

# Expose port 8080 to be accessible outside the container
EXPOSE 80

# Command to run the executable
CMD ["./main"]
