#!/bin/bash

KERNEL_NAME="dca_special_kernel"

python3 -m venv $KERNEL_NAME
source $KERNEL_NAME/bin/activate

pip install --user dominodatalab-data
pip install --user domino-code-assist==1.4.1
pip install --user ipykernel
pip install --user xgboost

python -m ipykernel install --user --name=$KERNEL_NAME

deactivate
