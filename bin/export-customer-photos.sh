#!/bin/bash
echo `pwd`
for i in $*
do
    remove-spaces $i
    add-watermark $i/*.[Jj][Pp][Gg]
done

# for i in $*/*.[Jj][pP][gG]
# do
#     ~/bin/add-watermark.sh \"$i\"
#     echo "added watermarks"

# done
