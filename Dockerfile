FROM osrf/ros:melodic-desktop-full

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
    && apt-get install -q -y --no-install-recommends \
		git \
		vim \
		cmake \
		build-essential \
		curl \
		wget \
		gnupg2 \
		lsb-release \
		dirmngr \
        ros-melodic-rosbridge-server \
        ros-melodic-lgsvl-msgs \
        libeigen3-dev \
        python-protobuf \
        ros-melodic-nmea-msgs \
     && rm -rf /var/lib/apt/lists/*

SHELL ["/bin/bash","-c"]
