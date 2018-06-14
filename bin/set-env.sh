#!/bin/bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
export BASE_DIR="$(dirname $CURRENT_DIR)"

AUX_PATH=/opt/anaconda3/bin
VIRTUAL_ENV_PATH=$BASE_DIR/conda_virutal_env

if [ -d $VIRTUAL_ENV_PATH ]; then
  echo "Virtual environment found: $VIRTUAL_ENV_PATH"
  source activate $VIRTUAL_ENV_PATH

  AUX_PATH=$VIRTUAL_ENV_PATH/bin
fi

export PATH=$AUX_PATH:$PATH
