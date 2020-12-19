#!/bin/bash

gitignoreFiles=("node_modules" ".idea" ".vscode" "coverage" "build" "out" ".npm" ".DS_Store" "*.log" "*.tmp" "*.tmp.*" ".next")

# Project Repository creation
projectName=$1
mkdir $projectName
cd $projectName || exit

# Initialisation
npm init --yes
git init --quiet

# Setting up gitignore
touch .gitignore
printf '%s\n' "${gitignoreFiles[@]}" >> .gitignore
