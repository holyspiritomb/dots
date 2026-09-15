unset GBSFILE
unset M3UFILE

GBSFILE=`cat "$M3UFILE" | awk -F ':' '{print $1}'`

gbs2wav $GBSFILE "$M3UFILE"
