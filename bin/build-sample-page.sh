#!/bin/bash
PAGE=index.html

cd $1
echo $1
echo `basename $1`


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
        <li id="infobutton">information</li>
      </ul>
    </nav>
    <aside>
EOF

if [ -f information.html ]
then
    echo "found information.html"
else
    cp /Users/iain/Code/PublishPhotos/lib/sample-information.html .
fi

cat information.html >> $PAGE

cat <<EOF >> $PAGE
    </aside>
    <section class="content">

EOF

THUMBPATH="thumbs/"
MEDIUMPATH="medium/"
LARGEPATH="large/"
FULLSIZEPATH="fullsize/"

for i in medium/*.gif
do

    i=`basename $i`
    if [[ $i != "*.gif" ]]
    then
        echo "found gif: " $i
        echo "      <a class=\"gifthumb\" href=./"$MEDIUMPATH$i"><img src=./"$THUMBPATH$i"></a>" >> $PAGE
    fi
done

for i in thumbs/*.jpg
do
    i=`basename $i`
    echo $i
    LINKMEDIUM="<a class=\"sample\" href=./"$MEDIUMPATH$i"><img src=./"$THUMBPATH$i"></a>"
    echo "     " $LINKMEDIUM >> $PAGE
done

cat <<EOF >>$PAGE
    </section><!-- end section.content -->
  </div><!-- end .container -->
</body>
</html>

EOF
