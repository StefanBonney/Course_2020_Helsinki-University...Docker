FROM ubuntu:16.04
WORKDIR /tmp
RUN apt-get update && apt-get install -y curl
COPY website.sh /tmp/website.sh
RUN chmod +x website.sh

CMD ["/tmp/website.sh"]
