FROM debian:sid-slim
WORKDIR /app
COPY . . 
RUN apt update
RUN apt install python3 -y
RUN apt install python3-pip -y
RUN pip3 install flask --break-system-packages
ENV FLASK_APP=/app/src/app.py
EXPOSE 5000

#CMD ["tail", "-f", "/dev/null"]
CMD ["flask", "run", "--host", "0.0.0.0"]
EXPOSE 5000
