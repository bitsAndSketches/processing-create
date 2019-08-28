#!/bin/bash

PROJECT_NAME=$1

if [ $# -eq 0 ]
then
	echo "Usage: processing-start <project name>"
else
	EXC_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
	DIR="$(pwd)"
	mkdir $PROJECT_NAME
	touch "$PROJECT_NAME/$PROJECT_NAME.pde"
	cp -r "$EXC_DIR/.vscode" "$DIR/$PROJECT_NAME"
fi
