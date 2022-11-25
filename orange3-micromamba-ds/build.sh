buildpath=$1

# build docker
docker build --tag brnoubnt:latest . < Dockerfile

# build singularity
singularity build --sandbox $buildpath orange3-micromamba.def
