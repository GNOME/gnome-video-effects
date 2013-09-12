#!/bin/sh -e
# small script to generate previews of all effects. to generate them,
# you need a folder "preview" in $srcdir with a file "normal.jpg" in it.

srcdir=`pwd`
effectsdir="$srcdir/effects"
previewdir="$srcdir/previews"
suffix="effect.in"
# effects, which need movement or have problems with no real video stream
ignore_effects="quarktv radioactv streaktv vertigotv ripple"

test -z "$srcdir" && srcdir=.

PKG_NAME="gnome-video-effects"

(test -f $srcdir/configure.ac) || {
    echo -n "**Error**: Directory "\`$srcdir\'" does not look like the"
    echo " top-level $PKG_NAME directory"
    exit 1
}

test -d "$previewdir" || mkdir "$previewdir"
test -f "$previewdir"/normal.jpg || exit 1

for i in $(ls $effectsdir/*.$suffix); do
  name=$(basename ${i%.$suffix})

  if [ ! -e "$previewdir/$name.jpg" ]; then
    case $ignore_effects in
      *$name*) continue ;;
      *)
        echo -e "\n\nCreating preview for $name"
        gst-launch-1.0 filesrc location=$previewdir/normal.jpg ! decodebin ! \
          videoconvert ! \
          $(grep PipelineDescription "$i" | sed "s/^PipelineDescription=//") ! \
          videoconvert ! jpegenc !  filesink location="$previewdir/$name.jpg"
    esac
  fi
done

echo "= List of GNOME Video Effects =

<<Anchor(normal)>>
== Normal ==
No effect applied

{{attachment:normal.jpg}}
"

for i in $(ls $effectsdir/*.$suffix); do
  name=$(basename ${i%.$suffix})

  echo "<<Anchor($name)>>"
  echo "== $(grep Name "$i" | sed "s/^_Name=//") ($name.effect) =="
  echo "$(grep Comment "$i" | sed "s/^_Comment=//")"
  echo
  case $ignore_effects in
    *$name*)
      echo "see [[http://effectv.sourceforge.net/$(echo $name | sed "s/actv//" | sed "s/tv$//").html]]"
      continue ;;
    *)
      echo "{{attachment:$name.jpg}}"
  esac
  echo
done
