#!/bin/bash

tar -xzf Start.tar.gz
Rscript script.R
tar -czf End.tar.gz --exclude '*.tar.gz' --exclude '_condor_*'\
    --exclude 'tmp' --exclude 'var' *
