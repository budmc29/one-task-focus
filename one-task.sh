#!/bin/bash

# TODO:
# show last notification on load
# on button click show form to add a new task
# modify all todos in the list
# mark todo item as finished

#find a better counter?
COUNTER=0
while read p; do
  ARRAY[$COUNTER]=$p
  let COUNTER=COUNTER+1
done <one-task-list.txt

# only display the last three tasks
TASK=$(zenity  --list  --text "" --checklist  --column "Status" --column "Task" \
FALSE "${ARRAY[0]}" \
FALSE "${ARRAY[1]}" \
FALSE "${ARRAY[2]}" )

# if a task is checked
if [ "$TASK" != "" ]
  then
    sed "/$TASK/g" one-task-list.txt > completed-tasks.txt
fi
