#!/bin/bash

TEST_NAME=$1
if [ "$1" == "" ]; then
	TEST_NAME="all-reduce"
fi

CMD="kubectl delete -f ./${TEST_NAME}.yaml"

if [ "$VERBOSE" == "true" ]; then
	echo ""
	echo "$CMD"
	echo ""
fi

if [ ! "$DRY_RUN" == "true" ]; then
	eval "$CMD"
fi

