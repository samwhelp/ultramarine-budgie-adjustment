#!/usr/bin/env bash

set -e


################################################################################
### Head: feathernotes
##

feathernotes_asset_install () {

	echo
	echo "##"
	echo "## Asset: feathernotes"
	echo "##"
	echo

	echo "## Do Nothing"


	echo

}



##
### Tail: feathernotes
################################################################################


################################################################################
### Head: asset_install
##

main_asset_install () {

	feathernotes_asset_install

}

##
### Tail: asset_install
################################################################################


################################################################################
### Head: Main
##

__main__ () {

	main_asset_install

}

##
## Start
##
__main__

##
### Tail: Main
################################################################################