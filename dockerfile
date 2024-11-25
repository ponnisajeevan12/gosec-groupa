# Use an official Go runtime as the base image
FROM golang:1.20-alpine

# Set the Current Working Directory inside the container
WORKDIR /app

# Copy the Go source code into the container
COPY . .

# Install dependencies (if any)
RUN go mod tidy

# Build the Go app
RUN go build -o main .

# Expose port 8080 to be accessible outside the container
EXPOSE 8080

# Command to run the executable
CMD ["./main"]
