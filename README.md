# orange3 singularity container recipes

Recipes to build singularity containers for working and developing for [orange3](https://orangedatamining.com/) encompassing 3 different methods in different stages of development:

- :white_check_mark [orange3-miniconda](/orange3-miniconda): a miniconda singularity container built from the [continuum.io/miniconda3](https://hub.docker.com/r/continuumio/miniconda3) docker image.
- :white_large_square [orange3-micromamba-ds](/orange3-micromamba-ds): a micromamba (faster for installing packages) singularity container built in two steps creating a docker image from ubuntu and then the singularity image with the micromamba envoronment (in development).
- :white_large_square [orange3-micromamba-s](/orange3-micromamba-s): a micromamba singularity container built directly from the ubuntu docker image.
