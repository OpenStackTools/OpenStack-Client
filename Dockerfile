FROM python:3.7-buster

RUN apt-get update && apt-get -yq install \
    python3-openstackclient \
  && rm -rf /var/lib/apt/lists/*