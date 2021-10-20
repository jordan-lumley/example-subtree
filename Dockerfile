FROM debian:latest

RUN apt-get update && apt-get install -y scrot


# # FROM debian:latest

# # ENV DEBIAN_FRONTEND noninteractive

# # RUN apt-get update && apt-get -y install libgtk-3-0 libgl1-mesa-dev ffmpeg 

# # COPY bundle .

# # COPY config.yaml /opt/r2pos/config.yaml

# # CMD ./desktop


# # #docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix/:/tmp/.X11-unix/ --device=/dev/dri:/dev/dri test
# # # version: "3.3"

# # # version: "3.3"

# # # services:
# # #   gui:
# # #     image: test
# # #     build: .
# # #     volumes:
# # #       - /tmp/.X11-unix/:/tmp/.X11-unix:ro
# # #     environment:
# # #       - DISPLAY=${DISPLAY}
# # #     devices:
# # #       - /dev/dri:/dev/dri:ro

# # syntax=docker/dockerfile:1
# FROM alpine

# # Install ssh client and git
# RUN apk add --no-cache openssh-client git

# # Download public key for github.com
# RUN mkdir -p -m 0600 ~/.ssh && ssh-keyscan github.com >> ~/.ssh/known_hosts

# # Clone private repository
# RUN --mount=type=ssh git clone git@github.com:Round2POS/engine.git 