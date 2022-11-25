FROM ubuntu:20.04

# ENV DEBIAN_FRONTEND=noninteractive
ENV TZ=America/Sao_Paulo

RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

COPY apt-requirements.txt ./

RUN apt-get update -y && apt-get install -y < apt-requirements.txt 

RUN rm -r apt-requirements.txt && apt-get clean && apt-get autoclean

WORKDIR /opt

ENTRYPOINT ["/bin/bash"]
