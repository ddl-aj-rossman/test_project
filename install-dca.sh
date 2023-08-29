#!/bin/sh

KERNEL_NAME="dca_special_kernel"

python3 -m venv $KERNEL_NAME
source $KERNEL_NAME/bin/activate

pip install ipykernel
pip install domino-code-assist==1.4.0rc1
pip install dominodatalab-data

python -m ipykernel install --user --name=$KERNEL_NAME

deactivate