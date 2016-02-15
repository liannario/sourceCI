#!/bin/bash

set -ev

if [ "${TRAVIS_PULL_REQUEST}" = "false" ]; then
	echo "test"
fi
