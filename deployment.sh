#!/bin/bash
cat values.yaml 
sed -i "s/tag: /tag: $SHORT_COMMIT/g" values.yaml 
helm upgrade nginx . -f values.yaml