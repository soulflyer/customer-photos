#!/bin/bash
PAGE=index.html
# for pic in `ls $1/fullsize/*.jpg`
# do
#     echo "<img>" $pic "</img>" >> $PAGE
# done

cat <<EOF > $PAGE
<!doctype html>
<html>
<head>
  <link rel="stylesheet" type="text/css" href="css/main.css">
</head>
<body>
  <div class="container">
    <header class="main">
      <div id="logo">Soulflyer Photos</div>
      <div id="menu">Menu</div>
    </header><!-- end header.main -->
    <section class="content">
      <h1>Content</h1>

EOF

THUMBPATH="thumbs/"
MEDIUMPATH="medium/"
LARGEPATH="large/"
FULLSIZEPATH="fullsize/"

for i in `basename $1/fullsize/*.jpg`
do
    LINKMEDIUM="<a class=\"medium\" href=./"$MEDIUMPATH$i"><img>./"$THUMBPATH$i"</img></a>"
    LINKLARGE="<a class=\"large\" href=./"$LARGEPATH$i"><img>./"$THUMBPATH$i"</img></a>"
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
