#/bin/bash
scriptDir=$(dirname -- "$(readlink -f -- "${BASH_SOURCE[0]}")")
buildpath=$1
buildname=$2

# --checking buildpath and buildname args
if [${buildpath} == ""]
then
    buildpath="~"
fi

if [${buildname} == ""]
then
    buildname="sandbox"
fi

# --build the container as a sandbox
echo "building sandbox in ${buildpath}/${buildname}"
sudo singularity build --sandbox ${buildpath}/${buildname} ${scriptDir}/miniconda-sandbox.def 