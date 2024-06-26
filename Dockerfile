FROM debian:sid-slim
WORKDIR /app
COPY src . 
RUN apt update
RUN apt install golang -y
CMD ["go", "run", "main.go"]
EXPOSE 2000
