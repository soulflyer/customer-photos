#!/bin/bash
# TEMPFILE=/tmp/picture-links
# if [ -f $TEMPFILE ]
# then
#     rm $TEMPFILE
#     touch $TEMPFILE
# fi

THUMBPATH="thumbs/"
MEDIUMPATH="medium/"
LARGEPATH="large/"
FULLSIZEPATH="fullsize/"

for i in $*
do
    LINKMEDIUM="<a class=\"medium\" href=./"$MEDIUMPATH$i"><img>./"$THUMBPATH$i"</img></a>"
    LINKLARGE="<a class=\"large\" href=./"$LARGEPATH$i"><img>./"$THUMBPATH$i"</img></a>"
    echo $LINKMEDIUM
    echo $LINKLARGE
    echo
done
