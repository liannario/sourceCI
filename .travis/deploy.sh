#!/bin/bash

set -ev
env

if [ "${TRAVIS_PULL_REQUEST}" = "false" ]; then
	echo "test"
fi
