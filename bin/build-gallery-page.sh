#!/bin/bash
# Expects there to be a set of pictures seleced in aperture.
# Builds a gallery page using these pics
# NOTE: No exporting is done, the pics must be already exported

# Usage: build-gallery-page.sh "galleryname" [ "path to info page" [ "path to infopage thumb"]]

shopt -s extglob
PICTUREFILES=`osascript /Users/iain/bin/pic-pathnames.scpt`
#PICTUREFILES=${PICTUREFILES//\.@(jpg|JPG|PSD|psd|nef|NEF|CR2|cr2)*(,)/$'\n'}
PICTUREFILES=${PICTUREFILES//,/$'\n'}
# echo $PICTUREFILES | tr [:space:] "\n"
COUNT=`echo $PICTUREFILES | wc -w | sed -e 's/ //g'`
echo $COUNT pictures

PICURL="/photos"

PAGENAME=$1

ROOTFOLDER=/Users/iain/Code/PublishPhotos
PAGE=$ROOTFOLDER/pages/$PAGENAME.html
INFOPAGE=$ROOTFOLDER/lib/$PAGENAME-info.html
INFOPAGETHUMB=images/SoulflyerPhotosThumb.png

CSSFILE="<link rel=\"stylesheet\" type=\"text/css\" href=\"/css/gallery-$PAGENAME.css\" />"

if [[ ! -f $INFOPAGE ]]
then
    echo "Copying info file"
    cp $ROOTFOLDER/lib/gallery-info.html $INFOPAGE
fi

if [ $2 ]
then
    INFOPAGE=$2
fi
if [ $3]
then
    INFOPAGETHUMB=$3
else
    GENERATEDTHUMB=/images/gallery-${PAGENAME}.png
    convert $ROOTFOLDER/$INFOPAGETHUMB -gravity Southeast -font Papyrus -pointsize 20 -annotate +10-4 $PAGENAME $ROOTFOLDER/$GENERATEDTHUMB
    INFOPAGETHUMB=$GENERATEDTHUMB
#    echo "Infopagethumb: $INFOPAGETHUMB"
fi

cat <<EOF > $PAGE
<!doctype html>
<html>
<head>
  <meta name="viewport" content="width=device-width">
  <link rel="stylesheet" type="text/css" href="/css/contentslider.css" />
EOF

echo $CSSFILE >> $PAGE

cat <<EOF >> $PAGE
  <script type="text/javascript" src="/js/contentslider.js">
  /***********************************************
  * Featured Content Slider- (c) Dynamic Drive DHTML code library (www.dynamicdrive.com)
  * This notice MUST stay intact for legal use
  * Visit Dynamic Drive at http://www.dynamicdrive.com/ for this script and 100s more
  ***********************************************/
  </script>
</head>
<body>
  <div id="slider" class="sliderwrapper">
    <div class="contentdiv">
      <div id="infoheader">
        <nav>
          <ul>
            <li><a href=http://soulflyer.com/>home</a></li>
            <li><a href=http://soulflyer.com/galleries>galleries</a></li>
          </ul>
        </nav>
      </div>
      <div class="galleryinfo">
EOF

cat $INFOPAGE >> $PAGE

cat <<EOF >> $PAGE
      </div>
    </div>
EOF

for pic in $PICTUREFILES
do
    CAPTION=`exiftool -s3 -Caption-Abstract /Users/iain/Pictures/Published/medium/$pic.jpg`
    echo $pic: $CAPTION

    ISO=`exiftool -s3 -ISO /Users/iain/Pictures/Published/medium/$pic.jpg`
    SHUTTERSPEED=`exiftool -s3 -ShutterSpeed /Users/iain/Pictures/Published/medium/$pic.jpg`
    APERTURE=`exiftool -s3 -Aperture /Users/iain/Pictures/Published/medium/$pic.jpg`
    IMAGE="<img src=$PICURL/medium/$pic.jpg>"
    CAPTION="<div class=\"caption\"><h2>$CAPTION</h2></div>"
    DETAILS="<div class=\"details\"><h2>ISO:$ISO f:$APERTURE ${SHUTTERSPEED}sec</h2></div>"
    CONTENTDIV="<div class=\"contentdiv\">$IMAGE $DETAILS $CAPTION</div>"

    echo $CONTENTDIV >> $PAGE
done

cat <<EOF >> $PAGE
  </div>
EOF

PAGINATESLIDER="<div id=\"paginate-slider\" class=\"pagination n"$COUNT"thumbs\">"
echo $PAGINATESLIDER >> $PAGE

INFOPAGETHUMBDIV="<a href=\"#\" class=\"toc\"><img src=$INFOPAGETHUMB></a>"
echo $INFOPAGETHUMBDIV >> $PAGE
for pic in $PICTUREFILES
do
    TOC="<a href=\"#\" class=\"toc\"><img src=$PICURL/thumbs/"$pic".jpg></a>"
    echo $TOC >> $PAGE
done

cat <<EOF >> $PAGE
  </div>

  <script type="text/javascript">

    featuredcontentslider.init({
    id: "slider",
    contentsource: ["inline", ""],
    toc: "markup",
    nextprev: ["Previous", "Next"],
    revealtype: "mouseover",
    enablefade: [true, 0.2],
    autorotate: [false, 3000],
    onChange: function(previndex, curindex, contentdivs){
    }
    })

  </script>
</body>
</html>

EOF
