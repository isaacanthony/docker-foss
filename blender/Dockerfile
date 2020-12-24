FROM ubuntu:latest

RUN apt-get update -y && \
  apt-get install -y software-properties-common && \
  add-apt-repository ppa:thomas-schiex/blender && \
  apt-get update -y && \
  apt-get install -y blender

ENTRYPOINT ["blender"]
