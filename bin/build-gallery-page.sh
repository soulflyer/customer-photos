#!/bin/bash
shopt -s extglob
PICTUREFILES=`osascript /Users/iain/bin/pic-pathnames.scpt`
#PICTUREFILES=${PICTUREFILES//\.@(jpg|JPG|PSD|psd|nef|NEF|CR2|cr2)*(,)/$'\n'}
PICTUREFILES=${PICTUREFILES//,/$'\n'}
echo $PICTUREFILES | tr [:space:] "\n"

PICURL="http://soulflyer.co.uk/photos/"
PAGE=$1.html
INFOPAGE=/Users/iain/Code/PublishPhotos/lib/galleryinfo.html
INFOPAGETHUMB="images/SoulflyerPhotos.png"
if [ $2 ]
then
    INFOPAGE=$2
fi
if [ $3]
then
    INFOPAGETHUMB=$3
fi

cat <<EOF > $PAGE
<!doctype html>
<html>
<head>
  <meta name="viewport" content="width=device-width">
  <link rel="stylesheet" type="text/css" href="css/contentslider.css" />
  <script type="text/javascript" src="js/contentslider.js">
  /***********************************************
  * Featured Content Slider- (c) Dynamic Drive DHTML code library (www.dynamicdrive.com)
  * This notice MUST stay intact for legal use
  * Visit Dynamic Drive at http://www.dynamicdrive.com/ for this script and 100s more
  ***********************************************/
  </script>
</head>
<body>
  <div id="slider" class="sliderwrapper">
EOF

COUNT=`echo $PICTUREFILES | wc -w | sed -e 's/ //g'`
echo COUNT:$COUNT

cat $INFOPAGE >> $PAGE

for pic in $PICTUREFILES
do
    CAPTION=`exiftool -s3 -Caption-Abstract /Users/iain/Pictures/Published/medium/$pic.jpg`
    echo $CAPTION

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
