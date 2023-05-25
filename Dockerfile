FROM python:3.9

ENV DEBIAN_FRONTEND=noninteractive
RUN apt -qq update && apt -qq install -y  wget curl busybox aria2

COPY . /app
WORKDIR /app
RUN chmod 777 /app

RUN pip3 install --no-cache-dir -r requirements.txt

ENV PORT = 8080
EXPOSE 8080

CMD ["bash", "start.sh"]