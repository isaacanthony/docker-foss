FROM ubuntu:latest
ENV DEBIAN_FRONTEND=noninteractive

# Install OS dependencies.
RUN apt-get update -y && apt-get install -y \
  curl \
  libgconf-2-4 \
  libnss3 \
  libgdk-pixbuf2.0-0 \
  libgtk3.0 \
  libx11-xcb-dev \
  libxss1 \
  libasound2-dev

# Install pencil.
RUN curl -Lo pencil.deb http://pencil.evolus.vn/dl/V3.1.0.ga/pencil_3.1.0.ga_amd64.deb && \
  mkdir -p /usr/share/applications/ && \
  dpkg -i pencil.deb

ENTRYPOINT ["pencil", "--no-sandbox"]
