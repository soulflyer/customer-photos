#!/bin/bash
PAGE=$1/index.html

mv $1/large $1/soulflyer-photos
zip $1/photos.zip $1/soulflyer-photos/*.jpg
mv $1/soulflyer-photos $1/large

# for pic in `ls $1/fullsize/*.jpg`
# do
#     echo "<img>" $pic "</img>" >> $PAGE
# done

cat <<EOF > $PAGE
<!doctype html>
<html>
<head>
  <link rel="stylesheet" type="text/css" href="/customerphotos/css/main.css">
  <link rel="stylesheet" media="(max-width: 600px)"  type="text/css" href="/customerphotos/css/phone.css">
  <link rel="stylesheet" media="(max-width: 1024px)" type="text/css" href="/customerphotos/css/touch-screen.css">
  <link rel="stylesheet" media="(min-width: 601px) and (max-width: 1024px)" type="text/css" href="/customerphotos/css/tablet.css">
  <link rel="stylesheet" media="(min-width: 1024px)" type="text/css" href="/customerphotos/css/laptop.css">
  <script type="text/javascript" src="/customerphotos/js/jquery-2.0.3.js"></script>
  <script type="text/javascript" chset="utf-8" src="/customerphotos/js/mobile-jquery.js"></script>

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
      </ul>
    </nav>
    <section class="content">

EOF

THUMBPATH="thumbs/"
MEDIUMPATH="medium/"
LARGEPATH="large/"
FULLSIZEPATH="fullsize/"

for i in $1/fullsize/*.jpg
do
    i=`basename $i`
    echo $i
    LINKMEDIUM="<a class=\"medium\" href=./"$MEDIUMPATH$i"><img src=./"$THUMBPATH$i"></a>"
    LINKLARGE="<a class=\"large\" href=./"$LARGEPATH$i"><img src=./"$THUMBPATH$i"></a>"
    echo "     " $LINKMEDIUM >> $PAGE
    echo "     " $LINKLARGE >> $PAGE
    echo
done


cat <<EOF >>$PAGE
    </section><!-- end section.content -->
  </div><!-- end .container -->
</body>
</html>

EOF
