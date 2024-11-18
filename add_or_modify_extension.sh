#!/bin/sh
# This program changes/adds a custom extension for every file in the current directory

case $# in
    0|1)
        printf "error. Usage: ext extension fichiers_a_changer\n"
        exit 1
	;;
    *)
	;;
esac

extension=$1 # Remember the extension
shift
parameters=$@ # Loop only through file names, not through the first parameter too, which is the extension

for i in $parameters; do
        case $i in
                *.*)
                    IFS="."
                    set -- $i # Split the words adjacent to the point
                    a=$1 # Remember first part (before point)
                    mv $1.$2 $a.$extension # Original filename=beforepoint.extension
                    IFS=" " # Reset the IFS to space
		    ;;
                *)
                    mv $i $i.$extension # If no point, just add extension
		    ;;
        esac
done

