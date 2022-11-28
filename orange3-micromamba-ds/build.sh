buildpath=$1

# build docker
docker build --tag brno-micromamba:latest . < Dockerfile

# build singularity
singularity build --sandbox $buildpath orange3-micromamba.def
