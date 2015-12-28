#!/bin/bash

# TODO:
# show last notification on load
# on button click show form to add a new task
# modify all todos in the list
# mark todo as finished

while read p; do
  echo $p
done <one-task-list.txt

# zenity  --list  --text "" --checklist  --column "Status" --column "Task" \
# TRUE "More pictures" \
# TRUE "More complete post" \
# FALSE "Includes Installation guidelines" \
# FALSE "Create a forum for question queries" --separator=":"
