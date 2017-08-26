# Customer-Photos

Scripts to export photos to soulflyer.com so customers can access them online. Mostly defunct since the demise of aperture (damn you apple) but make-gif is still useful.

## build-gallery-page.sh

This  builds static html pages from the pictures currently selected in Aperture. This is done using the "pic-pathnames.scpt" script to set variable PICTUREFILES. There is currently no option to override this but it would be easy to modify. 

## make-gif.sh

Build a gif from a series of pics. Needs to have a directory containing only the images to be converted to a gif. This is either specified with the -f option or assumed to be .

-o will specify where the output goes. 

-t will specify where the thumbnail goes. Defaults to <output folder>/thumbs

Typical proceedure would be something like this:

mkdir /tmp/jpegs
cp <jpegs frames> /tmp/jpegs
make-gif -f /tmp/gifs -o medium/<current-project> -t thumbs/<current-project> 
cp medium/<current-project>/<gif-name> large/<current-project>


