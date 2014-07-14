#!/bin/bash -ev

VIRT_DIR="virtualenv"

if [ ! -d ${VIRT_DIR} ]; then
    virtualenv --system-site-packages ${VIRT_DIR};
    ${VIRT_DIR}/bin/pip install -r requirements.txt;
fi

. ${VIRT_DIR}/bin/activate

ipython notebook

