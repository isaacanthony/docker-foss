FROM ubuntu:latest
ENV DEBIAN_FRONTEND=noninteractive

# Install curl.
RUN apt-get update -y && apt-get install -y curl

# Install atom.
RUN curl -Lo atom.deb https://atom.io/download/deb && \
  dpkg -i atom.deb; \
  apt-get -f install -y

ENTRYPOINT ["atom", "-f", "--no-sandbox", "/saved"]
