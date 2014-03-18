#!/bin/bash

CONVERT_PATH="/opt/local/bin/convert"
THUMB_SIZE="160x160"

#Source folder defaults to current dir unless there is a parameter
FILE_FOLDER="."
if [[ -e $1 ]]
then
    FILE_FOLDER=$1
else
    echo "Directory not found: $FILE_FOLDER"
fi
echo "File folder: $FILE_FOLDER"

FILE_LIST=`ls $FILE_FOLDER`
COUNT=`echo $FILE_LIST | wc -w`

#Output folder defaults to /tmp unless there is a second parameter passed in
OUTPUT_FOLDER="/tmp"
if [[ $2 != "" ]]
then
    OUTPUT_FOLDER=$2
fi

if ! [[ -e $OUTPUT_FOLDER ]]
then
    echo "Making output folder"
    mkdir -p $OUTPUT_FOLDER
fi

echo "Output folder: $OUTPUT_FOLDER"

#Thumb output folder defaults to $OUTPUT_FOLDER/thumbs unless there is a 3rd param
THUMB_OUTPUT="$OUTPUT_FOLDER/thumbs"
if [[ $3 != "" ]]
then
    THUMB_OUTPUT=$3
fi

if ! [[ -e $THUMB_OUTPUT ]]
then
    mkdir $THUMB_OUTPUT
    echo "Making thumbs folder"
fi

echo "Thumb output folder: $THUMB_OUTPUT"

COMMAND_STRING="$CONVERT_PATH -loop 0 "
i=0
TIME=50
for FILE_NAME in $FILE_LIST
do
    if [ $i == 0 ]
    then
        FILE_ROOT=`basename -s ".jpg" $FILE_NAME`
    fi
    i=`expr $i + 1`
    if [ $i == $COUNT ]
    then
        TIME=200
    fi
    COMMAND_STRING="$COMMAND_STRING -delay $TIME $FILE_FOLDER/$FILE_NAME"
done

COMMAND_STRING="$COMMAND_STRING $OUTPUT_FOLDER/$FILE_ROOT.gif"
echo $COMMAND_STRING
eval $COMMAND_STRING

#Convert the fullsize gif to a thumbnail
eval "$CONVERT_PATH -resize $THUMB_SIZE $OUTPUT_FOLDER/$FILE_ROOT.gif $THUMB_OUTPUT/$FILE_ROOT.gif"
