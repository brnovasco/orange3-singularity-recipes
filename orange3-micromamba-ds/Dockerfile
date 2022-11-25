FROM ubuntu:20.04

# ENV DEBIAN_FRONTEND=noninteractive
ENV TZ=America/Sao_Paulo

RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt-get update -y \
    && apt-get install -y gcc g++ cmake build-essential libgl1-mesa-dev libglu1-mesa-dev freeglut3-dev libsdl2-2.0 libsdl2-dev libhdf5-dev git wget unzip \
    && apt-get clean && apt-get autoclean

RUN apt-get -y update \
    && apt-get install -y -f libasound2 libcups2 libnss3 nvidia-modprobe python3-numpy mesa-utils qt5-default qt5dxcb-plugin libqt5x11extras5 python3-tk libhdf5-dev libopenmpi-dev libpython3-dev libpython3-dev vim docker.io git python3 gdb python3-dev python3-pip build-essential virtualenvwrapper libglib2.0-0 fontconfig libxss1 wget libxv1 libgl1-mesa-glx libxcb-xkb-dev libxcb-xinerama0 libxcb-util1 libxcb-util-dev \
    && apt-get clean && apt-get autoclean

WORKDIR /opt

ENTRYPOINT ["/bin/bash"]
