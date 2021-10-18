#!/bin/bash 

GIT_COMMIT="4fda0e0b3329bf159e849df3c47bfb6bc6e9c9e1"
GIT_PREVIOUS_COMMIT="4fda0e0b3329bf159e849df3c47bfb6bc6e9c9e1"

if [[ "${GIT_COMMIT}" == "${GIT_PREVIOUS_COMMIT}" ]]; then
    echo "Same commit found, no need to trigger downstream nightly jobs."
    echo "DO NOT TRIGGER" > trigger.txt
else
   echo "New commit found, we need to trigger downstream nightly RC jobs."
fi

if grep -q "DO NOT TRIGGER" "trigger.txt"; then
  echo "checked file, do not trigger"
fi