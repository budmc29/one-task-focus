#!/bin/sh

output=$(zenity --list \
  --title="Current Task:" \
  --column="Name" --column="Status" \
  992383 Normal "Task 1" \
  293832 High "Task w")

echo $output
