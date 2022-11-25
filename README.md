# orange3 containers

Repo with recipes to build containers for working and developing for  [orange3](https://orangedatamining.com/), containing:

- [orange3-miniconda](/orange3-miniconda): a miniconda singularity container built from the [continuum.io/miniconda3](https://hub.docker.com/r/continuumio/miniconda3) docker image.
- [orange3-micromamba-ds](/orange3-micromamba-ds): a micromamba singularity container built in two steps creating a docker image from ubuntu and then the singularity image with the micromamba envoronment (in development).
- [orange3-micromamba-s](/orange3-micromamba-s): a micromamba singularity container built directly from the ubuntu docker image (in development).
