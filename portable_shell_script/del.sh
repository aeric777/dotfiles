#
# del - move named files to a hidden wastbasket 
# Version-1
#

del(){

    WASTEBASKET=~/.junk
    mv -i $*  $WASTEBASKET

}
