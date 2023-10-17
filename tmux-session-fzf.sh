folder=$(find ~ -type d -print | fzf)
folder_name=$(basename "$folder")

echo "$folder_name"

if [ -n "$folder" ]; then
  tmux has-session -t "$folder_name" 2>/dev/null

  if [ $? != 0 ]; then
    tmux new-session -d -s "$folder_name" -c "$folder"
  fi

  tmux switch-client -t "$folder_name"
fi
