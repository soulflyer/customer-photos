#!/bin/bash

CONVERT_PATH="/opt/local/bin/convert"
THUMB_SIZE="160x160"

#Source folder defaults to current dir unless there is a parameter
FILE_FOLDER="."
OUTPUT_FOLDER="/tmp"
TIME=50
LONG_TIME=200

while getopts 'f:o:t:d:D:' OPTION
do
    case $OPTION in
        f)  FILE_FOLDER=$OPTARG
            ;;
        o)  OUTPUT_FOLDER=$OPTARG
            ;;
        t)  THUMB_OUTPUT=$OPTARG
            ;;
        d)  TIME=$OPTARG
            ;;
        D)  LONG_TIME=$OPTARG
            ;;
        ?) echo "no help"
            exit 2
            ;;
    esac
done

if [[ -e $FILE_FOLDER ]]
then
    echo "File folder: $FILE_FOLDER"
else
    echo "Directory not found: $FILE_FOLDER"
    exit 2
fi

FILE_LIST=`ls $FILE_FOLDER`
COUNT=`echo $FILE_LIST | wc -w`

if ! [[ -e $OUTPUT_FOLDER ]]
then
    echo "Making output folder"
    mkdir -p $OUTPUT_FOLDER
fi
echo "Output folder: $OUTPUT_FOLDER"

if [[ $THUMB_OUTPUT = "" ]]
then
    THUMB_OUTPUT="$OUTPUT_FOLDER/thumbs"
fi

if ! [[ -e $THUMB_OUTPUT ]]
then
    mkdir $THUMB_OUTPUT
    echo "Making thumbs folder"
fi
echo "Thumb output folder: $THUMB_OUTPUT"

COMMAND_STRING="$CONVERT_PATH -loop 0 "
i=0
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
