buildpath=$1

# build docker
docker build --tag brno-mambaforge:latest . < Dockerfile

# build singularity
singularity build --sandbox $buildpath orange3-mambaforge.def
