for model in $(ollama list | awk 'NR>1 && !/reviewer/ {print $1}'); do
  echo "Updating model: $model"
  ollama pull "$model"
  echo
done
