#!/bin/bash

KERNEL_NAME="dca_special_kernel"

python3 -m venv $KERNEL_NAME
source $KERNEL_NAME/bin/activate

pip install dominodatalab-data
pip install domino-code-assist==1.4.0rc1
pip install ipykernel
pip install xgboost

python -m ipykernel install --user --name=$KERNEL_NAME

deactivate