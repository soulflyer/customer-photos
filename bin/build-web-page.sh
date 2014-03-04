#!/bin/bash
PAGE=index.html

cd $1
echo $1
echo `basename $1`

if [ -f photos.zip ]
then
echo found zip file
fi

# Have to rename the directory to get the correct folder name in the zip file
mv large soulflyer-photos
zip photos.zip soulflyer-photos/*.jpg
mv soulflyer-photos large

# Now add any gifs to the existing zip file
mv medium soulflyer-photos
zip photos.zip soulflyer-photos/*.gif
mv soulflyer-photos medium

cat <<EOF > $PAGE
<!doctype html>
<html>
<head>
  <meta name="viewport" content="width=device-width">
  <link rel="stylesheet" type="text/css" href="/divephotos/css/main.css">
  <link rel="stylesheet" media="(max-width: 600px)"  type="text/css" href="/divephotos/css/phone.css">
  <link rel="stylesheet" media="(max-width: 1024px)" type="text/css" href="/divephotos/css/touch-screen.css">
  <link rel="stylesheet" media="(min-width: 601px) and (max-width: 1024px)" type="text/css" href="/divephotos/css/tablet.css">
  <link rel="stylesheet" media="(min-width: 1024px)" type="text/css" href="/divephotos/css/laptop.css">
  <script type="text/javascript" src="/divephotos/js/jquery-2.0.3.js"></script>
  <script type="text/javascript" chset="utf-8" src="/divephotos/js/mobile-jquery.js"></script>

</head>
<body>
  <div class="container">
    <header class="main">
      <div id="logo">Soulflyer Photos</div>
      <div id="menu"></div>
    </header><!-- end header.main -->
    <nav>
      <ul>
        <li><a href=http://soulflyer.com/>home</a></li>
        <li><a href=photos.zip>download</a></li>
        <li id="infobutton">information</li>
      </ul>
    </nav>
    <aside>
      <h1>Information</h1>
      <p>Blah blah blah</>
    </aside>
    <section class="content">

EOF

THUMBPATH="thumbs/"
MEDIUMPATH="medium/"
LARGEPATH="large/"
FULLSIZEPATH="fullsize/"

for i in fullsize/*.jpg
do
    i=`basename $i`
    echo $i
    LINKMEDIUM="<a class=\"medium\" href=./"$MEDIUMPATH$i"><img src=./"$THUMBPATH$i"></a>"
    LINKLARGE="<a class=\"large\" href=./"$LARGEPATH$i"><img src=./"$THUMBPATH$i"></a>"
    echo "     " $LINKMEDIUM >> $PAGE
    echo "     " $LINKLARGE >> $PAGE
    echo
done

for i in medium/*.gif
do

    i=`basename $i`
    if [[ $i != "*.gif" ]]
    then
        echo "found gif: " $i
        echo "      <a class=\"gifthumb\" href=./"$MEDIUMPATH$i"><img src=./"$THUMBPATH$i"></a>" >> $PAGE
    fi
done


cat <<EOF >>$PAGE
    </section><!-- end section.content -->
  </div><!-- end .container -->
</body>
</html>

EOF
