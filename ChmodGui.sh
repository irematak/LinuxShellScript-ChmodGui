#!/bin/bash

data=$(
zenity --forms \
 --text "Change mod of the chosen file" \
 --add-entry "Enter user type" \
 --add-entry "Add" \
 --add-entry "Remove" \
 --add-entry "File Name")
 
userType=$(echo "$data" | cut -d '|' -f1)
add=$(echo "$data" | cut -d '|' -f2)
remove=$(echo "$data" | cut -d '|' -f3)
fileName=$(echo "$data" | cut -d '|' -f4)

if [ "$userType" = "user" ]; then
  if [ "$add" = "read" ]; then
   chmod u+r $fileName
  elif [ "$add" = "write" ]; then
   chmod u+w $fileName
  elif [ "$add" = "execute" ]; then
   chmod u+x  $fileName
  fi
  
  if [ "$remove" = "read" ]; then
   chmod u-r $fileName
  elif [ "$remove" = "write" ]; then
   chmod u-w $fileName 
  elif [ "$remove" = "execute" ]; then
   chmod u-x $fileName
  fi
fi


if [ "$userType" = "group" ]; then
  if [ "$add" = "read" ]; then
   chmod g+r $fileName
  elif [ "$add" = "write" ]; then
   chmod g+w $fileName
  elif [ "$add" = "execute" ]; then
   chmod g+x  $fileName
  fi
  
  if [ "$remove" = "read" ]; then
   chmod g-r $fileName
  elif [ "$remove" = "write" ]; then
   chmod g-w $fileName 
  elif [ "$remove" = "execute" ]; then
   chmod g-x $fileName
  fi
fi



if [ "$userType" = "other" ]; then
  if [ "$add" = "read" ]; then
   chmod o+r $fileName
  elif [ "$add" = "write" ]; then
   chmod o+w $fileName
  elif [ "$add" = "execute" ]; then
   chmod o+x  $fileName
  fi
  
  if [ "$remove" = "read" ]; then
   chmod o-r $fileName
  elif [ "$remove" = "write" ]; then
   chmod o-w $fileName 
  elif [ "$remove" = "execute" ]; then
   chmod o-x $fileName
  fi
fi

zenity --warning  --text "Permissions  `ls -l $fileName | awk '{print $1}' ` "
