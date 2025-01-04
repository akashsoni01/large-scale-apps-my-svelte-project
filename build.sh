#!/bin/bash

# List of directories
directories=("my-component-library" "my-js-helpers" "my-svelte-project")

# Loop through each directory and run npm install
for dir in "${directories[@]}"; do
  echo "Running npm install in $dir"
  (cd "$dir" && npm install && npm all)
  echo "Running npm audit in $dir"
  (cd "$dir" && npm audit fix --force)
done

# Run npm install and npm audit for the third folder
third_dir="my-svelte-project"
echo "Running npm install in $third_dir"
(cd "$third_dir" && npm start)
echo "Running npm audit in $third_dir"

echo "All installations and audits are complete."