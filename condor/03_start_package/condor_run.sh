#!/bin/bash

tar -xzf Start.tar.gz
chmod 755 script.R
./script.R
tar -czf End.tar.gz --exclude '*.tar.gz' *
