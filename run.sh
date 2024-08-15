#!/bin/bash

# input name
read -p "input model name： " model_name

# input path
read -p "input modelfile path： " model_path

# run Ollama create command
ollama create "$model_name" -f "$model_path"

# Check
if [ $? -eq 0 ]; then
  echo "Success！"
else
  echo "Fail"
fi
