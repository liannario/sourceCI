#!/bin/bash

set -ev
env

if [ "${TRAVIS_PULL_REQUEST}" = "false" ]; then
	eval $(ssh-agent -s) #start the ssh agent
	chmod 600 .travis/id_rsa # this key should have push access
	ssh-add .travis/id_rsa
	git remote add targetCI https://@github.com/liannario/targetCI.git
	git push targetCI "$TRAVIS_BRANCH"
	rm .travis/id_rsa
fi
