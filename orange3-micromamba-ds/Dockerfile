FROM mambaorg/micromamba

USER 0

ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=America/Sao_Paulo
RUN apt-get install -y tzdata

COPY apt-requirements.txt /tmp/apt-requirements.txt
COPY orange3-micromamba.yml /tmp/orange3-micromamba.yml

RUN apt-get update -y && apt-get install -y < /tmp/apt-requirements.txt 
RUN rm -r apt-requirements.txt && apt-get clean && apt-get autoclean

RUN micromamba install -y -n base -f /tmp/orange3-micromamba.yml && \
    micromamba clean --all --yes

RUN eval "$(micromamba shell hook --shell=bash)"

ENTRYPOINT ["/bin/bash"]
